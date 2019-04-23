const prompt = require('electron-prompt')

const doPrompt = () => {
  prompt({
    title: 'Type stuff here while "yarn link"ed, and it\'ll throw an error',
    label: 'Type here:',
    type: 'input'
  })
    .then((r) => {
      if (r === null) {
        console.log('user cancelled')
      } else {
        console.log('result:', r)
      }
    })
    .catch(console.error)
}

module.exports = doPrompt
