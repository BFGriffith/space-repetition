var connection = require('./connection.js');

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



// ===============================================
// ===============================================

var orm = {

// CRUD

// CREATE
// Create decks

addDeck: function(deckName, userID, CounterofAccess){
  return new Promise(function(resolve, reject) {
    var queryString = 'INSERT INTO decks (deckName, userID, CounterofAccess) VALUES (?, ?, ?)';
    connection.query(queryString, [deckName, userID, CounterofAccess], function(err, res){
      if (err) console.log(err);
      else resolve(res);
    })
  })
},


// Create Cards

addCards: function(front, back, userID, deckID){
  return new Promise(function(resolve, reject) {
    var queryString = 'INSERT INTO cards (front, back, userID, deckID) VALUES (?, ?, ?, ?)';
    connection.query(queryString, [front, back, userID, deckID], function(err, res) {
      if (err) console.log(err);
      else resolve(res);
    })
  })
},


// READ
// Display all Decks
getAllDecks: function(userID, cb){
  var queryString = 'SELECT * FROM decks WHERE userID = ' + userID;
  console.log(queryString);
  connection.query(queryString, function(err, res){
    if (err) throw err;
    return cb(res);
  });
},
// Display Cards

getAllCards: function(deckID, cb){
  var queryString = 'SELECT * FROM cards WHERE deckID = ' + deckID;
  console.log(queryString);
  connection.query(queryString, function(err, res) {
    if(err) throw err;
    return cb(res);
  })
},

// UPDATE
// Update Decks

// Update Cards



// DELETE
// Delete Decks


// Delete Cards




















};

module.exports = orm;
// ===============================================
// ===============================================
// ===============================================
// ===============================================
// ===============================================

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
