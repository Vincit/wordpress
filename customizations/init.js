const program = require('commander')
const inquirer = require('inquirer')
const path = require('path')
const chalk = require('chalk')
const yaml = require('node-yaml')
const clear = require('clear')
const log = console.log
const { readFile, writeFile } = require('./js/helpers')
const tasks = require('./js/tasks')
const questions = require('./js/questions')

const logoPath = path.join(__dirname, 'logo.txt')
const { themeInstaller } = tasks

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
  const storage = await readFile('./storage.json').catch(e => {
    log(chalk.red(e))

    return {
      promptedToInstallTheme: false,
      readmeReplaced: false,
      composerJsonReplaced: false,
      gitignoreTweaked: false,
      pluginsEnabled: false,
      adminTweaked: false,
    }
  })

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
    // await conquer()
    // await enableBackups()
    // await changeGitHooks()

    if (!storage.composerJsonReplaced) {
      await replaceComposerJson()
    }

    if (!storage.gitignoreTweaked) {
      await tweakGitignore()
    }

    if (!storage.pluginsEnabled) {
      await enablePlugins()
    }

    if (!storage.adminTweaked) {
      await tweakAdmin()
    }

    if (!storage.promptedToInstallTheme) {
      await themeInstaller(config)
      storage.promptedToInstallTheme = true
    }

    if (!storage.readmeReplaced) {
      await replaceREADME()
    }


    await writeFile('./storage.json', JSON.stringify(storage))
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

