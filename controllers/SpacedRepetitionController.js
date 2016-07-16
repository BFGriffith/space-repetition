//dependencies
var express = require('express');
var router = express.Router();

//models
var mainModel = require('../models/SpacedRepetition.js');

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

module.exports = router;
