const express = require("express")
const routes = require("./src/routes/api-routes.js")

function createServer() {
	const app = express()
	app.use(express.json())
	app.get('/', (req, res) => res.send('Welcome to Clash of Code!'));
	app.use("/api", routes)
	return app
}

module.exports = createServer