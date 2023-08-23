const level = require('../data-access/levels.js')

const getLevel = async (req, res) => {
    const requestedLevel = req.query.level

    try {
        const user = await level.findLevel(requestedLevel)
        res.status(200).send(user)
    } catch (e) {
        res.status(404).send(e.message)
    }

}
module.exports = {
    getLevel,
}