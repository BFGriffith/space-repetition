// Mysql
var mysql = require('mysql');

var connection = mysql.createConnection({
  host: 'g8r9w9tmspbwmsyo.cbetxkdyhwsb.us-east-1.rds.amazonaws.com',
  user: 'tubr3spx75yj8s8d',
  password: 'frnw0jwml4vz3dck',
  database: 'bwu2csle4875a24x'
});

function connectToDB() {
  connection.connect(function(err) {
    if (err) {
      console.error('error connection:', err.stack);
      return
    }
    console.log('connected to MySQL DB')
  });
}

module.exports.connectToDB = connectToDB;

function addUserToDB(userObj, callback) {
  connection.query('INSERT INTO students SET ?', userObj, function(err, results) {
    if (err) return callback(false, err)
    callback(true.null)
  });
}

module.exports.addUserToDB = addUserToDB;

function findUser(username, callback) {
  connection.query('SELECT * FROM students WHERE ?', {
    username: username
  }, function(err, user) {
    callback(err, user)
  })
}
module.exports.findUser = findUser;

/*
var orm = {

    addSubject: function addSubjectToDB(subjectName, callback) {
      connection.query('INSERT INTO subjects (subject) VALUES (?)', [subjectName], function(err, result) {
        if (err) throw err;
        res.redirect('/dashboard');
      });
    }

      getSubjects: function(userID, callback) {
      var queryString = 'SELECT students.' + username + ', subjects.' + subject +
        'FROM students LEFT JOIN subjects ON (students.userID = subjects.userID AND students.' + username + ' = ?' +
        'WHERE subjects.userID IS NOT NULL';
      connection.query(queryString, function(err, result) {
        console.log(result);
      });
    }

// =========================
//      NEW SUBJECTS
//   REVIEW ALL THIS STUFF
	// GO BACK TO REVIEW
// =========================
// var orm = {

// 	addSubject: function(subject, userID, callback){
// 		connection.query('INSERT INTO subjects (subject) VALUES (?)', [subjectName], function(err, result){
// 			if (err) throw err;
// 			res.redirect('/dashboard');
// 		});
// 	}

// }
// function addDeckToSubject(userID, deckName, subjectID, callback){
// 	connection.query('INSERT INTO decks (deck) VALUES (?)', [req.body.deck], function(err, result){
// 		if (err) throw err;
// 		res.redirect('/dashboard');
// 	});
// }

// function addCardToDeck(userID, subjectID, deckID, QUESTION, ANSWER, CALLBACK){
// 	connection.query('INSERT INTO cards (card) VALUES (?)', [req.body.card], function(err, result){
// 		if (err) throw err;
// 		res.redirect('/dashboard');
// 	});
// }


// VIEW CARDS BEGIN




function findSubjects(username, callback) {
        var queryString = 'SELECT students.username, subjects.subject ' +
		'FROM students LEFT JOIN subjects ON (students.userId = subjects.userId AND students.' + username + ' = ?' +
		'WHERE subjects.userId = ?';
        connection.query(queryString, [username], function(err, result) {
           // console.log(result);
           callback(result);
        });
};

module.exports.findSubjects = findSubjects;

  } //END orm

  function addDeckToSubject(ADD STUFF HERE){
  	connection.query('INSERT INTO decks (deck) VALUES (?)', [req.body.deck], function(err, result){
  		if (err) throw err;
  		res.redirect('/dashboard');
  	});
  }

  function addCardToDeck(){
  	connection.query('INSERT INTO cards (card) VALUES (?)', [req.body.card], function(err, result){
  		if (err) throw err;
  		res.redirect('/dashboard');
  	});

  }//END orm
  */
