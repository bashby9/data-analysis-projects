-- Solution
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