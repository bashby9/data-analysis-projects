-- Solution PART 1 EVENT 1 
SELECT t.tag_id as tag,
t.tag_name as name,
COUNT(bt.tag_id) as tag_count
FROM booksDB.dbo.book_tags as bt
JOIN BOOKSDB.DBO.TAGS AS t
ON bt.tag_id = t.tag_id
GROUP BY t.tag_id, t.tag_name
HAVING t.tag_name LIKE '%female%'
OR t.tag_name LIKE '%woman%'
OR t.tag_name LIKE '%women%'
or t.Tag_name LIKE '%lady%'
ORDER BY tag_count DESC

--Solution PART 1 EVENT 2
SELECT
b.authors,
b.original_title AS title,
 b.average_rating AS rating,
t.tag_name AS tag
FROM BooksDB.dbo.books      AS b
JOIN BooksDB.dbo.book_tags  AS bt
ON b.best_book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags       AS t
ON bt.tag_id = t.tag_id
where t.tag_name LIKE '%spring%'
OR t.tag_name LIKE '%april%'
OR t.tag_name LIKE '%bloom%'
ORDER BY b.average_rating DESC

--Solution PART 2 
-- Part2 I chose February/Groundhogs Day/My Birthday (all birthdays)

 --Solution PART 3 
    -- highlighting February. The two events I'm promoting are my birthday (birthdays in general to commemorate my bday) and ground hogs day.  

--Solution SUMMARIZE EVENT 1 
--EVENT 1 (Ground Hogs Day)
SELECT
    b.authors,
    b.original_title AS title,
    b.average_rating AS rating,
    t.tag_name AS tag
FROM BooksDB.dbo.books      AS b
JOIN BooksDB.dbo.book_tags  AS bt
    ON b.best_book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags       AS t
    ON bt.tag_id = t.tag_id
   where t.tag_name LIKE '%groundhog%'
   OR t.tag_name LIKE '%shadow%'
   OR t.tag_name LIKE '%gopher%'
ORDER BY b.average_rating DESC

-- EVENT 2 (My Birthday/Birthdays)
SELECT
    b.authors,
    b.original_title AS title,
    b.average_rating AS rating,
    t.tag_name AS tag
FROM BooksDB.dbo.books      AS b
JOIN BooksDB.dbo.book_tags  AS bt
    ON b.best_book_id = bt.goodreads_book_id
JOIN BooksDB.dbo.tags       AS t
    ON bt.tag_id = t.tag_id
   where t.tag_name LIKE '%birthday%'
   OR t.tag_name LIKE '%aging%'
   OR t.tag_name LIKE '%party%'
ORDER BY b.average_rating DESC

--Question: Returning the same books multiple times....not sure how to resolve.  Select distinct didn't fix 



