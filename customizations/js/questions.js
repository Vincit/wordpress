const chalk = require('chalk')
const inquirer = require('inquirer')

const themeShow = (answers) => answers.installBaseTheme === true
const questions = {
  test: {
    type: 'confirm',
    name: 'test',
    message: chalk.strikethrough('Test'),
  },
  doMore: {
    type: 'confirm',
    name: 'doMore',
    message: 'Would you like to do more?',
    default: false,
  },
  taskSelect: {
    type: 'list',
    name: 'task',
    message: 'What will it be?',
    choices: [
      { value: 'themeInstaller', name: 'Create a new theme' },
      { value: 'resetPassword', name: 'Reset admin password' },
      new inquirer.Separator(),
      { value: 'switchToSample', name: chalk.yellow('Switch to sample database') },
      { value: 'autorun', name: chalk.red('Run autorun (dangerous!)') },
      { value: 'exit', name: 'Exit' },
    ],
  },
  theme: {
    install: {
      type: 'confirm',
      name: 'installBaseTheme',
      message: 'Would you like to install the base theme?',
      default: 'n',
    },
    name: {
      type: 'input',
      name: 'themeName',
      message: `What is the ${chalk.strikethrough("baby's")} theme name?`,
      when: themeShow,
    },
    correctURL: (url = 'https://wordpress.local') => ({
      type: 'confirm',
      name: 'correctURL',
      message: `Detected ${url} as WP url. Correct?`,
      when: themeShow,
    }),
    changeURL: {
      type: 'input',
      name: 'changeURL',
      message: 'What is WP URL?',
      when: (answers) => answers.correctURL === false,
    },
    trackInGit: {
      type: 'confirm',
      name: 'trackInGit',
      message: 'Would you like to track it in Git?',
      default: 'n',
      when: themeShow,
    },
    activate: {
      type: 'confirm',
      name: 'activate',
      message: 'Would you like to activate it?',
      when: themeShow,
    }
  }
}

module.exports = questions
