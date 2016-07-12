CREATE DATABASE SpacedRepetition_db;
USE SpacedRepetition_db;

CREATE TABLE students
(
    studentID int NOT NULL AUTO_INCREMENT,
    studentName varchar(255) NOT NULL,
    PRIMARY KEY (studentID)
);

CREATE TABLE subjects
(
    subjectID int NOT NULL AUTO_INCREMENT,
    subject varchar(255) NOT NULL,
	PRIMARY KEY (subjectID),
    studentID INT NOT NULL
);

ALTER TABLE subjects
    ADD FOREIGN KEY (studentID) REFERENCES students(studentID);

CREATE TABLE decks
(
    deckID int NOT NULL AUTO_INCREMENT,
    deckName varchar(255) NOT NULL,
    studentID INT NOT NULL,
    subjectID INT NOT NULL,
    PRIMARY KEY (deckID)
);

ALTER TABLE decks
	ADD FOREIGN KEY (studentID) REFERENCES students(studentID);
    
ALTER TABLE decks
    ADD FOREIGN KEY (subjectID) REFERENCES subjects(subjectID);

CREATE TABLE cards
(
    cardID int NOT NULL AUTO_INCREMENT,
    front varchar(1000) NOT NULL,
    back varchar(1000) NOT NULL,
    studentID INT NOT NULL,
    subjectID INT NOT NULL,
	deckID INT NOT NULL,
    PRIMARY KEY (cardID)
);

ALTER TABLE cards
    ADD FOREIGN KEY (studentID) REFERENCES students(studentID);
    
ALTER TABLE cards
    ADD FOREIGN KEY (subjectID) REFERENCES subjects(subjectID);
    
ALTER TABLE cards
    ADD FOREIGN KEY (deckID) REFERENCES decks(deckID);