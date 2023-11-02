const express = require('express')
const router = express.Router()
const levelController = require('../controllers/levels')

router.get('/levels', levelController.getLevel)
router.get('/alllevels', levelController.getLevels)
router.post('/levels', levelController.addLevel)
router.post('/remove-level', levelController.removeLevel)

module.exports = router