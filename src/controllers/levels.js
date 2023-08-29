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
module.exports = {
    getLevel,
}