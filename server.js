//dependencies
var express = require('express');
var methodOverride = require('method-override');
var bodyParser = require('body-parser');
var app = express();
var exphbs = require('express-handlebars');
var connection = require('./configuration/connection.js');
var mainModel = require('./models/SpacedRepetition.js');
var mainController = require('./controllers/SpacedRepetitionController.js');
var path = require('path');
//passport.js
var passport = require('passport')
  , LocalStrategy = require('passport-local').Strategy;

//static content from the "assets" directory
app.use(express.static(__dirname + '/assets'));

//parse application
app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(express.static(process.cwd() + '/assets'));
app.engine('handlebars', exphbs({
  defaultLayout: 'main'
}));
app.set('view engine', 'handlebars');


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

var routes = require('./controllers/SpaceRepetitionController.js')(app);
app.use('/', routes);



var port = 3000;
app.listen(port, function() {
  console.log("Listening on PORT " + port);
});
