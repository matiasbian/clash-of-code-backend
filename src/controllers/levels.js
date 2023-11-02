const level = require('../data-access/levels.js')

const getLevel = async (req, res) => {
    const requestedLevel = req.query.level

    try {
        const levelStructure = await level.findLevel(requestedLevel)
        res.status(200).send(levelStructure)
    } catch (e) {
        res.status(404).send(e.message)
    }

}
const getLevels = async (req, res) => {
    const requestedLevel = req.query.level

    try {
        const levelStructure = await level.findLevels(requestedLevel)
        res.status(200).send(levelStructure)
    } catch (e) {
        res.status(404).send(e.message)
    }

}

const addLevel = async (req, res) => {
    const body = req.body
    try {
        const result = await level.addLevel(body)
        res.status(200).send(result)
    } catch (e) {
        res.status(404).send(e.message)
    }
}

const removeLevel = async (req, res) => {
    const body = req.body
    try {
        const result = await level.removeLevel(body.level)
        res.status(200).send(result)
    } catch (e) {
        res.status(404).send(e.message)
    }
}

module.exports = {
    getLevel,
    getLevels,
    addLevel,
    removeLevel
}