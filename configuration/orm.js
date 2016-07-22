// Mysql
var mysql = require('mysql');

var connection = mysql.createConnection({
	host: 'localhost',
	user: 'root',
	password: '',
	database: 'SpacedRepetition_db'
});

function connectToDB(){
	connection.connect(function(err){
		if (err) {
			console.error('error connection:', err.stack);
			return
		}
		console.log('connected to MySQL DB')
	});
}

module.exports.connectToDB = connectToDB;

function addUserToDB(userObj, callback){
	connection.query('INSERT INTO students SET ?', userObj, function(err, results){
		if (err) return callback(false, err)
		callback(true. null)
	});
}

module.exports.addUserToDB = addUserToDB;

function findUser(username, callback){
	connection.query('SELECT * FROM students WHERE ?', {username: username}, function(err, user){
		callback(err, user)
	})
}
module.exports.findUser = findUser;






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

