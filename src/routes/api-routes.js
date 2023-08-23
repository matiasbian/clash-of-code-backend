const express = require('express')
const router = express.Router()

const levelRoutes = require('./level')


router.use(levelRoutes)

module.exports = router