//dependencies
var express = require('express');
var router = express.Router();

//models
var mainModel = require('../models/SpacedRepetition.js');

//ROUTES:
router.get('/', function(req, res){
 res.render('landingPage');
});

router.get('/about', function(req, res){
 res.render('about');
});

router.get('/cardCreation', function(req, res){
 res.render('cardCreation');
});

router.get('/dashboard', function(req, res){
 res.render('dashboard');
});

router.get('/deckCreation', function(req, res){
 res.render('deckCreation');
});

router.get('/studyView', function(req, res){
 res.render('studyView');
});

/*
//passport.js
var passport = require('passport'),
LocalStrategy = require('passport-local').Strategy;


router.post('/login',
  passport.authenticate('local'),
  function(req, res) {
    // If this function gets called, authentication was successful.
    // `req.user` contains the authenticated user.
    res.redirect('/dashboard/' + req.user.username);
  });
*/

module.exports = router;
