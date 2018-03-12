const program = require('commander')
const inquirer = require('inquirer')
const path = require('path')
const chalk = require('chalk')
const yaml = require('node-yaml')
const clear = require('clear')
const log = console.log
const { readFile, writeFile, isInstalledAsDropIn } = require('./js/helpers')
const tasks = require('./js/tasks')
const questions = require('./js/questions')

const logoPath = path.join(__dirname, 'logo.txt')
const {
  themeInstaller,
  resetPassword,
  conquer,
  tweakVagrant,
  changeGitHooks,
  replaceComposerJson,
  replaceGitIgnore,
  enablePlugins,
  tweakAdmin,
  replaceREADME,
 } = tasks

main()

async function main() {
  const configYaml = await readFile(path.join(__dirname, '../config.yml'))
    .catch(e => {

      log(chalk.red('config.yaml not found, is vincit/wordpress installed correctly?'))
      log(e)

      return `
development:
  domains:
    - sampledata.local
`
    })
  const config = yaml.parse(configYaml)
  const defaults = {
    promptedToInstallTheme: false,
    readmeReplaced: false,
    composerJsonReplaced: false,
    gitignoreTweaked: false,
    pluginsEnabled: false,
    adminTweaked: false,
  }
  const autorunFile = await readFile(path.join(__dirname, './autorun.json')).catch(e => {
    log(chalk.red(e))
    return false
  })
  const storage = autorunFile ? JSON.parse(autorunFile) : defaults

  config.isDropIn = await isInstalledAsDropIn()

  program
    .option('--autorun', 'Automatic task runner meant to be used by vagrant-up-customizer.sh')
    .parse(process.argv)

  log(chalk.redBright(await readFile(logoPath)))
  if (program.autorun) {
    autorun(config, storage)
  } else {
    manual(config, storage)
  }
}

async function autorun(config = {}, storage = {}) {
  try {
    log(await conquer() + '\n')

    if (config.isDropIn) {
      await tweakVagrant()
      await changeGitHooks()

      if (!storage.composerJsonReplaced) {
        if (await replaceComposerJson()) {
          storage.composerJsonReplaced = true
        }
      }

      if (!storage.promptedToInstallTheme) {
        if (await themeInstaller(config)) {
          storage.promptedToInstallTheme = true
        }
      }

      if (!storage.gitignoreTweaked) {
        if (await replaceGitIgnore()) {
          storage.gitignoreTweaked = true
        }
      }

      if (!storage.pluginsEnabled) {
        if (await enablePlugins()) {
          storage.pluginsEnabled = true
        }
      }

      if (!storage.readmeReplaced) {
        if (await replaceREADME()) {
          storage.readmeReplaced = true
        }
      }

      if (!storage.adminTweaked) {
        if (await tweakAdmin()) {
          storage.adminTweaked = true
        }
      }
    } else {
      log(chalk.red('Seravo/wordpress not detected, aborting autorun'))
    }

    await writeFile(path.join(__dirname, './autorun.json'), JSON.stringify(storage))
    process.exit(0)
  } catch(e) {
    console.error(e)
  }
}

async function manual(config = {}, storage = {}) {
  const ops = {
    autorun,
    ...tasks,
  }

  const { task } = await inquirer.prompt([
    questions.taskSelect,
  ])

  if (ops[task] && typeof ops[task] === 'function') {
    const result = await ops[task](config)
    log(result)

    const { doMore } = await inquirer.prompt([
      questions.doMore,
    ])

    if (doMore) {
      clear()
      manual(config)
    } else {
      process.exit(0)
    }
  }
}

