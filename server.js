// create server to handle request from client to backend and delvier response
var express = require('express');
// internal module (no need to isntall) when we hit a route it allows us to send a response of the file
var path = require('path');
// express executed
var app = express();
// port where client and server communicate
var port = 3000;
require('console.table');
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
connection.connect(function (err) {
    if (err) throw err;
    // unique id associated with connection to db
    console.log('we are connected as id: ' + connection.threadId);
    readData();
});
function readData() {
    // use sql commands in javascript to read data
    connection.query('SELECT * FROM category', function (err, res) {
        if (err) throw err;
        // show RawDataPacket object as table
        console.table(res);
    });
};
// routes
// req is '/home'
app.get('/home', function (req, res) {
    // when you hit the rout you will see a res with a string that says 'welcome to my home page'
    res.send('welcome to my home page');
});
app.get('/category', function (req, res) {
    // communicate with db
    connection.query('SELECT * FROM category', function (err, results) {
        if (err) throw err;
        console.log(results);
        // res.json({id: results.categoryId})
        var html = "<h1>Categories by Name</h1>";
        html += "<ul>";
        for (var i = 0; i < results.length; i++) {
            html += "<li><p> ID: " + results[i].categoryId + "</p>";
            html += "<p> Category: " + results[i].category + "</p>";
        }
        html += "</ul>";
        res.send(html);
    });
});

app.get('/:category/:subCategory/:itemDetail', function (req, res) {
    // user category input
    var category = req.params.category;
    var subCategory = req.params.subCategory;
    var itemDetail = req.params.itemDetail;

    connection.query('SELECT * FROM category WHERE category =?', [category], function (err, results) {
        if (err) throw err;

        console.log(results);
        res.json(results);
    });
});
// listen in for incoming requests from port 3000
// then let me knwo server is running
app.listen(port, function () {
    console.log('our server is listenign in for incoming requests on port ' + port);
});