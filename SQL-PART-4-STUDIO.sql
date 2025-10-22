--Q1: Willow w
SELECT title, authors
FROM BooksDB.dbo.books
WHERE authors LIKE '%,%';


--Q2: Ira
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
    WHERE t.tag_name like '%meditation%'
  )
)
ORDER BY b.title;

--Q3: Alyce
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

--Q4:Thisbe
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