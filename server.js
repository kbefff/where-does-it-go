// show RawDataPacket object as table
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
    createHouseholdItems();
    readHouseholdItems();
    // never delete from DB
    // deleteHouseholdItems();
    updateHouseholdItems();
});

function readData() {
    // use sql commands in javascript to read data
    connection.query('SELECT * FROM categories', function (err, res) {
        if (err) throw err;
        // show RawDataPacket object as table
        console.table(res);
    });
};

function readHouseholdItems() {
    // use sql commands in javascript to read data
    connection.query('SELECT * FROM householdItems', function (err, res) {
        if (err) throw err;
        // show RawDataPacket object as table
        console.table(res);
    });
};

function createHouseholdItems() {
    console.log('inserting a new item...');
    var query = connection.query(
        // insert into household items and set into the following properties
        'INSERT INTO householdItems SET ?', {
            householdItems_categories: 'Entertainment Room'
        },
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows);
        }
    )
}

function deleteHouseholdItems() {
    console.log('deleting item(s)');
    connection.query(
        'DELETE FROM householdItems WHERE ?', {
            id: 10
        },
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows);
        }
    )
}

function updateHouseholdItems() {
    console.log('updating item(s)');
    var query = connection.query(
        // update hosueholdItems where id
        'UPDATE householdItems SET ? WHERE ?',
        [
            {
                id: 16
            },
            {
                householdItems_categories: 'War Room'
            }
        ],
        function (err, res) {
            if (err) throw err;
            console.log(res.affectedRows);
            deleteHouseholdItems();
        }
    )
}