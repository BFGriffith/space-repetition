//consuming what comes from ORM
var orm = require('../configuration/orm.js');

var model = {
  authenticate: function(student) {
    orm.authenticate('', function(response){
      student(response);
    })
  }
};

module.exports = model;
