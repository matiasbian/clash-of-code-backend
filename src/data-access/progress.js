require('dotenv').config()
const Progress = require('../models/progress')

const sqlConn = require('./config/mysql-conn-info')
const mysql = require('mysql');
const util = require("util"); 


const saveProgress = async (data) => {
    const progress = new Progress(data)
    const query = `INSERT INTO progress (id, level, user, movements) VALUES (NULL, ${progress.levelNumber}, ${progress.userID}, ${progress.movements});`
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();
    try {
        connection.query(query)
    } catch (e) {
        console.log(e)
    }
    connection.end()

    return progress
}

const getProgress = async (data) => {
    //const progress = new Progress(data)
    const query = `SELECT m1.*
        FROM progress m1 LEFT JOIN progress m2
        ON (m1.level = m2.level AND m1.id < m2.id AND m1.user = 5 and m2.user = 5)
        WHERE m2.id IS NULL and m1.user = ${data};`
    
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    let progress = await connection.query(query)
    progress = progress.map((p) => new Progress({ userID: p.user, levelNumber: p.level, movements: p.movements }))

    connection.end()

    return progress
}

const deleteLastProgress = async () => {
    const query = `DELETE FROM progress ORDER BY id DESC LIMIT 1; `
    var connection = mysql.createConnection(sqlConn);
    connection.query = util.promisify(connection.query).bind(connection);

    connection.connect();

    await connection.query(query)
    connection.end()
}

module.exports = {
    saveProgress,
    getProgress,
    deleteLastProgress
}