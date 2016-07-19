//dependencies
var express = require('express');
var flash = require('connect-flash');
var app = express();
var router = express.Router();

//models
var mainModel = require('../models/SpacedRepetition.js');

//passport.js
var passport = require('passport'),
LocalStrategy = require('passport-local').Strategy;
var session = require('express-session');
var orm = require('../configuration/orm.js');

//MIDDLEWARE:
app.use(session({ secret: 'keyboard cat', cookie: { maxAge: 60000 }, resave: true, saveUninitialized: true}))

app.use(flash());//used to show a message on an incorrect login

//passport.js middleware methods
app.use(passport.initialize());
app.use(passport.session());

//ROUTES:
router.get('/', function(req, res){
 res.render('landingPage');
});

router.get('/login',
  passport.authenticate('local'), function(req, res) {
    // If this function gets called, authentication was successful.
    // `req.user` contains the authenticated user.
    res.redirect('/dashboard/' + req.user.username);
  });

router.get('/dashboard', function(req, res){
 res.render('dashboard');
});

router.get('/deckCreation', function(req, res){
 res.render('deckCreation');
});

router.get('/cardCreation', function(req, res){
 res.render('cardCreation');
});

router.get('/studyView', function(req, res){
 res.render('studyView');
});

router.get('/about', function(req, res){
 res.render('about');
});

module.exports = router;
