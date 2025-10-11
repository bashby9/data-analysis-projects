--SQL-Part-1-Exercises

--count the number of titles 
SELECT COUNT (DISTINCT original_title)
FROM Books

-- select the top 1000 rows from the books table
SELECT TOP 1000 *
FROM Books

--count books where publication year is before 1800
SELECT COUNT (original_publication_year)
FROM Books
WHERE original_publication_year < '1800'

--query that displays distinct author names 
SELECT distinct authors
FROM books

--query that displays a count of all the books that contain a language code for english 
SELECT COUNT (*)
FROM books
WHERE language_code LIKE 'en-%'

--count of original titles written during ww1 (written during and not published? only date related definition is published_year)
SELECT COUNT (title) AS WW1
FROM Books
WHERE original_publication_year BETWEEN '1914' AND '1921'

-- select the top 1000 table items ordered by tag_id
SELECT TOP 1000 *
FROM book_tags
ORDER BY tag_id

--count good read books and group by tag id with Alias goodreads_book
SELECT COUNT (goodreads_book_id) AS goodreads_book
from book_tags
GROUP BY tag_id

--create a query that displays the top 1000 items in the table in descending order 
SELECT TOP 1000 (book_id)
FROM Books
ORDER BY book_id DESC

--total number of users that have given ratings less than 2
-- returned 9090 books with rating less than 2
SELECT COUNT(DISTINCT USER_ID) AS rating_lessthan_2
FROM ratings
WHERE rating < 2

-- total number of books with rating 4 or higher
-- returned 51296
SELECT COUNT(DISTINCT USER_ID) AS ratings_four_or_higher
FROM ratings
WHERE rating >= 4

-- table items where tag_name describes the book as mystery 
--table returned 172 books 
SELECT *
FROM tags
WHERE tag_name LIKE '%mystery%'

--run this query and describe
SELECT *
FROM BooksDB.dbo.tags
WHERE tag_name < 'd' AND tag_name >= 'c';

--query that shows total number of books user wants to read in ascending order under alias total books to read
SELECT [user_id], COUNT(book_id) AS total_books_to_read
FROM to_read
GROUP BY [user_id]
ORDER BY [user_id] ASC

--query that shows total number of books user wants to read. Sort table by total books in descending order
SELECT [USER_ID], COUNT(book_id) AS total_books_to_read
from to_read
GROUP BY ([user_id])
ORDER BY total_books_to_read DESC
