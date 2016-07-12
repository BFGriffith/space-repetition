//dependencies
var express = require('express');
var bodyParser = require('body-parser');
var SpacedRepetition = require('./models/SpacedRepetition.js');
var app = express();

app.get('/', function(req, res) {
  res.render(index.handlebars);
});
