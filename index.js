const sqlInit = require('./src/data-access/config/sample-data-init/sample-init.js')

if (process.env.ENVIRONMENT == 'dev') sqlInit.addSampleLevel()

console.log('Hello Clash of Code!')