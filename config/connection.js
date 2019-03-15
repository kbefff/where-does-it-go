var mysql = require('mysql');


var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: 'password',
    database: 'where_does_it_go'
});

connection.connect(function (err) {
    if (err) throw err;
    console.log('we are connected as id: ' + connection.threadId);
});

module.exports = connection;