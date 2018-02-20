const chalk = require('chalk')

const themeShow = (answers) => answers.installBaseTheme === true
const questions = {
  test: {
    type: 'confirm',
    name: 'test',
    message: chalk.strikethrough('Test'),
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
