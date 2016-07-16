//dependencies
var express = require('express');
var methodOverride = require('method-override');
var bodyParser = require('body-parser');
var app = express();
app.use(express.static(process.cwd() + '/assets'));
var connection = require('./configuration/connection.js');
var mainModel = require('./models/SpacedRepetition.js');
var mainController = require('./controllers/SpacedRepetitionController.js');
var path = require('path');
//passport.js
var passport = require('passport')
  , LocalStrategy = require('passport-local').Strategy;

//parse application
app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(methodOverride('_method'));

var exphbs = require('express-handlebars');
app.engine('handlebars', exphbs({
  defaultLayout: 'main'
}));
app.set('view engine', 'handlebars');

var routes = require('./controllers/SpaceRepetitionController.js');
app.use('/', routes);

/*
passport.use(new LocalStrategy(
  function(studentEmail, studentPassword, done) {
    orm.authenticate({ studentEmail: studentEmail }, function (err, user) {
      if (err) { return done(err); }
      if (!user) {
        return done(null, false, { message: 'Incorrect email.' });
      }
      if (!user.validPassword(studentPassword)) {
        return done(null, false, { message: 'Incorrect password.' });
      }
      return done(null, user);
    });
  }
));
*/

var port = 3000;
app.listen(port, function() {
  console.log("Listening on PORT " + port);
});
