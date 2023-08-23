require('dotenv').config()
const Level = require('../models/level')

const sqlConn = require('./config/mysql-conn-info')
const mysql = require('mysql');
const util = require("util"); 


const findLevel = async (levelNumber) => {
    const query = 'SELECT * FROM `levels` WHERE level = ' + levelNumber + ';'
    console.log('QUERY', query)
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    const [level] = await connection.query(query)
    connection.end()

    if (!level) throw new Error('Level not found')
    return new Level(level.level, level.label, level.structure)
}

module.exports = {
    findLevel
}