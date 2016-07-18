//object relational mapping
var connection = require('./connection.js');

var orm = {
  authenticate: function(tableInput, columnToSearch, valueOfColumn) {
    var queryString = 'SELECT * FROM ' + students + ' WHERE ' + studentEmail + ' = ?';
    connection.query(queryString, [valueOfColumn], function(err, result){
      console.log(result);
    })
  }
};

module.exports = orm;
