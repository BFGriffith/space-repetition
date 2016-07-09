var mysql = require('mysql');

var connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'SpaceRepetition_db'
});

connection.connect(function(err) {
  if (err) throw err;
  console.log('connected as ID ' + connection.threadID);
});

module.exports = connection;
