const path = require('path')
const inquirer = require('inquirer')
const chalk = require('chalk')
const log = console.log
const questions = require('./questions')
const { streamCommand, isInstalledAsDropIn, rename, replace, runInVagrant } = require('./helpers')

async function themeInstaller(config) {
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
      const isDropIn = await isInstalledAsDropIn()
      const themeDirName = answers.themeName.replace(/\W/g, '') // Strip non alphanumeric
      const rootDir = path.join(__dirname, '..', '..')
      const themePath = isDropIn ? path.join(rootDir, 'htdocs/wp-content/themes/') : (
        path.join(rootDir, 'vendor')
      )
      const oldPath = isDropIn ? path.join(themePath, 'wordpress-theme-base') : (
        path.join(themePath, 'vincit/wordpress-theme-base')
      )
      const newPath = isDropIn ? path.join(themePath, themeDirName) : (
        path.join(themePath, `vincit/${themeDirName}`)
      )
      const rootCmdOpts = { cwd: rootDir }
      const themeCmdOpts = { cwd: newPath }

      await streamCommand('composer', 'require vincit/wordpress-theme-base dev-master --prefer-source'.split(' '), rootCmdOpts)

      log(chalk.yellow(`Renaming base theme directory to ${themeDirName}`))

      await rename(oldPath, newPath)

      log(chalk.yellow(`Replacing strings`))
      log(chalk.yellow(`Replacing wordpress-theme-base`))
      replace({
        regex: 'wordpress-theme-base',
        replacement: themeDirName,
        paths: [newPath],
        recursive: true,
        silent: false,
      })
      log(chalk.yellow(`Replacing WordPress theme base`))
      replace({
        regex: 'WordPress theme base',
        replacement: answers.themeName,
        paths: [newPath],
        recursive: true,
        silent: false,
      })
      log(chalk.yellow(`Replacing wordpress.local`))
      replace({
        regex: 'wordpress.local',
        replacement: answers.changeURL,
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
          log(await runInVagrant(`wp theme activate ${themeDirName}`))
          )
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
  return 'kissa666\n\n\n'
}

module.exports = {
  themeInstaller,
  resetPassword,
}
