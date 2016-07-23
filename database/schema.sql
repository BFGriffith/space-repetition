CREATE DATABASE SpacedRepetition_db1;
USE SpacedRepetition_db1;

CREATE TABLE students
(
   userID integer primary key auto_increment,
   username varchar(100) unique,
   password varchar(100),
   firstname varchar(100) NULL,
   lastname varchar(100) NULL,
   email varchar(150) NULL
);

-- CREATE TABLE subjects
-- (
--     subjectID int NOT NULL AUTO_INCREMENT,
--     subject varchar(255) NOT NULL,
--  PRIMARY KEY (subjectID),
--     userID INT NOT NULL
-- );

-- ALTER TABLE subjects
--     ADD FOREIGN KEY (userID) REFERENCES students(userID);

CREATE TABLE decks
(
    deckID int NOT NULL AUTO_INCREMENT,
    deckName varchar(255) NOT NULL,
    userID INT NOT NULL,
    -- subjectID INT NOT NULL,
    PRIMARY KEY (deckID),
    dateCreated datetime NOT NULL DEFAULT current_timestamp,
    lastAccess datetime NOT NULL DEFAULT current_timestamp,
    CounterofAccess INT NOT NULL

);


ALTER TABLE decks
    ADD FOREIGN KEY (userID) REFERENCES students(userID);

-- ALTER TABLE decks
--     ADD FOREIGN KEY (subjectID) REFERENCES subjects(subjectID);

CREATE TABLE cards
(
    cardID int NOT NULL AUTO_INCREMENT,
    front varchar(1000) NOT NULL,
    back varchar(1000) NOT NULL,
    userID INT NOT NULL,
    -- subjectID INT NOT NULL,
    deckID INT NOT NULL,
    PRIMARY KEY (cardID)
);

ALTER TABLE cards
    ADD FOREIGN KEY (userID) REFERENCES students(userID);

-- ALTER TABLE cards
--     ADD FOREIGN KEY (subjectID) REFERENCES subjects(subjectID);

ALTER TABLE cards
    ADD FOREIGN KEY (deckID) REFERENCES decks(deckID);
