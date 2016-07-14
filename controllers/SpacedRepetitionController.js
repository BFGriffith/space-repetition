//dependencies
var express = require('express');
var bodyParser = require('body-parser');
var SpacedRepetition = require('./models/SpacedRepetition.js');
var app = express();
//passport.js
var passport = require('passport'),
LocalStrategy = require('passport-local').Strategy;


app.post('/login',
  passport.authenticate('local'),
  function(req, res) {
    // If this function gets called, authentication was successful.
    // `req.user` contains the authenticated user.
    res.redirect('/dashboard/' + req.user.username);
  });
