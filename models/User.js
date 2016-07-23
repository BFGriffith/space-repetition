var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var orm = require('../config/orm.js');
var passport1 = require('../config/passport1.js');

function User (userObj) {
	this.username = userObj.username
	this.password = userObj.password
}

module.exports = User

module.exports.saveUser = function(userObj, callback){
	passport1.addUserToDB(userObj, function(status, err){
		if (err) return callback(false);
		callback(true);
	});
}