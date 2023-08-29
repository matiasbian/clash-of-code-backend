const progressDataAccess = require('../data-access/progress.js')

const postLevelProgress = async (req, res) => {
    const body = req.body

    try {
        await progressDataAccess.saveProgress(body)
        res.status(200).send('OK')
    } catch (e) {
        res.status(404).send(e.message)
    }

}
module.exports = {
    postLevelProgress,
}