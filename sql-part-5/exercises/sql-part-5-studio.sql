CREATE TABLE Sep2025JunkDB.brittany_ashby.book (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    author_id INT, 
    title VARCHAR(255),
    isbn INT, 
    available BIT, 
    genre_id INT
)


INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (2, 'A Midsummers Night Dream', 978149413, 1, 23)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (2, 'Romeo and Juliet', 988535196, 1, 3)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (1, 'The Golden Compass', 451664226, 1, 1)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (1, 'The Subtle Knife', 160419390, 1, 1)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (1, 'The Amber Spyglass', 94387895, 1, 1)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (3, 'The Alchemist', 464069772, 1, 2)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (4, 'And Then There Were None', 335973357, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (5, 'The Joy Luck Club', 990050329, 1, 10)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (5, 'The Moon Lady', 91720786, 1, 24)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (6, 'Northanger Abbey', 951273178, 1, 3)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (6, 'Pride and Prejudice', 415886839, 1, 3)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (6, 'Emma', 994896202, 1, 3)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (6, 'Persuasion', 28150097, 1, 3)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (8, 'The Handmaids Tale', 639239663, 1, 5)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (8, 'The Testaments', 826875490, 1, 5)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (10, 'Little Women', 495409887, 1, 23)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (11, 'Still Life', 455128657, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (11, 'A Fatal Grace', 832517012, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (11, 'The Cruelest Month', 419285319, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (11, 'The Murder Stone', 656621400, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (11, 'The Brutal Telling', 144255852, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (11, 'Bury Your Dead', 208180961, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (11, 'A Trick of the Light', 93451531, 1, 6)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (12, 'Midnights Children', 881082293, 1, 10)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (13, 'Dont Let the Pigeon Drive the Bus!', 18409532, 1, 24)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (14, 'Beezus and Ramona', 744412630, 1, 24)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (15, 'Organic Chemistry', 604328803, 1, 25)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (16, 'I Know Why the Caged Bird Sings', 909947112, 1, 12)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (17, 'Beloved', 46736233, 1, 10)

INSERT INTO Sep2025JunkDB.brittany_ashby.book
VALUES (18, 'Brassbones and Rainbows', 330608463, 1, 26)

select * from Sep2025JunkDB.brittany_ashby.book

SELECT * from Sep2025JunkDB.brittany_ashby.author

CREATE TABLE Sep2025JunkDB.brittany_ashby.author (
    author_id_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    birth_year INT,
    death_year INT)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Phillip', 'Pullman', 1946, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('William', 'Shakespeare', 1564, 1616)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Paulo', 'Coelho', 1947, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Agatha', 'Christie', 1890-09-15, 1976-01-12)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Amy', 'Tan', 1952-02-19, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Jane', 'Austin', 1775-12-16, 1817-07-18)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Emily', 'Bronte', 1818-07-30, 1848-12-19)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Margaret', 'Atwood', 1939-11-18, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Octavia', 'Butler', 1947-06-22, 2006-02-24)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Louisa May', 'Alcott', 1832-11-29, 1888-03-06)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Louise', 'Penny', 1958-07-01, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Salman', 'Rushdie', 1947-08-19, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Mo', 'Willems', 1968-02-11, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Beverly', 'Cleary', 1916-04-12, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Peter', 'Vollhardt', 1946-03-07, null)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Maya', 'Angelou', 1928-04-04, 2014-05-28)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Toni', 'Morrison', 1931-02-18, 2019-08-05)

INSERT INTO Sep2025JunkDB.brittany_ashby.author
VALUES ('Shirley', 'LeFlore', 1940-03-06, 2019-05-12)

select *
from Sep2025JunkDB.brittany_ashby.author

CREATE TABLE Sep2025JunkDB.brittany_ashby.patron (
    patron_id INT IDENTITY (1,1) PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    loan_id INT
)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Jennifer', 'Slayny', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Susan', 'Traviss', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Vincent', 'Ritelli', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Tasia', 'Laybourne', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Wren', 'Gergler', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Tory', 'Lees', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Estelle', 'Di Lorio', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Dorian', 'Betje', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Frank', 'Jelk', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Chris', 'Endon', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Gillie', 'Fritz', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Leisha', 'Defty', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Erika', 'Bompass', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Gabe', 'Moxstead', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Blake', 'Teresse', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Joshua', 'Timmouth', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Tasha', 'Timmouth', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Neil', 'Davie', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Emmeline', 'Pitherick', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Josiah', 'Staner', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('James', 'Greetham', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Isaac', 'Barstowk', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Dean', 'Nelane', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Carolina', 'Cranmere', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Champ', 'Lardiner', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Abbie', 'Quaif', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Camile', 'Milbourne', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Quentin', 'Crose', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Silvano', 'Horlick', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Phyllis', 'Cicchillo', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Jerrie', 'Brownhall', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Ludovika', 'Leist', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Tara', 'Knatt', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Kelsie', 'Parkson', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Jodi', 'Leopard', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Rosanna', 'Cultcheth', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Remy', 'Fairpool', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Megan', 'Blyth', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Rikki', 'McLernon', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Clare', 'Haacker', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Vincent', 'Chettle', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Sybil', 'Costanza', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Jonas', 'Sinclare', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Claire', 'Bendel', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Kathleen', 'Welband', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Kylie', 'Crannage', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Evelyn', 'Tarajo', NULL)

INSERT INTO Sep2025JunkDB.brittany_ashby.patron(first_name, last_name, loan_id)
VALUES ('Oliver', 'Caulson', NULL)

SELECT *
from Sep2025JunkDB.brittany_ashby.patron

CREATE TABLE Sep2025JunkDB.brittany_ashby.genre (
    genre_id INT PRIMARY KEY,
    genres VARCHAR(100)
)

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (1, 'Fantasy')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (2, 'Adventure')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (3, 'Romance')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (4, 'Contemporary')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (5, 'Dystopian')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (6, 'Mystery')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (7, 'Horror')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (8, 'Thriller')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (9, 'Paranormal')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (10, 'Historical Fiction')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (11, 'Science Fiction')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (12, 'Memoir')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (13, 'Cooking')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (14, 'Art')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (15, 'Self-Help')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (16, 'Development')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (17, 'Motivational')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (18, 'Health')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (19, 'History')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (20, 'Travel')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (21, 'Guide')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (22, 'Families and Relationships')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (23, 'Humor')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (24, 'Childrens')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (25, 'Reference')

INSERT INTO Sep2025JunkDB.brittany_ashby.genre
VALUES (26, 'Poetry')

select *
from Sep2025JunkDB.brittany_ashby.genre

CREATE TABLE Sep2025JunkDB.brittany_ashby.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.brittany_ashby.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
)

select * from Sep2025JunkDB.brittany_ashby.loan

--Part B. 1. Return all the mystery book titles and their ISBNs
SELECT b.title,
b.isbn, 
g.genres
FROM Sep2025JunkDB.brittany_ashby.book  AS b
JOIN Sep2025JunkDB.brittany_ashby.genre AS g
ON b.genre_id = g.genre_id
WHERE g.genres LIKE '%mystery%';

--2. Return all the titles and the author's first and last names for books written by authors who are currently living 

SELECT 
b.title,
a.first_name,
a.last_name,
a.death_year
FROM Sep2025JunkDB.brittany_ashby.book as b
JOIN Sep2025JunkDB.brittany_ashby.author AS a
  on b.author_id = a.author_id_id
WHERE a.death_year IS NULL
ORDER BY b.title

Part C: 1 Change available to 0 (false) for the appropriate book 

UPDATE Sep2025JunkDB.brittany_ashby.loan
SELECT 'available'
from Sep2025JunkDB.brittany_ashby.book
SET 'available' = 0
where date_out = GETDATE() 

 CREATE TABLE Sep2025JunkDB.brittany_ashby.loan (
    loan_id INT IDENTITY(1,1) PRIMARY KEY,
    patron_id INT,
    date_out DATE,
    date_in DATE,
    book_id INT
    CONSTRAINT book_id FOREIGN KEY (book_id) REFERENCES Sep2025JunkDB.brittany_ashby.book (book_id)
        ON UPDATE SET NULL
        ON DELETE SET NULL
)

UPDATE Sep2025JunkDB.brittany_ashby.book
SET available = 0
FROM Sep2025JunkDB.brittany_ashby.book
JOIN Sep2025JunkDB.brittany_ashby.loan
    ON book_id = book_id
WHERE date_out = GETDATE();


INSERT INTO Sep2025JunkDB.brittany_ashby.loan (patron_id, date_out, book_id)
VALUES (45, GETDATE(), 18);   

SELECT *
FROM Sep2025JunkDB.brittany_ashby.loan
WHERE date_out = GETDATE();

UPDATE Sep2025JunkDB.brittany_ashby.book
SET available = 0
WHERE book_id IN (
SELECT book_id
FROM Sep2025JunkDB.brittany_ashby.loan
WHERE date_out = GETDATE()
);

update sep2025junkdb.brittany_ashby.book
set available = 1
where book_id = 22

update Sep2025JunkDB.brittany_ashby.loan
set date_in = getdate()
where book_id = 22

 update Sep2025JunkDB.brittany_ashby.patron
set loan_id = NULL
where patron_id = 29

--Write a query tht returns a temp table for a patron that shows them all of their loans
CREATE TABLE #booksloaned (
loan_id INT IDENTITY(1,1) PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
book_title VARCHAR(100),
date_out DATE,
date_in DATE)

select  p.first_name,
p.last_name,
b.title,
g.genres
FROM Sep2025JunkDB.brittany_ashby.patron AS p
JOIN Sep2025JunkDB.brittany_ashby.loan as l
    ON l.patron_id = p.patron_id
JOIN Sep2025junkdb.brittany_ashby.book AS b
    ON b.book_id = l.book_id
JOIN Sep2025JunkDB.brittany_ashby.genre AS g
    ON g.genre_id = b.genre_id
where l.date_in IS NULL 
order by p.last_name, p.first_name, b.title;



