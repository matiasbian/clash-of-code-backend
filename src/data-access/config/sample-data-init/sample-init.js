require('dotenv').config()
const sqlConn = require('../mysql-conn')
var mysql = require('mysql');
const addLevelQuery = require('./sample-level.js')

const addSampleLevel = async () => {
    var connection = mysql.createConnection(sqlConn);
    connection.connect();

    await connection.query(addLevelQuery)
    console.log('level added')

    connection.end();
}

module.exports = {
    addSampleLevel
}