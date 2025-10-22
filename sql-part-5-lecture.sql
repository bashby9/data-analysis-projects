--which drivers have ever finished first? subquery is list of winner. outer query is looking for all drivers.  so all drivers that appear in the list of winners.  
-- this is a noncorrelated subquery (can be run on its own)
select forename, surname
from formula_one.dbo.drivers
where driverId IN 
(
    select distinct driverId
from formula_one.dbo.results
where position = '1' 
)

-- same example of using a cte 
WITH winning_driverIds AS (
       select distinct driverId
from formula_one.dbo.results
where position = '1' 
)
SELECT forename, surname
FROM formula_one.dbo.drivers
WHERE driverId IN (SELECT * FROM winning_driverIds)
-- How many races has each driver entered? 
-- This is a non-correlated subquery 

SELECT d.forename as firstname,
d.surname as lastname,
(
    SELECT COUNT(*)
    from formula_one.dbo.results as r 
    where r.driverid = d.driverId
) AS RACE_COUNT
FROM formula_one.dbo.drivers as d 

-- whichi drivers have entered at least 50 competitions?
SELECT 
    d.forename,
d.SURNAME
FROM formula_one.dbo.drivers AS d
WHERE (
        SELECT COUNT(*)
        FROM formula_one.dbo.results AS r
        WHERE r.driverId = d.driverId
) > 50

-- For each circuit, in how many years has it hosted at least one race?
-- count of distinct year values for each circuit id (from races table)
-- information about each circuit tiself, like the circuit name, which comes from the circuit table

-- this will be our subquery in the entire query 
SELECT circuitId, COUNT(DISTINCT year) AS num_years_hosted
FROM formula_one.dbo.races
GROUP BY circuitId

--Use a CTE
With circuit_years AS (
    SELECT circuitId, COUNT(DISTINCT year) AS num_years_hosted
FROM formula_one.dbo.races
GROUP BY circuitId
)
SELECT cir.name AS circuit_name,
cy.num_years_hosted
FROM formula_one.dbo.circuits AS cir
INNER JOIN circuit_years as cy 
ON cir.circuitId = cy.circuitId
ORDER BY cy.num_years_hosted DESC

-- Which drivers have scored points in more than 5 different races?
-- need: drivers table, results table

WITH driver_points as ( SELECT
        driverId, 
        COUNT(resultId) as races_with_points
        FROM formula_one.dbo.results
        WHERE points > 0
        group by driverid 
)
SELECT d.forename, d.surname,
driver_points.races_with_points
FROM formula_one.dbo.drivers as d
INNER JOIN driver_points
ON d.driverId = driver_points.driverId
WHERE driver_points.races_with_points > 5

-- UNION 
-- A LIST of all drivers who are either from UK or from Italy

SELECT forename, surname, nationality
FROM formula_one.dbo.drivers
WHERE nationality = 'British'
UNION ALL 
SELECT forename, surname, nationality
FROM formula_one.dbo.drivers
WHERE nationality = 'Italian'

-- List of drivers who have either won a race, or recorfded the fastest lap in a race
-- "rank" column in the results table is the "rank" of their fastest lap. ie, a rank of 1 means they had the first fastest lap in the race

--1) create table that pulls drivers who won a race
SELECT 
d.forename, 
d.surname, 
'RACE WINNER' AS achievement_type 
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS r
ON d.driverId = r.driverId
WHERE r.position = '1' 

UNION 
--table that pulls drivers who have reported the fastest lap
SELECT 
forename, 
surname, 
'FASTEST LAP' as achievement_type
FROM formula_one.dbo.drivers AS d
INNER JOIN formula_one.dbo.results AS r
ON d.driverId = r.driverId
WHERE r.rank = '1' 

--create a list of drivers who raced in 2021 and 2022
-- we'll need, races, results, and driver table 
--1st step, create list of drivers who raced in 2021 
--this query will tell us drivers that appear in both (both queries need to have comptible data)

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers as d
INNER JOIN formula_one.dbo.results as res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2021

INTERSECT

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers as d
INNER JOIN formula_one.dbo.results as res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2022

--which drivers raced in 2021 but not in 2022
SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers as d
INNER JOIN formula_one.dbo.results as res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2021

EXCEPT

SELECT DISTINCT d.driverId,
d.forename,
d.surname
FROM formula_one.dbo.drivers as d
INNER JOIN formula_one.dbo.results as res
ON d.driverId = res.driverId
INNER JOIN formula_one.dbo.races
ON res.raceId = races.raceId
WHERE races.year=2022

--Studio Exercises 
--Q2. Ira was asked by a customer for titles that have been tagged “meditation”. 
--As you create a query for ira, think about how the tables in booksdb are organized as you write your query. 
SELECT b.original_title AS title 
FROM booksdb.dbo.books AS b
WHERE b.book_id IN (
    SELECT bt.tag_id
    FROM booksdb.dbo.book_tags AS bt
    WHERE bt.tag_id = (
        SELECT t.tag_id
        FROM booksdb.dbo.tags AS t
        WHERE t.tag_name = 'meditation'
    )
)
ORDER BY title

SELECT original_title as title 
from booksdb.dbo.books as b
WHERE b.book_id IN (
    SELECT 
)

SELECT DISTINCT
  b.original_title AS title
FROM BooksDB.dbo.books AS b
WHERE b.book_id IN (
  SELECT b.book_id, 
  tag_name
  FROM BooksDB.dbo.book_tags AS bt
  WHERE bt.tag_id IN (
    SELECT t.tag_id
    FROM BooksDB.dbo.tags AS t
    WHERE t.tag_name = 'meditation'
  )
)
ORDER BY title;

SELECT DISTINCT
  b.title
FROM BooksDB.dbo.books AS b
WHERE b.goodreads_book_id IN (
  SELECT bt.goodreads_book_id
  FROM BooksDB.dbo.book_tags AS bt
  WHERE bt.tag_id IN (
    SELECT t.tag_id
    FROM BooksDB.dbo.tags AS t
    WHERE t.tag_name = 'meditation'
  )
)
ORDER BY b.title;
--Q1: Ornela 
SELECT title, authors
FROM BooksDB.dbo.books
WHERE authors LIKE '%,%';


--Q2:B
SELECT DISTINCT
  b.title,
  'meditation' AS tag_name
    FROM BooksDB.dbo.books AS b
    WHERE b.book_id IN (
SELECT bt.goodreads_book_id
    FROM Booksdb.dbo.book_tags AS bt
    WHERE bt.tag_id IN (
SELECT t.tag_id
    FROM BooksDB.dbo.tags AS t
    WHERE t.tag_name = 'meditation'
  )
)
ORDER BY b.title;

--Q2 Orenla: 
SELECT b.title
FROM BooksDB.dbo.books AS b
WHERE b.book_id IN (
        SELECT bt.goodreads_book_id
        FROM BooksDB.dbo.book_tags AS bt
        WHERE bt.tag_id = (
            SELECT t.tag_id
            FROM BooksDB.dbo.tags As t
            WHERE t.tag_name = 'Meditation'));

--Q3: 
SELECT original_title, title, average_rating
FROM (
    SELECT original_title, title, average_rating
    FROM BooksDB.dbo.books
    Where average_rating >= 4.2
    EXCEPT
    SELECT original_title, title, average_rating
    FROM BooksDB.dbo.books
    WHERE original_title IS NULL
) AS BooksFour
ORDER BY average_rating DESC;     

--Q4:
SELECT b.title, b.original_publication_year
FROM BooksDB.dbo.books as b
WHERE b.average_rating < (
    SELECT AVG(r.rating)
    FROM BooksDB.dbo.Ratings AS r
    WHERE r.book_id = b.book_id
) 
ORDER BY 
b.original_publication_year,
b.title