const express = require('express')
const router = express.Router()

const levelRoutes = require('./level')
const progressRoutes = require('./progress')


router.use(levelRoutes)
router.use(progressRoutes)

module.exports = router