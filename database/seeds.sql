-- dummy-data inserts:

----STUDENTS----
INSERT INTO students (studentName)
VALUES ('Pedro');

INSERT INTO students (studentName)
VALUES ('John');

INSERT INTO students (studentName)
VALUES ('Ben');

INSERT INTO students (studentName)
VALUES ('Edna');

INSERT INTO students (studentName)
VALUES ('Ari');

INSERT INTO students (studentName)
VALUES ('Michael');

INSERT INTO students (studentName)
VALUES ('Victor');

INSERT INTO students (studentName)
VALUES ('Sean');

INSERT INTO students (studentName)
VALUES ('Eric');

INSERT INTO students (studentName)
VALUES ('Caroline');

----SUBJECTS----

INSERT INTO subjects (subject, userId)
VALUES ('CommandLine', 1);

INSERT INTO subjects (subject, userId)
VALUES ('Git', 1);

INSERT INTO subjects (subject, userId)
VALUES ('HTML', 1);

INSERT INTO subjects (subject, userId)
VALUES ('CSS', 1);

INSERT INTO subjects (subject, userId)
VALUES ('WebDesign', 1);

INSERT INTO subjects (subject, userId)
VALUES ('DreamWeaver', 1);

INSERT INTO subjects (subject, userId)
VALUES ('JavaScript', 1);

--

INSERT INTO subjects (subject, userId)
VALUES ('HTML', 2);

INSERT INTO subjects (subject, userId)
VALUES ('ComputerHistory', 2);

INSERT INTO subjects (subject, userId)
VALUES ('InternetProtocols', 2);

INSERT INTO subjects (subject, userId)
VALUES ('JavaScript', 2);

INSERT INTO subjects (subject, userId)
VALUES ('jQuery', 2);

INSERT INTO subjects (subject, userId)
VALUES ('Node', 2);

INSERT INTO subjects (subject, userId)
VALUES ('CSS', 2);

--

INSERT INTO subjects (subject, userId)
VALUES ('HTML', 3);

INSERT INTO subjects (subject, userId)
VALUES ('MySQL', 3);

INSERT INTO subjects (subject, userId)
VALUES ('CSS', 3);

INSERT INTO subjects (subject, userId)
VALUES ('Handlebars', 3);

INSERT INTO subjects (subject, userId)
VALUES ('Express', 3);

INSERT INTO subjects (subject, userId)
VALUES ('JavaScript', 3);

INSERT INTO subjects (subject, userId)
VALUES ('jQuery', 3);

--

INSERT INTO subjects (subject, userId)
VALUES ('HTML', 4);

INSERT INTO subjects (subject, userId)
VALUES ('CSS', 4);

INSERT INTO subjects (subject, userId)
VALUES ('Bootstrap', 4);

INSERT INTO subjects (subject, userId)
VALUES ('FTP', 4);

INSERT INTO subjects (subject, userId)
VALUES ('SQL', 4);

INSERT INTO subjects (subject, userId)
VALUES ('JavaScript', 4);

INSERT INTO subjects (subject, userId)
VALUES ('jQuery', 4);

--

INSERT INTO subjects (subject, userId)
VALUES ('Java', 5);

INSERT INTO subjects (subject, userId)
VALUES ('DataStructure', 5);

INSERT INTO subjects (subject, userId)
VALUES ('Testing', 5);

INSERT INTO subjects (subject, userId)
VALUES ('Compiler', 5);

INSERT INTO subjects (subject, userId)
VALUES ('Analysis', 5);

INSERT INTO subjects (subject, userId)
VALUES ('Design', 5);

INSERT INTO subjects (subject, userId)
VALUES ('VersionControl', 5);

--

INSERT INTO subjects (subject, userId)
VALUES ('HTML', 6);

INSERT INTO subjects (subject, userId)
VALUES ('CSS', 6);

INSERT INTO subjects (subject, userId)
VALUES ('Bootstrap', 6);

INSERT INTO subjects (subject, userId)
VALUES ('NPMpackets', 6);

INSERT INTO subjects (subject, userId)
VALUES ('Node.js', 6);

INSERT INTO subjects (subject, userId)
VALUES ('JavaScript', 6);

INSERT INTO subjects (subject, userId)
VALUES ('jQuery', 6);

--

INSERT INTO subjects (subject, userId)
VALUES ('Space Computers', 7);

INSERT INTO subjects (subject, userId)
VALUES ('Rocket Computer Science', 7);

INSERT INTO subjects (subject, userId)
VALUES ('Hardware development', 7);

INSERT INTO subjects (subject, userId)
VALUES ('Arduino', 7);

INSERT INTO subjects (subject, userId)
VALUES ('Raspberry Pi', 7);

INSERT INTO subjects (subject, userId)
VALUES ('Skylab', 7);

INSERT INTO subjects (subject, userId)
VALUES ('Testing', 7);

--

INSERT INTO subjects (subject, userId)
VALUES ('Firebase', 8);

INSERT INTO subjects (subject, userId)
VALUES ('MySQL', 8);

INSERT INTO subjects (subject, userId)
VALUES ('Servers', 8);

INSERT INTO subjects (subject, userId)
VALUES ('SASS', 8);

INSERT INTO subjects (subject, userId)
VALUES ('Git', 8);

INSERT INTO subjects (subject, userId)
VALUES ('AJAX', 8);

INSERT INTO subjects (subject, userId)
VALUES ('JSON', 8);

--

INSERT INTO subjects (subject, userId)
VALUES ('Servers', 9);

INSERT INTO subjects (subject, userId)
VALUES ('Firebase', 9);

INSERT INTO subjects (subject, userId)
VALUES ('FTP', 9);

INSERT INTO subjects (subject, userId)
VALUES ('JSON', 9);

INSERT INTO subjects (subject, userId)
VALUES ('Express', 9);

INSERT INTO subjects (subject, userId)
VALUES ('Amber', 9);

INSERT INTO subjects (subject, userId)
VALUES ('Handlebars', 9);

--

INSERT INTO subjects (subject, userId)
VALUES ('jQuery', 10);

INSERT INTO subjects (subject, userId)
VALUES ('ORM', 10);

INSERT INTO subjects (subject, userId)
VALUES ('PHP', 10);

INSERT INTO subjects (subject, userId)
VALUES ('Java', 10);

INSERT INTO subjects (subject, userId)
VALUES ('Express', 10);

INSERT INTO subjects (subject, userId)
VALUES ('Handlebars', 10);

INSERT INTO subjects (subject, userId)
VALUES ('Firebase', 10);

--

----DECKS----

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Commands', 1, 1, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Tags', 1, 3, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('FTP', 2, 10, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('CSS Box Model', 2, 14, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('SQL Statements', 3, 16, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('CSS Box Model', 3, 17, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Bootstrap does', 4, 24, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('jQuery functions', 4, 28, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Objects', 5, 29, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Jasmine', 5, 31, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('NPM commands', 6, 39, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Node commands', 6, 40, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Challenges of Space Computers', 7, 43, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Currents and Resistance', 7, 45, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Margaret Hamilton', 7, 48, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('NoSQL', 8, 50, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('SQL Statements', 8, 51, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('NoSQL', 9, 58, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Mustaches', 9, 63, 1);

--

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('jQuery functions', 10, 64, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Making HTML with PHP', 10, 66, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('Express syntax', 10, 68, 1);

INSERT INTO decks (deckName, userId, subjectID, CounterofAccess)
values ('NoSQL', 10, 70, 1);

----CARDS----

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("ls", "lists all items in directory", 1, 1, 1);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("mkdir", "makes a new directory", 1, 1, 1);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("cd", "used to move into a different directory", 1, 1, 1);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("git add -A", "prepares your data to move to github", 1, 1, 1);

--

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("FTP", "Part of TCP/IP protocol suite - File Transfer protocol", 2, 10, 3);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("FTP port number", "21", 2, 10, 3);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("CSS Box Model", "The CSS Box Model. All HTML elements can be considered as boxes. In CSS, the term "box model" is used when talking about design and layout. The CSS box model is essentially a box that wraps around HTML elements, and it consists of: margins, borders, padding, and the actual content.", 2, 14, 4);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Padding in HTML", "The padding clears an area around the content (inside the border) of an element. The padding is affected by the background color of the element. The top, right, bottom, and left padding can be changed independently using separate properties. A shorthand padding property can also be used, to change all paddings at once.", 2, 14, 4);

--

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("HTML", "Hyper Text Markup Language", 3, 16, 5);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("h1", "header tag, makes text large", 3, 16, 5);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Padding", "Is inside a border and clears an area", 3, 17, 5);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("The box", "has a height and a width", 3, 17, 5);

--

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Bootstrap is", "Bootstrap is the most popular HTML, CSS, and JavaScript framework for developing responsive, mobile-first web sites.", 4, 24, 5);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Bootstrap grid system", "has 12 columns", 4, 24, 5);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values (".append() function", "Insert content, specified by the parameter, to the end of each element in the set of matched elements.", 4, 28, 6);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values (".ready() function", "Specify a function to execute when the DOM is fully loaded.", 4, 28, 6);

--

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Java", "Object Oriented Language", 5, 29, 7);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Java", "is not JavaScript", 5, 29, 7);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Testing", "Jasmine, use Jasmine", 5, 31, 8);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Custom Equality testing", "You can customize how jasmine determines if two objects are equal by defining your own custom equality testers. A custom equality tester is a function that takes two arguments.", 5, 31, 8);

--

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("NPM install <packet name>", "Installs an NPM packet", 6, 39, 9);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("npm update", "Updates your NPM packets", 6, 39, 9);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("node test.js ", "Runs test.js", 6, 40, 10);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Node.js", "Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient. ", 6, 40, 10);

--

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Gravity", "The MacBook Air always flies away in space", 7, 43, 11);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Air", "The MacBook Air is now just called MacBook, since there's no Air in space", 7, 43, 11);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Ohm", "The ohm (symbol: Ω) is the SI derived unit of electrical resistance, named after German physicist Georg Simon Ohm.", 7, 45, 12);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Resistance", "is futile", 7, 45, 12);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Margaret Hamilton", "Coined the word Software Engineering", 7, 48, 13);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Margaret Hamilton programs", "Worked on Apollo and Skylab", 7, 48, 13);

--

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("NoSQL", "Data is in objects", 8, 50, 14);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("Non SQL Database", "A NoSQL (originally referring to non SQL or non relational) database provides a mechanism for storage and retrieval of data which is modeled in means other than the tabular relations used in relational databases.", 8, 50, 14);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("SELECT", "Selects from a set of data", 8, 51, 14);

INSERT INTO cards (front, back, userId, SubjectID, deckID)
values ("DROP TABLE", "Deletes that table", 8, 51, 14);

--

-----------Keep working from here---------------------
