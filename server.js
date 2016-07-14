//dependencies
var express = require('express');
var methodOverride = require('method-override');
var bodyParser = require('body-parser');
var app = express();
var exphbs = require('express-handlebars');
var connection = require('./configuration/connection.js');
var path = require('path');

//static content from the "assets" directory
app.use(express.static(__dirname + '/assets'));

//parse application
app.use(bodyParser.urlencoded({
  extended: false
}));
app.use(express.static('/assets'));
app.engine('handlebars', exphbs({
  defaultLayout: 'main'
}));
app.set('view engine', 'handlebars');
app.use(express.static(process.cwd() + '/assets'));
require('./controllers/SpaceRepetitionController.js')(app);

var port = 3000;
app.listen(port, function() {
  console.log("Listening on PORT " + port);
});
