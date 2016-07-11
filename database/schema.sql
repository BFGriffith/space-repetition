CREATE DATABASE SpaceRepetition_db;
USE SpaceRepetition_db;

CREATE TABLE student
(
	id int NOT NULL AUTO_INCREMENT,
	studentName varchar(255) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE studySubject
(
	id int NOT NULL AUTO_INCREMENT,
	ssubject varchar(255) NOT NULL,
	PRIMARY KEY (id)	
);

CREATE TABLE cards
(
	id int NOT NULL AUTO_INCREMENT,
	front varchar(255) NOT NULL,
    back varchar(255),
	PRIMARY KEY (id)	
);
