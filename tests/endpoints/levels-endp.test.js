const createServer = require("../../create-server")
const app = createServer()
const supertest = require("supertest")

test("GET /levels", async () => {
	await supertest(app)
		.get("/api/levels?level=1")
		.expect(200)
		.then((response) => {
			expect(response.body.levelNumber).toBe(1)
		})
})

