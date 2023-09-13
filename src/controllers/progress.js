const progressDataAccess = require('../data-access/progress.js')

const postLevelProgress = async (req, res) => {
    const body = req.body
    try {
        const progress = await progressDataAccess.saveProgress(body)
        res.status(200).send(progress)
    } catch (e) {
        res.status(404).send(e.message)
    }
}

const getLevelProgress = async (req, res) => {
    const userID = req.query.userID

    try {
        const progress = await progressDataAccess.getProgress(userID)
        res.status(200).send(progress)
    } catch (e) {
        res.status(404).send(e.message)
    }
}

module.exports = {
    postLevelProgress,
    getLevelProgress
}