const createServer = require("../../create-server")
const app = createServer()
const supertest = require("supertest")
const levelDataAccess = require('../../src/data-access/levels.js')

afterAll(async () => {
   await levelDataAccess.deleteLastLevel()
})

test("GET /levels", async () => {
	await supertest(app)
		.get("/api/levels?level=1")
		.expect(200)
		.then((response) => {
			expect(response.body.levelNumber).toBe(1)
		})
})

test("POST /remove-level", async () => {
    await addLevel()
	await supertest(app)
		.post("/api/remove-level")
		.send({ level: sampleLevel.levelNumber })
		.expect(200)
})

test("POST /levels", async () => {
	await supertest(app)
		.post("/api/levels")
		.send(sampleLevel)
		.expect(200)
		.then((response) => {
			expect(response.body.label).toBe(sampleLevel.label)
		})
})

test("GET /alllevels", async () => {
	await supertest(app)
		.get("/api/alllevels")
		.expect(200)
		.then((response) => {
			expect(response.body[0].level).toBe(1)
		})
})

const addLevel = async () => {
    return supertest(app)
		.post("/api/levels")
		.send(sampleLevel)
		.expect(200)
		.then((response) => {
			expect(response.body.label).toBe(sampleLevel.label)
		})
}

const sampleLevel = {
	"label": "LEVEL_12",
	"levelNumber": 12,
    "structure": {
        "elements": [
                {
                    "start": {}
                },
                {
                    "movement": {
                        "dir": "Forward"
                    }
                },
                {
                    "movement": {
                        "dir": "Forward"
                    }
                },
                {
                    "movement": {
                        "dir": "Top"
                    }
                },
                {
                    "movement": {
                        "dir": "Forward"
                    }
                },
                {
                    "movement": {
                        "dir": "Bottom"
                    }
                },
                {
                    "finish": {
                        "dir": "Forward"
                    }
                }
        ]
    },
    "perfectSteps": 15
}
