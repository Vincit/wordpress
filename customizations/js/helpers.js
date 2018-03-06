const chalk = require('chalk')
const fs = require('fs')
const path = require('path')
const { spawn } = require('child_process')
const passwordgenerator = require('generate-password')
const replace = require('node-replace')
const rimraf = require('rimraf')

function readFile(pathToFile) {
  return new Promise((resolve, reject) => {
    fs.readFile(pathToFile, (err, data) => {
      if (err) {
        reject(err)
        return
      }

      resolve(data.toString())
    })
  })
}

function writeFile(pathToFile, data) {
  return new Promise((resolve, reject) => {
    fs.writeFile(pathToFile, data, err => {
      if (err) {
        reject(err)
        return
      }

      resolve(true)
    })
  })
}

function streamCommand(command, args = [], options = {}) {
  return new Promise((resolve, reject) => {
    const cmd = spawn(command, args, {
      stdio: 'inherit',
      ...options,
    })

    cmd.on('close', code => {
      if (code !== 0) {
        reject(`${command} ${args.join(' ')} exited with exit code ${code}`)
        return
      }

      resolve()
    })
  })
}

function isInstalledAsDropIn() {
  return new Promise((resolve) => {
    fs.access(path.join(__dirname, '..', '..', 'htdocs'), null, err => {
      if (err) {
        resolve(false)
        return
      }

      resolve(true)
    })
  })
}

function remove(filePath) {
  return new Promise((resolve, reject) => {
    rimraf(filePath, {}, err => {
      if (err) {
        reject(err)
        return
      }

      resolve(true)
    })
  })
}

function rename(oldPath, newPath) {
  return new Promise((resolve, reject) => {
    fs.rename(oldPath, newPath, err => {
      if (err) {
        reject(err)
        return
      }

      resolve(true)
    })
  })
}

function copy(what, where) {
  return new Promise((resolve, reject) => {
    const rs = fs.createReadStream(what)
    const ws = fs.createWriteStream(where);

    rs.on('error', reject)
    ws.on('error', reject)
    ws.on('close', resolve)

    rs.pipe(ws)
  })
}

async function runInVagrant(command) {
  return await streamCommand('vagrant', `ssh -- -q -t ${command}`.split(' '))
}

function password() {
  return passwordgenerator.generate({ length: 32, numbers: true, excludeSimilarChars: true })
}

function passwordBox(username, password) {
  // Magical function, written by @terotests
  const linep = (t,s,f,e) => s + ''.padStart(4,f) + t + ''.padStart(60-t.length,f) + e

  return chalk`{red
${linep('', '┌', '─', '┐')}
${linep(`Username: ${username}`, '│', ' ', '│')}
${linep(`Password: ${password}`, '│', ' ', '│')}
${linep('', '└', '─', '┘')}
  }`
}

module.exports = {
  readFile,
  writeFile,
  streamCommand,
  isInstalledAsDropIn,
  rename,
  replace,
  remove,
  copy,
  runInVagrant,
  password,
  passwordBox,
}
