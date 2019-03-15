var mysql = require('mysql');


// create connection to DB
var connection = mysql.createConnection({
    // create connection to my computer
    host: 'localhost',
    // location in which your server.js file is going to communicate with database
    port: 3306, // always 3306 in sql 
    // your computer's user name
    user: 'root',
    password: 'password',
    database: 'where_does_it_go'
});