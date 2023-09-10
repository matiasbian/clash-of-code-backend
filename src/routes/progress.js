const express = require('express')
const router = express.Router()
const progressController = require('../controllers/progress')

router.post('/progress', progressController.postLevelProgress)
router.get('/progress', progressController.getLevelProgress)

module.exports = router