CREATE DATABASE sales;

CREATE TABLE sales_customer(customerId int, firstName varchar(30), lastName varchar(30), phone bigint, email varchar(40), street varchar(40), city varchar(30), state varchar(10));

SELECT * FROM sales_customer;

INSERT INTO sales_customer VALUES(1, 'Annakarmel', 'Bellary', 932587412, 'bellarya@mail.com', '9273 thome Ave', 'Orchard Park', 'NY');
INSERT INTO sales_customer VALUES(2, 'Pooja', 'Hosamani', 995225354, 'poojah@mail.com', '910 Vine Street', 'Campbell', 'CA');
INSERT INTO sales_customer VALUES(3, 'Shree', 'Keri', 875427412, 'shreek@mail.com', '769C Honey Creeek Street', 'Redondo Beach', 'CA');
INSERT INTO sales_customer VALUES(4, 'Muskan', 'Attar', 785495412, 'muskana@mail.com', '988 Pearl Lane', 'Uniondale', 'NY');
INSERT INTO sales_customer VALUES(5, 'Sneha', 'Lokhande', 932512574, 'snehal@mail.com', '107 River Dr.', 'Sacramento', 'CA');
INSERT INTO sales_customer VALUES(6, 'Sahana', 'Chittaragi', 912524572, 'sahanac@mail.com', '769 West Road', 'Fairport', 'NY');
INSERT INTO sales_customer VALUES(7, 'Mahananda', 'Bilagi', 932587412, 'bilagim@mail.com', '15 Brown St.', 'Buffalo', 'NY');
INSERT INTO sales_customer VALUES(8, 'Ashwini', 'Sulibhavi', 961485455, 'ashwinis@mail.com', '476 Chestnut Ave.', 'Monroe', 'NY');

SELECT * FROM sales_customer;

ALTER TABLE sales_customer ADD COLUMN zipCode bigint;

ALTER TABLE sales_customer DROP COLUMN zipCode;

ALTER TABLE sales_customer RENAME COLUMN customerId to id;

SELECT * FROM sales_customer;

RENAME TABLE sales_customer to sale;

ALTER TABLE sale MODIFY COLUMN id bigInt;
SELECT * FROM sale;

INSERT INTO sale VALUES(9, 'Sukanya', 'Narayankar', 845632115, 'sukanya@mail.com', '92 orchid', 'Amstron park', 'NY');
INSERT INTO sale(id, firstName) VALUES(2, 'Pooja');

desc sale;

ALTER TABLE sale ADD COLUMN place varchar(20) default 'India';
SELECT * FROM sale;

/*WHERE : Cndition used to filter the data from the table based on the condition
/* Syntax for WHERE 
SELECT * FROM table_name WHERE condition*/
SELECT * FROM sale WHERE lastName = 'Hosamani';

SELECT email FROM sale where email = 'bellarya@mail.com';
SELECT id,email FROM sale where email = 'bellarya@mail.com';
SELECT city from sale where city = 'Campbell';

SELECT * FROM sale;

CREATE TABLE movies(id int, name varchar(50), ticket_price int, location varchar(50), hero varchar(50), budget bigint);
SELECT * FROM movies;
INSERT INTO movies VALUES(1,'Kantara',200,'Navarang','Risheb Shetty',500);
INSERT INTO movies VALUES(2,'KGF',300,'PVR','Yash',1000);
INSERT INTO movies VALUES(3,'Charlie777',250,'Orion mall','Rakshit Shetty',600);
INSERT INTO movies VALUES(4,'Mungaru male',350,'Vinayaka','Ganesh',700);

ALTER TABLE movies ADD COLUMN director varchar(40) default 'Annkarmel';

/*DML:
Syntax for update
UPDATE table_name SET column_name = 'value' WHERE condition;*/
UPDATE movies SET director = 'Shree' WHERE id = 2;
SELECT * FROM movies;



UPDATE movies SET director = 'Pooja' WHERE id = 3;
UPDATE movies SET location = 'BTM' WHERE name = 'Kantara'; /* only one condition*/

UPDATE movies SET location = 'Kormangala', budget = 1020 WHERE id = 4;
UPDATE movies SET hero = 'Yash', name = 'KGF2' WHERE id = 2;
UPDATE movies SET name = 'Yuvaratna', ticket_price = 500, hero = 'Puneet' WHERE id = 2;
SELECT * FROM movies;


/*DELETE:
Syntax for delete
DELETE FROM table_name WHERE condition;*/

DELETE FROM movies WHERE id = 4; /* commit -> rollback -> delete -> select -> rollback -> select*/
COMMIT;
ROLLBACK;

/* create table with 10 columns 10 datas for each n evry update column*/

