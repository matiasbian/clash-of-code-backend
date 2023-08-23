const express = require('express')
const router = express.Router()
const levelController = require('../controllers/levels')

router.get('/levels', levelController.getLevel)

module.exports = router