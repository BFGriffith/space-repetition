var UserModel = require('../models/User.js');
var passport = require('passport');
var LocalStrategy = require('passport-local').Strategy;
var orm = require('../config/orm.js');
var passport1 = require('../config/passport1.js');

var path = require('path');
var fs = require('fs');

//Setting the strategy for Passport
passport.use(new LocalStrategy({passReqToCallback : true},
  function(req, username, password, done) {

  	//Searching the ORM for the user in the database
  	passport1.findUser(username, function(err, user){
  		user = user[0];
  		if (err) { return done(err); }
      if (!user) { return done(null, false); }

      //comparing user passwords - return if not a match
      if (password !== user.password) { return done(null, false);}

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

module.exports = function(app){

	//GETs
	app.get('/', function(req, res){
		res.render('index', {
			welcomeText: "Please sign in.",
			actionBtn: 'signin',
			message: req.flash('error')[0],
			otherAction: "Signup"
		});
	});

	app.get('/signin', function(req, res){
		res.redirect('/')
	});

	app.get('/signup', function(req, res){
		res.render('index', {
			welcomeText: "Welcome student, please register.",
			actionBtn: 'signup',
			otherAction: "Signin"
		});
	});

  app.get('/dashboard', function(req,res){
		if (req.isAuthenticated()) {
			res.render('dashboard', {
				username: req.user.username
			})
		} else {
			res.redirect('/')
		}
	});

	app.get('/logout', function(req, res){
	  req.logout();
	  res.redirect('/');
	});

	//ROUTES:
	app.get('/about', function(req, res){
    res.render('about');
    /*
    orm.about("dfasdfasd", function(data){
			res.render('about', {aboutData: data});
		})
    */
	});
  	app.get('/adddeck', function(req, res){
   		res.render('adddeck');
  	});
  	app.post('/adddeck', function(req, res){
   		orm.addDeck(req.body.deckname, req.user.userID, 0);
   		res.redirect('/decks');
  	});

  app.get('/landingPage', function(req, res){
   res.render('landingPage');
  });

  app.get('/subjects', function(req, res){
   res.render('subjects');
  });

  app.get('/decks', function(req, res){
  	var theuser = req.user.userID;
  	orm.getAllDecks(theuser, function(data){
  		var deckdata = data;
  		res.render('decks', {user: deckdata});
  	})
  });

	app.get('/cardCreation', function(req, res){
	 res.render('cardCreation');
	});

	// app.get('/deckCreation', function(req, res){
	//  res.render('deckCreation');
	// });

  app.get('/subjectCreation', function(req, res){
	 res.render('subjectCreation');
	});

	app.get('/studyView', function(req, res){
	 res.render('studyView');
	});

	app.get('/myinfo', function(req, res){
		var userid = parseInt(req.user.userID);
		

		res.render('myinfo');
	})

	//POSTs
	app.post('/signin', passport.authenticate('local',{failureRedirect:'/', failureFlash:'Wrong Username or Password'}), function(req, res){
		res.redirect('/dashboard');
	});

	app.post('/signup', function(req, res){
		var user = new UserModel(req.body);
		UserModel.saveUser(user, function(status){
			if(!status) {
				res.redirect('/signup')
				return false
			}
			res.redirect('/');
		});
	});

};
