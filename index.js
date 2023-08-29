const sqlInit = require('./src/data-access/init/sample-init.js')
const app = require('./create-server.js')();

const routes = require('./src/routes/api-routes.js')

if (process.env.ENVIRONMENT == 'dev') sqlInit.addSampleLevel()

app.listen(3000, () => console.log('Clash of code backend listening on port 3000!'));




