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
    const query = `SELECT * FROM progress WHERE user = ${data} ORDER BY id DESC;`
    
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