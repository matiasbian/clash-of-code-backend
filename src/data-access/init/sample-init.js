require('dotenv').config()

const sqlConn = require('../config/mysql-conn-info')
const mysql = require('mysql');
const queries = require('./sample-level.js')

const LEVEL = require('../levels.js')

const addSampleLevel = async () => {
    var connection = mysql.createConnection(sqlConn);
    connection.connect();

    await checkIfSampleLevelExistsPromise(connection, () => {
        connection.query(queries.addLevel)
        console.log('Sample level added')
        connection.end()
    })
}

const checkIfSampleLevelExistsPromise = async (connection, callbackIfNot) => {
    return connection.query(queries.existsLevel, (err, rows, fields) => {
        if (err) throw err;

        if (rows[0].count == 0) {
            console.log('Sample level does not exist')
            callbackIfNot()
        } else {
            console.log('Sample level already exists')
            connection.end()
        }
    })
}

module.exports = {
    addSampleLevel
}