const createServer = require("../../create-server")
const app = createServer()
const supertest = require("supertest")
const progressDataAccess = require('../../src/data-access/progress.js')

//beforeAll(() => {
//    return initializeCityDatabase();
//  });
  
afterEach(async () => {
    await progressDataAccess.deleteLastProgress()
})
  

test("POST /progress", async () => {
	await supertest(app)
		.post("/api/progress")
        .send({ userID: 1, levelNumber: 2, movements: 3 })
		.expect(200)
		.then((response) => {
			expect(response.body.levelNumber).toBe(2)
		})
})

test("GET /progress", async () => {
	const res = await progressDataAccess.saveProgress({ userID: 999, levelNumber: 2, movements: 3 })
	await supertest(app)
		.get("/api/progress?userID=999")
		.expect(200)
		.then((response) => {
			expect(response.body[0].levelNumber).toBe(2)
		})
})


