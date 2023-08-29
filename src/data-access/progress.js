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

    await connection.query(query)
    connection.end()

    console.log('Progress saved')
}

module.exports = {
    saveProgress
}