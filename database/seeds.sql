-- dummy-data inserts:

-- STUDENTS --
INSERT INTO students (username, password)
VALUES ('pedro', 'pedro');

INSERT INTO students (username, password)
VALUES ('john', 'john');

INSERT INTO students (username, password)
VALUES ('ben', 'ben');

INSERT INTO students (username, password)
VALUES ('edna', 'edna');

INSERT INTO students (username, password)
VALUES ('ari', 'ari');

INSERT INTO students (username, password)
VALUES ('michael', 'michael');

INSERT INTO students (username, password)
VALUES ('victor', 'victor');

INSERT INTO students (username, password)
VALUES ('sean', 'sean');

INSERT INTO students (username, password)
VALUES ('eric', 'eric');

INSERT INTO students (username, password)
VALUES ('caroline', 'caroline');

-- SUBJECTS

-- INSERT INTO subjects (subject, userID)
-- VALUES ('CommandLine', 1);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Git', 1);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('HTML', 1);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('CSS', 1);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('WebDesign', 1);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('DreamWeaver', 1);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('JavaScript', 1);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('HTML', 2);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('ComputerHistory', 2);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('InternetProtocols', 2);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('JavaScript', 2);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('jQuery', 2);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Node', 2);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('CSS', 2);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('HTML', 3);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('MySQL', 3);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('CSS', 3);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Handlebars', 3);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Express', 3);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('JavaScript', 3);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('jQuery', 3);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('HTML', 4);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('CSS', 4);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Bootstrap', 4);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('FTP', 4);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('SQL', 4);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('JavaScript', 4);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('jQuery', 4);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Java', 5);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('DataStructure', 5);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Testing', 5);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Compiler', 5);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Analysis', 5);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Design', 5);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('VersionControl', 5);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('HTML', 6);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('CSS', 6);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Bootstrap', 6);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('NPMpackets', 6);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Node.js', 6);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('JavaScript', 6);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('jQuery', 6);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Space Computers', 7);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Rocket Computer Science', 7);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Hardware development', 7);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Arduino', 7);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Raspberry Pi', 7);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Skylab', 7);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Testing', 7);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Firebase', 8);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('MySQL', 8);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Servers', 8);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('SASS', 8);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Git', 8);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('AJAX', 8);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('JSON', 8);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Servers', 9);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Firebase', 9);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('FTP', 9);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('JSON', 9);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Express', 9);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Amber', 9);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Handlebars', 9);

-- 

-- INSERT INTO subjects (subject, userID)
-- VALUES ('jQuery', 10);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('ORM', 10);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('PHP', 10);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Java', 10);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Express', 10);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Handlebars', 10);

-- INSERT INTO subjects (subject, userID)
-- VALUES ('Firebase', 10);

--

-- DECKS

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Commands', 1, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Tags', 1, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('FTP', 2, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('CSS Box Model', 2, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('SQL Statements', 3, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('CSS Box Model', 3, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Bootstrap does', 4, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('jQuery functions', 4, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Objects', 5, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Jasmine', 5, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('NPM commands', 6, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Node commands', 6, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Challenges of Space Computers', 7, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Currents and Resistance', 7, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Margaret Hamilton', 7, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('NoSQL', 8, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('SQL Statements', 8, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('NoSQL', 9, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Mustaches', 9, 1);

--

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('jQuery functions', 10, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Making HTML with PHP', 10, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('Express syntax', 10, 1);

INSERT INTO decks (deckName, userID, CounterofAccess)
values ('NoSQL', 10, 1);

-- CARDS --

INSERT INTO cards (front, back, userID, deckID)
values ("ls", "lists all items in directory", 1, 1);

INSERT INTO cards (front, back, userID, deckID)
values ("mkdir", "makes a new directory", 1, 1);

INSERT INTO cards (front, back, userID, deckID)
values ("cd", "used to move into a different directory", 1, 1);

INSERT INTO cards (front, back, userID, deckID)
values ("git add -A", "prepares your data to move to github", 1, 1);

--

INSERT INTO cards (front, back, userID, deckID)
values ("FTP", "Part of TCP/IP protocol suite - File Transfer protocol", 2, 3);

INSERT INTO cards (front, back, userID, deckID)
values ("FTP port number", "21", 2, 3);

INSERT INTO cards (front, back, userID, deckID)
values ("CSS Box Model", "The CSS Box Model. All HTML elements can be considered as boxes. In CSS, the term "box model" is used when talking about design and layout. The CSS box model is essentially a box that wraps around HTML elements, and it consists of: margins, borders, padding, and the actual content.", 2, 4);

INSERT INTO cards (front, back, userID, deckID)
values ("Padding in HTML", "The padding clears an area around the content (inside the border) of an element. The padding is affected by the background color of the element. The top, right, bottom, and left padding can be changed independently using separate properties. A shorthand padding property can also be used, to change all paddings at once.", 2, 4);

--

INSERT INTO cards (front, back, userID, deckID)
values ("HTML", "Hyper Text Markup Language", 3, 5);

INSERT INTO cards (front, back, userID, deckID)
values ("h1", "header tag, makes text large", 3, 5);

INSERT INTO cards (front, back, userID, deckID)
values ("Padding", "Is inside a border and clears an area", 3, 5);

INSERT INTO cards (front, back, userID, deckID)
values ("The box", "has a height and a width", 3, 5);

--

INSERT INTO cards (front, back, userID, deckID)
values ("Bootstrap is", "Bootstrap is the most popular HTML, CSS, and JavaScript framework for developing responsive, mobile-first web sites.", 4, 5);

INSERT INTO cards (front, back, userID, deckID)
values ("Bootstrap grid system", "has 12 columns", 4, 5);

INSERT INTO cards (front, back, userID, deckID)
values (".append() function", "Insert content, specified by the parameter, to the end of each element in the set of matched elements.", 4, 6);

INSERT INTO cards (front, back, userID, deckID)
values (".ready() function", "Specify a function to execute when the DOM is fully loaded.", 4, 6);

--

INSERT INTO cards (front, back, userID, deckID)
values ("Java", "Object Oriented Language", 5, 7);

INSERT INTO cards (front, back, userID, deckID)
values ("Java", "is not JavaScript", 5, 7);

INSERT INTO cards (front, back, userID, deckID)
values ("Testing", "Jasmine, use Jasmine", 5, 8);

INSERT INTO cards (front, back, userID, deckID)
values ("Custom Equality testing", "You can customize how jasmine determines if two objects are equal by defining your own custom equality testers. A custom equality tester is a function that takes two arguments.", 5, 8);

--

INSERT INTO cards (front, back, userID, deckID)
values ("NPM install <packet name>", "Installs an NPM packet", 6, 9);

INSERT INTO cards (front, back, userID, deckID)
values ("npm update", "Updates your NPM packets", 6, 9);

INSERT INTO cards (front, back, userID, deckID)
values ("node test.js ", "Runs test.js", 6, 10);

INSERT INTO cards (front, back, userID, deckID)
values ("Node.js", "Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient. ", 6, 10);

--

INSERT INTO cards (front, back, userID, deckID)
values ("Gravity", "The MacBook Air always flies away in space", 7, 11);

INSERT INTO cards (front, back, userID, deckID)
values ("Air", "The MacBook Air is now just called MacBook, since there's no Air in space", 7, 11);

INSERT INTO cards (front, back, userID, deckID)
values ("Ohm", "The ohm (symbol: Ω) is the SI derived unit of electrical resistance, named after German physicist Georg Simon Ohm.", 7, 12);

INSERT INTO cards (front, back, userID, deckID)
values ("Resistance", "is futile", 7, 12);

INSERT INTO cards (front, back, userID, deckID)
values ("Margaret Hamilton", "Coined the word Software Engineering", 7, 13);

INSERT INTO cards (front, back, userID, deckID)
values ("Margaret Hamilton programs", "Worked on Apollo and Skylab", 7, 13);

--

INSERT INTO cards (front, back, userID, deckID)
values ("NoSQL", "Data is in objects", 8, 14);

INSERT INTO cards (front, back, userID, deckID)
values ("Non SQL Database", "A NoSQL (originally referring to non SQL or non relational) database provides a mechanism for storage and retrieval of data which is modeled in means other than the tabular relations used in relational databases.", 8, 14);

INSERT INTO cards (front, back, userID, deckID)
values ("SELECT", "Selects from a set of data", 8, 14);

INSERT INTO cards (front, back, userID, deckID)
values ("DROP TABLE", "Deletes that table", 8, 14);

--

INSERT INTO cards (front, back, userID, deckID)
values ("Firebase", "It's really cool", 9, 16);

INSERT INTO cards (front, back, userID, deckID)
values ("Non SQL Database", "A NoSQL (originally referring to non relational database provides a mechanism for storage and retrieval of data which is modeled in means other than the tabular relations used in relational databases.", 9, 16);

INSERT INTO cards (front, back, userID, deckID)
values ("Mustaches", "Look it catches the beer foam", 9, 17);

INSERT INTO cards (front, back, userID, deckID)
values ("Card Front", "Card Back", 9, 17);

--

INSERT INTO cards (front, back, userID, deckID)
values ("jQuery", "Simplifies writing functions", 10, 18);

INSERT INTO cards (front, back, userID, deckID)
values ("Making HTML with PHP", "Data is on the server and is served to the php site to make html sites", 10, 19);

INSERT INTO cards (front, back, userID, deckID)
values ("height is calculated", "height + padding-top + padding-bottom + border-top + border-bottom", 10, 20);

INSERT INTO cards (front, back, userID, deckID)
values ("width is calculated", "width + padding-left + padding-right + border-left + border-right", 10, 21);
