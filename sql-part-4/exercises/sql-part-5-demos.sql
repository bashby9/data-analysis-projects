--create a table
-- in this example (1,1) creates the primary key. The first item will be labelled 1, and the second "1" says that the increments will be by 1.  So the first three items added would be labeled, 1,2,3...
CREATE TABLE SEP2025JunkDB.brittany_ashby.Customers (
    customer_id INT PRIMARY KEY IDENTITY(1,1),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    subscription VARCHAR(50),
    join_date DATE DEFAULT GETDATE()
);

--Create columns
INSERT INTO Sep2025JunkDB.brittany_ashby.Customers (first_name, last_name, email, subscription)
VALUES ('Ava', 'bava', 'ava.rodreiquez@email.com', 'pro'),
('Liam', 'Patel', 'liam.patel@email.com', 'free'),
('Noah', 'Chen', 'noah.chen@email.com', 'basic');

select * FROM Sep2025JunkDB.brittany_ashby.Customers;

--change noah chens domain to a new domain in his email 
UPDATE Sep2025JunkDB.brittany_ashby.Customers
SET email = 'noah.chen@newdomain.com'
WHERE customer_id = 3

--Create temp table to see those not on free plan
SELECT* 
INTO #payingcustomers
FROM Sep2025JunkDB.brittany_ashby.Customers
WHERE subscription <> 'free'

--checking if your temp table worked 
SELECT * FROM #payingcustomers

--we want to look for users using a certain domain
SELECT customer_id FROM #payingcustomers
WITH email_users AS (
    SELECT * FROM Sep2025JunkDB.brittany_ashby.Customers
    WHERE email LIKE '%email.com%'
)

--create temp table from scratch 
create table #tempsales (
    sales_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100),
    quantity INT, 
    sale_date DATE DEFAULT GETDATE()
)

--intesrting data manually
INSERT INTO #tempsales (product_name, quantity)
VALUES ('Notebook', 5), ('Pencil', 20)

--checking what i just did
SELECT * FROM #tempsales

DELETE FROM 
Sep2025JunkDB.brittany_ashby.Customers
WHERE email LIKE '%newdomain.com%'

INSERT INTO Sep2025JunkDB.brittany_ashby.Customers (first_name, last_name, email, subscription)
VALUES ('b', 'ashby', 'bashby9@email.com', 'pro')

CREATE TABLE Sep2025JunkDB.brittany_ashby.orders
(
    order_id INT PRIMARY KEY IDENTITY(1,1),
    customer_id INT FOREIGN KEY REFERENCES Sep2025JunkDB.brittany_ashby.customers(customer_id),
    order_date date DEFAULT GETDATE(),
    total_amount DECIMAL(10,2)
)

INSERT INTO Sep2025JunkDB.brittany_ashby.orders (customer_id, total_amount)
VALUES (1, 249.99), (2, 175.50)