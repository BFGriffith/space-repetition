var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
//consuming what comes from ORM
var orm = require('../configuration/orm.js');

function User(userObj) {
  this.username = userObj.username
  this.password = userObj.password
}

module.exports = User

module.exports.saveUser = function(userObj, callback) {
  orm.addUserToDB(userObj, function(status, err) {
    if (err) return callback(false);
    callback(true);
  });
}

/*
var SRmodel = {
  authenticate: function(student) {
    orm.authenticate('', function(response){
      student(response);
    })
  }
};

module.exports = SRmodel;
*/
