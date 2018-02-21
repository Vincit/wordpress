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

  log(answers)

  if(answers.installBaseTheme) {
    log(chalk.yellow('Installing base theme: composer require vincit/wordpress-theme-base dev-master --prefer-source'))

    try {
      const isDropIn = await isInstalledAsDropIn()
      const dirname = answers.themeName.replace(/\W/g, '') // Strip non alphanumeric
      console.log('dropin', isDropIn, dirname)

      await streamCommand('composer', 'require vincit/wordpress-theme-base dev-master --prefer-source'.split(' '))

      log(chalk.yellow(`Renaming base theme directory to ${dirname}`))
      const themePath = isDropIn ? path.join(__dirname, '..', '..', 'htdocs/wp-content/themes/') : (
        path.join(__dirname, '..', '..', 'vendor')
      )
      const oldPath = isDropIn ? path.join(themePath, 'wordpress-theme-base') : (
        path.join(themePath, 'vincit/wordpress-theme-base')
      )
      const newPath = isDropIn ? path.join(themePath, dirname) : (
        path.join(themePath, `vincit/${dirname}`)
      )
      const cmdOpts = { cwd: newPath }

      await rename(oldPath, newPath)

      log(chalk.yellow(`Replacing strings`))
      replace({
        regex: 'wordpress-theme-base',
        replacement: dirname,
        paths: [newPath],
        recursive: true,
        silent: false,
      })
      replace({
        regex: 'WordPress Theme Base',
        replacement: answers.themeName,
        paths: [newPath],
        recursive: true,
        silent: false,
      })
      replace({
        regex: 'wordpress.local',
        replacement: answers.changeURL,
        paths: [newPath],
        recursive: true,
        silent: false,
      })

      console.log(cmdOpts)

      if (answers.trackInGit) {
        log(chalk.yellow('Creating the initial commit'))
        await streamCommand('git', `remote remove origin`.split(' '), cmdOpts)
        await streamCommand('git', `remote add origin ${answers.gitURL}`.split(' '), cmdOpts)
        await streamCommand('git', `add .`.split(' '), cmdOpts)
        await streamCommand('git', `commit -m "Initial commit"`.split(' '), cmdOpts)
        await streamCommand('git', `push -u origin master`.split(' '), cmdOpts)
      } else if (isDropIn) {
        await streamCommand('rm', `-rf .git`.split(' '), cmdOpts)
      }

      log(chalk.yellow('Installing dependencies and building the theme'))
      await streamCommand('npm', ['install'], cmdOpts)
      await streamCommand('composer', ['install'], cmdOpts)

      log(chalk.yellow('Removing vincit/wordpress-theme-base so it isn\'t installed again'))
      await streamCommand('composer', 'remove vincit/wordpress-theme-base'.split(' '))

      if (answers.activate) {
        if (isDropIn) {
          log(runInVagrant(`wp theme activate ${dirname}`)
            ? chalk.green('Theme activated.')
            : chalk.red('Failed to activate theme')
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
