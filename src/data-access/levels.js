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
    return new Level(level.level, level.label, level.structure, level.perfect_steps, level.dialogs)
}

const findLevels = async (levelNumber) => {
    const query = 'SELECT * FROM levels group by level asc;'
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    const levels = await connection.query(query)
    connection.end()

    if (!levels) throw new Error('Levels not found')
    return levels
}

const addLevel = async (data) => {
    
    const exists = await existsLevel(data.levelNumber)
    if (exists) throw new Error('Level already exists')

    const level = new Level(data.level, data.label, data.structure, data.perfect_steps, data.dialogs, true)
    const query = `INSERT INTO levels (level, label, structure, perfect_steps, dialogs) VALUES (${data.levelNumber}, '${level.label}', '${JSON.stringify(level.structure.elements)}', ${data.perfectSteps || data.perfect_steps}, '${data.dialogs || ""}');`

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

const removeLevel = async (level) => {
    const existLevel = await existsLevel(level)
    if (!existLevel) throw new Error("Level not found")

    const query = `DELETE FROM levels WHERE level = ${level}; `
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    await connection.query(query)
    connection.end()
}

const existsLevel = async (level) => {
    const query = `SELECT COUNT(level) as count
        FROM levels
        WHERE level = ${level}; `
        
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    const [levelCount] = await connection.query(query)
    connection.end()
    return levelCount.count > 0
}
module.exports = {
    findLevel,
    findLevels,
    addLevel,
    deleteLastLevel,
    removeLevel
}