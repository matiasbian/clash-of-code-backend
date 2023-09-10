const express = require("express")
const routes = require("./src/routes/api-routes.js")


var cors = require('cors')

const allowedOrigins = ['*', 'http://localhost:8060'];


function createServer() {
	const app = express()

	var corsOptions = {
		origin: '*',
		optionsSuccessStatus: 200 // some legacy browsers (IE11, various SmartTVs) choke on 204
	  }


	app.use(cors(corsOptions));
	app.use(express.json())
	app.get('/', (req, res) => res.send('Welcome to Clash of Code!'));
	app.use("/api", routes)
	return app
}

module.exports = createServer