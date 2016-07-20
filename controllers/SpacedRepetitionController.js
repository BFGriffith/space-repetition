//dependencies
var express = require('express');
var flash = require('connect-flash');
var app = express();
var bodyParser = require('body-parser');
var router = express.Router();

//models
var mainModel = require('../models/SpacedRepetition.js');

//passport.js
var passport = require('passport'),
  LocalStrategy = require('passport-local').Strategy;
var session = require('express-session');
var orm = require('../configuration/orm.js');

//MIDDLEWARE:
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({
  extended: true
}));
app.use(bodyParser.text());
app.use(bodyParser.json({
  type: 'application/vnd.api+json'
}));

app.use(session({
  secret: 'keyboard cat',
  cookie: {
    maxAge: 60000
  },
  resave: true,
  saveUninitialized: true
}))

app.use(flash()); //used to show a message on an incorrect login

//passport.js middleware methods
app.use(passport.initialize());
app.use(passport.session());

//USER-LOGIN:
//Setting the strategy for Passport
passport.use(new LocalStrategy({
    passReqToCallback: true
  },
  function(req, username, password, done) {

    //Searching the ORM for the user in the database
    orm.findUser(username, function(err, user) {
      user = user[0];
      if (err) {
        return done(err);
      }
      if (!user) {
        return done(null, false);
      }

      //comparing user passwords - return if not a match
      if (password !== user.password) {
        return done(null, false);
      }

      return done(null, user);
    });
  }
));

//These two methods are required to keep the user logged in via the session
passport.serializeUser(function(user, done) {
  done(null, user);
});

passport.deserializeUser(function(user, done) {
  done(null, user);
});

module.exports = function(router) {

  //ROUTES:
  router.get('/', function(req, res) {
    res.render('landingPage');
  });

  router.get('/login',
    passport.authenticate('local'),
    function(req, res) {
      // If this function gets called, authentication was successful.
      // `req.user` contains the authenticated user.
      res.redirect('/dashboard/' + req.user.username);
    });

  router.get('/dashboard', function(req, res) {
    res.render('dashboard');
  });

  router.get('/deckCreation', function(req, res) {
    res.render('deckCreation');
  });

  router.get('/cardCreation', function(req, res) {
    res.render('cardCreation');
  });

  router.get('/studyView', function(req, res) {
    res.render('studyView');
  });

  router.get('/about', function(req, res) {
    res.render('about');
  });
};
//orm.connectToDB();

//module.exports = router;
