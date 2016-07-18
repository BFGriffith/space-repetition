//consuming what comes from ORM
var orm = require('../configuration/orm.js');

var SRmodel = {
  authenticate: function(student) {
    orm.authenticate('', function(response){
      student(response);
    })
  }
};

module.exports = SRmodel;
