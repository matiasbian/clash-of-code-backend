const createServer = require("../../create-server")
const app = createServer()
const supertest = require("supertest")
const progressDataAccess = require('../../src/data-access/progress.js')

//beforeAll(() => {
//    return initializeCityDatabase();
//  });
  
afterAll(async () => {
    await progressDataAccess.deleteLastProgress()
})
  

test("GET /levels", async () => {
	await supertest(app)
		.post("/api/progress")
        .send({ userID: 1, levelNumber: 2, movements: 3 })
		.expect(200)
		.then((response) => {
			expect(response.body.levelNumber).toBe(2)
		})
})


