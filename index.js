const sqlInit = require('./src/data-access/init/sample-init.js')
const express = require('express');
const app = express();

const routes = require('./src/routes/api-routes.js')

if (process.env.ENVIRONMENT == 'dev') sqlInit.addSampleLevel()

app.get('/', (req, res) => res.send('Welcome to Clash of Code!'));
app.use('/api', routes)

app.listen(3000, () => console.log('Clash of code backend listening on port 3000!'));




