--create a table under your schema called planned_makes
CREATE TABLE Sep2025JunkDB.brittany_ashby.planned_makes
(
    item_id iNT PRIMARY KEY IDENTITY(1,1),
    item_name VARCHAR(100),
    category VARCHAR(100),
    items_needed VARCHAR(150),
    planned_date DATE

)

--Add three rows to your table
INSERT INTO Sep2025JunkDB.brittany_ashby.planned_makes (item_name, category, items_needed, planned_date)
VALUES
('smores', 'recipe', 'graham crackers, chocolate, big marshmallows', '10-25-2025'),
('puzzle', 'assembly', 'puzzle pieces, reference photo, large platform', '10-26-2025'),
('tacos', 'recipe', 'tortilla, protein, cheese, lettuce, seasonings', '11-01-2025')

--TEST TABLE 
SELECT * FROM Sep2025JunkDB.brittany_ashby.planned_makes

--Update a Row
UPDATE Sep2025JunkDB.brittany_ashby.planned_makes
SET planned_date = '11-02-2025'
WHERE item_id = 3


--Delete a row from the table
DELETE FROM 
Sep2025JunkDB.brittany_ashby.planned_makes
WHERE item_name LIKE '%tacos%'

