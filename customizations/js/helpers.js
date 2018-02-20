const fs = require('fs')

function readFile(pathToFile) {
  return new Promise((resolve, reject) => {
    fs.readFile(pathToFile, (err, data) => {
      if (err) {
        return reject(err)
      }

      return resolve(data.toString())
    })
  })
}

module.exports = {
  readFile,
}
