var mysql = require('mysql');

var connection = mysql.createConnection({
  port: 3000,
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'SpacedRepetition_db'
});

connection.connect(function(err) {
  if (err) throw err;
  console.log('connected as ID ' + connection.threadID);
});

module.exports = connection;
