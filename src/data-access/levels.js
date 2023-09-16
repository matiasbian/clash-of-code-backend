require('dotenv').config()
const Level = require('../models/level')

const sqlConn = require('./config/mysql-conn-info')
const mysql = require('mysql');
const util = require("util"); 


const findLevel = async (levelNumber) => {
    const query = 'SELECT * FROM `levels` WHERE level = ' + levelNumber + ' ORDER BY id DESC;'
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    const [level] = await connection.query(query)
    connection.end()

    if (!level) throw new Error('Level not found')
    return new Level(level.level, level.label, level.structure, level.perfect_steps)
}

const addLevel = async (data) => {
    const level = new Level(data.level, data.label, data.structure, data.perfect_steps, true)
    const query = `INSERT INTO levels (level, label, structure, perfect_steps) VALUES (${data.levelNumber}, '${level.label}', '${JSON.stringify(level.structure.elements)}', ${data.perfectSteps || data.perfect_steps});`

    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();
    try {
        connection.query(query)
    } catch (e) {
        console.log(e)
    }
    connection.end()

    return level
}

const deleteLastLevel = async () => {
    const query = `DELETE FROM levels ORDER BY level DESC LIMIT 1; `
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    await connection.query(query)
    connection.end()
}

module.exports = {
    findLevel,
    addLevel,
    deleteLastLevel
}