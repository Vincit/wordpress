const path = require('path')
const inquirer = require('inquirer')
const chalk = require('chalk')
const progress = require('progress')
const log = console.log
const questions = require('./questions')
const {
  streamCommand,
  rename,
  replace,
  remove,
  runInVagrant,
  password,
  passwordBox,
  copy,
} = require('./helpers')

const rootDir = path.join(__dirname, '..', '..')
const rootCmdOpts = { cwd: rootDir }

async function themeInstaller(config) {
  const { isDropIn } = config
  const url = config.development.domains[0]
  const answers = await inquirer.prompt([
    questions.theme.install,
    questions.theme.name,
    questions.theme.correctURL(url),
    questions.theme.changeURL,
    questions.theme.trackInGit,
    questions.theme.gitURL,
    questions.theme.activate,
  ].map(q => {
    q.prefix = '==>'

    return q
  }))

  if(answers.installBaseTheme) {
    log(chalk.yellow('Installing base theme: composer require vincit/wordpress-theme-base dev-master --prefer-source'))

    try {
      const themeDirName = answers.themeName.replace(/\W/g, '') // Strip non alphanumeric
      const themePath = isDropIn ? path.join(rootDir, 'htdocs/wp-content/themes/') : (
        path.join(rootDir, 'vendor')
      )
      const oldPath = isDropIn ? path.join(themePath, 'wordpress-theme-base') : (
        path.join(themePath, 'vincit/wordpress-theme-base')
      )
      const newPath = isDropIn ? path.join(themePath, themeDirName) : (
        path.join(themePath, `vincit/${themeDirName}`)
      )
      const themeCmdOpts = { cwd: newPath }

      await streamCommand('composer', 'require vincit/wordpress-theme-base dev-master --prefer-source'.split(' '), rootCmdOpts)

      log(chalk.yellow(`Renaming base theme directory to ${themeDirName}`))

      await rename(oldPath, newPath)

      log(chalk.yellow(`Replacing strings`))
      log(chalk.yellow(`Replacing wordpress-theme-base with ${themeDirName}`))
      replace({
        regex: 'wordpress-theme-base',
        replacement: themeDirName,
        paths: [newPath],
        recursive: true,
        silent: false,
      })
      log(chalk.yellow(`Replacing WordPress theme base with ${answers.themeName}`))
      replace({
        regex: 'WordPress theme base',
        replacement: answers.themeName,
        paths: [newPath],
        recursive: true,
        silent: false,
      })

      const newURL = answers.changeURL || url
      log(chalk.yellow(`Replacing wordpress.local with ${newURL}`))
      replace({
        regex: 'wordpress.local',
        replacement: newURL,
        paths: [newPath],
        recursive: true,
        silent: false,
      })

      if (answers.trackInGit) {
        log(chalk.yellow('Creating the initial commit'))
        await streamCommand('git', `remote remove origin`.split(' '), themeCmdOpts)
        await streamCommand('git', `remote add origin ${answers.gitURL}`.split(' '), themeCmdOpts)
        await streamCommand('git', `add .`.split(' '), themeCmdOpts)
        await streamCommand('git', `commit -m "Initial commit"`.split(' '), themeCmdOpts)
        await streamCommand('git', `push -u origin master`.split(' '), themeCmdOpts)
      } else if (isDropIn) {
        await streamCommand('rm', `-rf .git`.split(' '), themeCmdOpts)
      }

      log(chalk.yellow('Installing dependencies and building the theme'))
      await streamCommand('npm', ['install'], themeCmdOpts)
      await streamCommand('composer', ['install'], themeCmdOpts)

      log(chalk.yellow('Removing vincit/wordpress-theme-base so it isn\'t installed again'))
      await streamCommand('composer', 'remove vincit/wordpress-theme-base'.split(' '), rootCmdOpts)

      if (answers.activate) {
        if (isDropIn) {
          await runInVagrant(`wp theme activate ${themeDirName}`)
        } else {
          log(chalk.yellow('Skipping activation, Vagrant not detected'))
        }
      }
    } catch(e) {
      return chalk.red(e)
    }

    return chalk.green('Theme created!')
  } else {
    return chalk.red('Aborting theme installation.')
  }
}

async function resetPassword() {
  const pass = password()
  log(chalk.yellow('Resetting password of vincit.admin'))
  await runInVagrant(`wp user update 'vincit.admin' --user-pass='${pass}' > /dev/null 2>&1`).catch(e => {
    log(chalk.red(e))
  })

  return passwordBox('vincit.admin', pass)
}

async function conquer() {
  return new Promise(resolve => {
    log(chalk.yellow('Conquering the WordPress world'))
    const bar = new progress(':bar :current% / :total%', { total: 100 })
    const timer = setInterval(() => {
      bar.tick()
      if (bar.complete) {
        clearInterval(timer)
        resolve(chalk.green('Conquered!'))
      }
    }, 16)
  })
}

async function enableBackups() {
  try {
    log(chalk.yellow('Enabling local database backups in case Vagrant commits seppuku'))
    await runInVagrant(`/data/wordpress/customizations/vagrant-cron.sh &> /dev/null`)

    log(chalk.yellow('Running the backup script'))
    await runInVagrant(`/data/wordpress/customizations/database-backup.sh`)

    return true
  } catch(e) {
    log(chalk.red(e))
    return false
  }
}

async function changeGitHooks() {
  log(chalk.yellow('Pre-commit hook makes committing often tedious, changing it into pre-push'))
  return await rename(path.join(rootDir, '.git/hooks/pre-commit'), path.join(rootDir, '.git/hooks/pre-push')).catch(e => {
    log(chalk.yellow('Failed to alter hooks, are they changed already?'))
    log(chalk.red(e))
  })
}

async function replaceComposerJson() {
  try {
    log(chalk.yellow('Replacing Seravo/wordpress composer.json'))
    await remove(path.join(rootDir, 'composer.json'))
    await remove(path.join(rootDir, 'composer.lock'))
    await copy(path.join(rootDir, 'customizations/composer-sample.json'), path.join(rootDir, 'composer.json'))

    log(chalk.yellow('Removing current dependencies'))
    await remove(path.join(rootDir, 'vendor'))
    await remove(path.join(rootDir, 'htdocs/wp-content/plugins/') + '*')

    log(chalk.yellow('Installing dependencies'))
    await streamCommand('composer', 'update mirrors'.split(' '), rootCmdOpts)
    await streamCommand('composer', 'install'.split(' '), rootCmdOpts)

    return true
  } catch(e) {
    log(chalk.red(e))
    return false
  }
}

async function replaceGitIgnore() {
  try {
    log(chalk.yellow('Replacing .gitignore'))
    await remove(path.join(rootDir, '.gitignore'))
    await copy(path.join(rootDir, 'customizations/gitignore-sample.json'), path.join(rootDir, '.gitignore'))

    return true
  } catch(e) {
    log(chalk.red(e))
    return false
  }
}

async function enablePlugins() {
  log(chalk.yellow('Enabling all installed plugins'))
  return await runInVagrant('wp plugin list --status=inactive --field=name --format=csv | xargs sudo -u vagrant -i -- wp plugin activate --quiet')
}

async function tweakAdmin() {
  try {
    log(chalk.yellow('Ensuring language is en_US for performance reasons'))
    log(chalk.yellow('Use user language setting if you want a different language'))

    log(chalk.yellow('Deleting the vagrant:vagrant user'))
    await runInVagrant('wp user delete 1 --yes')

    const pass = password()
    log(chalk.yellow('Creating a new admin user'))
    await runInVagrant(`wp user create 'vincit.admin' wordpress@vincit.fi --role='administrator' --display_name='Administrator' --user_pass='${pass}'`)
    log(passwordBox('vincit.admin', pass))

    return true
  } catch(e) {
    log(chalk.red(e))
    return false
  }
}

async function replaceREADME() {
  try {
    log(chalk.yellow('Replacing the README'))
    await remove(path.join(rootDir, 'README.md'))
    await copy(path.join(rootDir, 'customizations/README-sample.md'), path.join(rootDir, 'README.md'))

    return true
  } catch(e) {
    log(chalk.red(e))
    return false
  }
}

async function switchToSample(config) {
  log(chalk.yellow('Saving current database to /data/wordpress/pre-sample.sql'))
  await runInVagrant(`wp db export /data/wordpress/pre-sample.sql`)

  const url = config.development.domains[0]
  log(chalk.yellow('Importing sample database'))
  await runInVagrant(`wp db reset --yes`)
  await runInVagrant(`wp db import /data/wordpress/customizations/base.sql`)
  await runInVagrant(`wp search-replace --all-tables https://wordpress.local ${url}`)
  log(chalk.yellow('Import done'))
}

module.exports = {
  themeInstaller,
  resetPassword,
  conquer,
  enableBackups,
  changeGitHooks,
  replaceComposerJson,
  replaceGitIgnore,
  enablePlugins,
  tweakAdmin,
  replaceREADME,
  switchToSample,
}
