select * from account_db.voucher order by voucherId desc;

select * from account_db.location;

create database test;
show databases;
create database testing_db;
drop database test;

select * from account_db.voucher order by voucherId desc;

select * from account_db.setting;


select * from customer where isDeleted = 0;

use account_db;
update customer 
set isDeleted = 1
where customerId > 0;

-- ======= Numeric Data Type =======
-- INT
-- SMALLINT
-- MEDIUMINT
-- BIGINT
-- DECIMAL
-- NUMERIC 
-- FLOAT
-- DOUBLE
-- BIG


-- ====== STRING TYPES ========
-- CHAR
-- VARCHAR
-- BINARY
-- VARBINARY
-- BLOB
-- TINYBLOB
-- MEDIUMBLOB
-- LONGBLOB
-- TEXT
-- TINYTEXT
-- MEDIUMTEXT
-- LONGTEXT
-- ENUM


-- ==== DATA TYPES ====
-- DATETIME
-- DATE
-- TIMESTAMP
-- TIME
-- YEAR

create database testing_db;
use testing_db;
select database();

CREATE TABLE cats(
name VARCHAR(100),
age INT
);
show tables;
DROP table tablename;
show columns from cats;
DESC cats;
drop table cats;
show tables;
-- create pastries table that should include 2 columns and quantity.Name is 50 characters max inspect your table/columns in the cli and delete your table.
CREATE TABLE pastries(
name VARCHAR(100),
quantity INT
);
SHOW TABLES;
SHOW COLUMNS FROM PASTRIES;
DESC PASTRIES;
DROP TABLE PASTRIES;
SHOW TABLES;

CREATE TABLE cat1(
FNAME VARCHAR(100) DEFAULT 'NO NAME',LNAME VARCHAR(100) DEFAULT 'NO NAME'
);
SELECT * FROM cat1;
desc cat1;
SHOW COLUMNS FROM PEOPLE;
SELECT * FROM PEOPLE;
INSERT INTO cat1() VALUES();
desc cat1;
select * from cat1;

CREATE TABLE cat2(
FNAME VARCHAR(100) NOT NULL DEFAULT 'NO NAME',LNAME VARCHAR(100) DEFAULT 'NO NAME' NOT NULL
);
DESC CAT2;
SELECT * FROM CAT2;
INSERT INTO cat2() VALUES();
CREATE TABLE cat3(
FNAME VARCHAR(100) NOT NULL DEFAULT 'NO NAME',LNAME VARCHAR(100) DEFAULT 'NO NAME' NOT NULL
);
DESC CAT3;
INSERT INTO cat2(FNAME,LNAME) VALUES("NULL");

DESC CAT3;
INSERT INTO cat2(FNAME,LNAME) VALUES("AMAN",NULL);

show tables;
drop tables cat1,cat2,cat3;
create table unique_cats(
cat_id INT NOT NULL auto_increment,name VARCHAR(100),age INT,primary key (cat_id)
);
show tables;
desc unique_cats;
insert into unique_cats(cat_id,name,age) value("aa",22);
select * from unique_cats;

create table unique_cats1(
cat_id INT NOT NULL auto_increment,name VARCHAR(100),age INT,primary key (cat_id)
);
desc unique_cats1;
insert into unique_cats1(name,age) value("mmp",22);
select * from unique_cats1;
create table employee(
employee_id INT NOT NULL auto_increment,firstName VARCHAR(100),lastName VARCHAR(100),middleName VARCHAR(100),age INT,currentStatus VARCHAR(100) NOT NULL DEFAULT 'employed' ,primary key (employee_id)
);

insert into employee(firstName,lastName,middleName,age,currentStatus) value("aman","mirza","muhammad",23,"employed");
select * from employee;

show tables;
create table cats(
cat_id int not null auto_increment ,
name varchar(100),
breed varchar(100),
age int,primary key(cat_id)
);
insert into cats(name,breed,age) value("Ringo","WHITE",9),("rio","WITE",1),("liger","WHIT",1),("panther","black",2),("wo","orange",3);
SELECT * FROM cats; 

show tables;
create table cats(
cat_id int not null auto_increment ,
name varchar(100),
breed varchar(100),
age int,primary key(cat_id)
);
insert into cats(name,breed,age) value("KITTY","WHITE",9),("KIT","WITE",1),("KITY","WHIT",1),("oyY","black",2),("sky","orange",3);
SELECT * FROM cats; 
select cat_id,name,age from cats where name='kitty';

use testing_db;
show tables;
select * from cats;
-- Alias 
select cat_id,age from cats where cat_id = age;
select name,age from cats where breed = 'white';
select cat_id,name, age from cats;
select cat_id as id ,name from cats;
select name as 'cat name ',breed as 'kitty breed' from cats;

-- Update
select * from cats;
UPDATE cats SET breed='john' where cat_id=7;
update cats set age=9 where cat_id=6;
create table tigers(
cat_id int not null auto_increment ,
name varchar(100),
breed varchar(100),
age int,primary key(cat_id)
);
insert into tigers(name,breed,age) value("Ringo","WHITE",9),("rio","WITE",1),("liger","WHIT",1),("panther","black",2),("wo","orange",3);
select * from tigers;
select * from cats where name="kitty";
-- delete
delete from cats where cat_id=5;
select * from tigers;
delete from tigers where cat_id=age;
DELETE FROM tigers;
-----------------------------------------------------------------------------------------------------

CREATE TABLE books 
	(
		book_id INT NOT NULL AUTO_INCREMENT,
		title VARCHAR(100),
		author_fname VARCHAR(100),
		author_lname VARCHAR(100),
		released_year INT,
		stock_quantity INT,
		pages INT,
		PRIMARY KEY(book_id)
	);

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);
-----------------------------------------------------------------------------------------
select * from books;
-- string functions
-- concat
select concat('aman',' ','mirza');
select concat(author_fname,' ',author_lname) from books;
select concat(author_fname,' ',author_lname) as 'full name' from books;
select author_fname as firstName, author_lname as lastname, concat(author_fname,' ',author_lname) as fullName from books;
select author_fname as firstName, author_lname as lastname, concat_ws(title,'-',author_fname,'-',author_lname) as fullName from books;
select concat_ws(',',title,author_fname,author_lname) as fullName from books;
------------------------------------------------------------------------------------------

-- substring

select substring(author_fname,-4) from books;
select substring(author_fname ,1,4) as data from books;
select substr(author_fname ,1,4) as data from books;
select concat(substr(title,1,10),'...') as short from books;


-- replace
select replace('aman mughal','mughal','mirza');
select replace('aman','m','a');
select replace(title,'a','aman')from books;
select substr(replace(title,'e','3'),1,10) from books


-- reverse

select reverse('aman');
select reverse(author_fname) from books;
select concat(author_fname,'- ',reverse(author_fname)) from books;

-- char length
select char_length('aman');
select author_fname, char_length(author_fname) as length from books;
select concat(author_fname, ' is ',char_length(author_fname),' character long') as length from books

-- uppercase and lowercase

select upper('aman');
select lower('AMAN');
select upper(title) from books;
select concat('this is upper case ' ,upper(title)) from books;

-- distinct
select author_lname from books;
select distinct author_lname from books;
select released_year from books;
select distinct released_year from books;
select distinct author_fname,author_lname from books;
select author_fname,author_lname from books;
select distinct concat(author_fname,' ',author_lname)  as 'full Name' from books;


-- orderBy
select author_lname from books;
select author_lname from books order by author_lname;
select title from books;
select title from books order by title;
select title from books order by title desc;
select released_year from books order by released_year;
select released_year from books order by released_year desc;
select released_year from books order by released_year asc;
select title,released_year,pages from books order by released_year;
select title,released_year,pages from books order by released_year desc;
select title,author_fname,author_lname,pages from books order by 4;
select title,author_fname,author_lname from books order by 3 desc;
select author_fname,author_lname from books order by author_lname,author_fname desc;
select distinct author_fname,author_lname from books order by author_lname,author_fname desc;

-- limit
select author_lname from books limit 3;
select distinct author_lname from books limit 5;
select title,released_year from books order by released_year limit 4;
select title,released_year from books order by released_year limit 0,5;
select title,released_year from books order by released_year limit 10,5;
select title,released_year from books order by released_year;
select title from books limit 5,1480978032403942;
select title from books limit 5,50;


-- like -- for better searching
select title,author_lname from books where title like '%The Circle%';
select title,author_fname from books where author_fname like 'da%';
select distinct title,author_fname from books where author_fname like 'da%';  -- 'da%' means so on
select title from books where title like '%the%' limit 0,5; -- %the% mean where 'the' comes in title show all of them

-- like ____ four underscore
INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('fake_book', 'edwsf', 'Lahwefiri', 2003, 32, 291);
select title ,stock_quantity from books where stock_quantity like '___'; -- '%' means all and '____' the number of underscore define number of digit values
select title from books where title like '%\%%' limit 0,1; -- \ example if title has '10% happier' it will show that
select title from books where title like '%\_%' limit 0,1;
select * from books;

-- Aggregate functions
select * from books;
-- count
select count(*) from books;
select count(distinct author_fname) as 'info' from books;
select count(distinct author_fname,author_lname) as 'info' from books;
select count(distinct title) from books where author_lname like 'g%';
select title from books where author_lname like 'g%';
select count(*) from books where author_lname like '%g%';

-- groupby summerizes or aggerates identical data into single rows
select distinct title,author_lname from books;
select author_lname ,count(*) from books GROUP BY author_lname;
select author_fname,author_lname,count(*) from books GROUP BY author_fname,author_lname;
select released_year,count(*) from books group by released_year;
select concat('In ',released_year,' ',count(*),' books released') as year from books group by released_year;

-- min and max
select min(released_year) from books;
select min(pages) from books;
select max(pages) from books;
select max(pages), title from books;
select pages,title from books where pages = (select max(pages) from books); 
SELECT b.pages, b.title FROM books b WHERE b.pages = (SELECT MAX(pages) FROM books);
select * from books;

-- subquery
select title,pages from books where pages = (select max(pages) from books);
select * from books order by pages desc limit 1;
select * from books order by pages asc limit 1;

-- min and max group by
select author_fname,author_lname, min(released_year) from books group by author_lname,author_fname;
select author_lname, min(released_year) from books group by author_lname;
select author_fname,author_lname, max(pages) from books group by author_fname,author_lname;
select concat(author_fname , ' ',author_lname) as author,max(pages) as 'longest book' from books group by author_fname,author_lname;

-- sum
select sum(pages) from books;
select sum(released_year) from books;
select author_fname,sum(pages) from books group by author_fname;
select author_fname,sum(released_year) from books group by author_fname;

-- avg
select avg(released_year) from books;
select avg(pages) from books;
select released_year,avg(stock_quantity) from books group by released_year;
select author_fname,author_lname,avg(pages) from books group by author_fname,author_lname;

-- != and =
select author_lname,released_year from books where released_year = 2013;
select author_lname,released_year from books where released_year != 2013;


-- Not Like
use testing_db;
select title from books;
select title from books where title like 'W%';  -- means letter starts with W 
select title from books where title like '%W%'; --  means any where if w matches
select title from books where title not like '%W%';
select title from books where title not like 'W%';


-- Greater than > and >=
select * from books where released_year > 2000;
select title,released_year from books order by released_year;
select title,released_year from books where released_year >= 2000 order by released_year;
select title,released_year from books where released_year > 2000 order by released_year;
select title,stock_quantity from books where stock_quantity >= 100 order by stock_quantity;
select 99 > 1; -- return boolean value means 1 = true and 0 = false
select 99 > 1000;
select 100 > 5;
select -15 > 5;
select 9 > -10;
select 1 > 1;
select 'a' > 'b';
select 'A' > 'a';
select title,author_lname from books where author_lname = 'Eggers';

-- less than <
select title ,released_year from books order by released_year;
select title ,released_year from books where released_year < 2000 order by released_year;
select title ,released_year from books where released_year <= 2000 order by released_year;
select 3 < -10;
select -10 < -9;
select 42 <= 42;
select 'h' < 'p';
select 'Q' <= 'q';
select 'Q' < 'q';

-- && operator AND
select * from books where author_lname = 'Eggers';
select * from books where released_year > 2010;
select * from books where author_lname = 'Eggers' and released_year > 2010;
select * from books where author_lname = 'Eggers' and released_year > 2010;
select * from books where author_lname = 'Eggers' && released_year > 2010;
select 1<5 or 7 =9;
select 1<5 and 7 =9;
select -10 > -20 and 0 <= 0;
select -40 <= -0 && 10 < 40;
select 54 <= 54 && 'a' = 'A';
select * from books where author_lname = 'Eggers' and released_year > 2010 and title like '%novel%';
select * from books where author_lname = 'Eggers' and released_year > 2010 and title like 'novel%';


-- || operator OR
select * from books where author_lname = 'Eggers' and released_year > 2010;
select * from books where author_lname = 'Eggers' || released_year > 2010 or stock_quantity > 100;
select 1<5 or 7 =9;
select 1<5 || 7 =9;
select -10 > -20 || 0 <= 0;
select -40 <= -0 || 10 < 40;
select 54 <= 54 || 'a' = 'A';

-- between use logical and
select title ,released_year from books where released_year  >= 2004 && released_year <= 2015;
select title ,released_year from books where released_year between 2004 and 2015;
-- not between
select title ,released_year from books where released_year not between 2004 and 2015;
select  cast('2017-05-02' as datetime);
select * from books where released_date between '2014-01-01' and '2017-02-02';
select * from books where released_date between cast('2014-01-01' as datetime) and cast('2017-02-02' as datetime);
select * from books;

-- IN operator
select * from books;
select title,author_lname from books where author_lname="Lahiri" or author_lname="Smith" or author_lname="Carver";
select title,author_lname from books where author_lname in ("Lahiri","Smith" ,"Carver");
select title,released_year from books where released_year in (2016,1945,2010);

-- NOT IN operator
select title,released_year from books where released_year not in (2016,1945,2010);
select title,released_year from books where released_year > 2000 not in (2016,1945,2010);
select title,released_year from books where released_year >2000 not in (2016,1945,2010) order by released_year;

-- % modulo or remainder
select title,released_year from books where released_year >= 200 and released_year % 2 != 0;
select title,released_year from books where released_year >= 200 and released_year % 2 != 0 order by released_year;

-- case statements
select title,released_year , case when released_year >= 2000 then 'Modern List' else '20th century list' end as genre from books;
select title,stock_quantity,
	case 
		when stock_quantity between  0 and 50 then '*'
        when stock_quantity between 51 and 100 then '**'
        when stock_quantity between 101 and 150 then '**'
        else '****'
	end as stock
from books;
select 1 in (5,3) || 9 between 8 and 10;


-- relationships and join
create table customers(
id int auto_increment primary key,
first_name varchar(100),last_name varchar(100),email varchar(100)
);
insert into customers (first_name, last_name, email)
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
select * from customers;
create table orders(
id int auto_increment primary key,
order_date DATE,amount decimal(8,2),customer_id int,foreign key(customer_id) references customers(id) 
);
insert into orders(order_date,amount,customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
select * from orders;


-- cross join
select * from customers;
select * from orders;
select id from customers where last_name = "george";
select * from orders where customer_id = 1;
select * from orders where (select id from customers where last_name = "george");
select * from customers,orders;

-- IMPLICIT INNER JOIN

SELECT * FROM customers, orders 
WHERE customers.id = orders.customer_id;
-- IMPLICIT INNER JOIN

SELECT first_name, last_name, order_date, amount
FROM customers, orders 
    WHERE customers.id = orders.customer_id;
    
-- EXPLICIT INNER JOINS

SELECT * FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id;
    
SELECT *
FROM orders
JOIN customers
    ON customers.id = orders.customer_id;
-- ARBITRARY JOIN - meaningless, but still possible 

SELECT * FROM customers
JOIN orders ON customers.id = orders.id;

-- Getting Fancier (Inner Joins Still)

SELECT first_name, last_name, order_date, amount 
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
ORDER BY order_date;
SELECT 
    first_name, 
    last_name, 
    SUM(amount) AS total_spent
FROM customers
JOIN orders
    ON customers.id = orders.customer_id
GROUP BY orders.customer_id
ORDER BY total_spent DESC;
-- LEFT JOINS

SELECT * FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id;
SELECT first_name, last_name, order_date, amount
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id; 
SELECT 
    first_name, 
    last_name,
    IFNULL(SUM(amount), 0) AS total_spent
FROM customers
LEFT JOIN orders
    ON customers.id = orders.customer_id
GROUP BY customers.id
ORDER BY total_spent;



drop table customers,orders;
show tables;
-- ALTERING OUR SCHEMA to allow for a better example (optional)

create table customers(
id int auto_increment primary key,
first_name varchar(100),
last_name varchar(100),
email varchar(100)
);

create table orders(
id int auto_increment primary key,
order_date DATE,
amount decimal(8,2),
customer_id int
);

-- INSERTING NEW DATA (no longer bound by foreign key constraint)

insert into customers(first_name,last_name,email)
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
insert into orders(order_date,amount,customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);

INSERT INTO orders (order_date, amount, customer_id) VALUES
('2017-11-05', 23.45, 45),
(CURDATE(), 777.77, 109);

select * from customers;
select * from orders;



-- right join
select first_name,last_name,order_date,amount from customers right join orders on customers.id = orders.customer_id order by first_name;

SELECT 
    IFNULL(c.first_name, 'MISSING') AS first, 
    IFNULL(c.last_name, 'USER') AS last, 
    o.order_date, 
    o.amount, 
    SUM(o.amount) AS total_amount
FROM customers AS c
RIGHT JOIN orders AS o
    ON c.id = o.customer_id
GROUP BY c.first_name, c.last_name, o.order_date, o.amount;

-- on delete cascade
drop table customers,orders;
CREATE TABLE customers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE orders(
    id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(8,2),
    customer_id INT,
    FOREIGN KEY(customer_id) 
        REFERENCES customers(id)
        ON DELETE CASCADE
);


INSERT INTO customers (first_name, last_name, email) 
VALUES ('Boy', 'George', 'george@gmail.com'),
       ('George', 'Michael', 'gm@gmail.com'),
       ('David', 'Bowie', 'david@gmail.com'),
       ('Blue', 'Steele', 'blue@gmail.com'),
       ('Bette', 'Davis', 'bette@aol.com');
       
INSERT INTO orders (order_date, amount, customer_id)
VALUES ('2016-02-10', 99.99, 1),
       ('2017-11-11', 35.50, 1),
       ('2014-12-12', 800.67, 2),
       ('2015-01-03', 12.50, 2),
       ('1999-04-11', 450.25, 5);
select * from customers;
select * from orders;

DELETE FROM customers WHERE email = 'george@gmail.com' AND id = 1;

-- left join
select * from orders right join customers on customers.id = orders.customer_id order by first_name;


-- The Schema

CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100)
);


CREATE TABLE papers (
    title VARCHAR(100),
    grade INT,
    student_id INT,
    FOREIGN KEY (student_id) 
        REFERENCES students(id)
        ON DELETE CASCADE
);
-- The Starter Data

INSERT INTO students (first_name) VALUES 
('Caleb'), 
('Samantha'), 
('Raj'), 
('Carlos'), 
('Lisa');

INSERT INTO papers (student_id, title, grade ) VALUES
(1, 'My First Book Report', 60),
(1, 'My Second Book Report', 75),
(2, 'Russian Lit Through The Ages', 94),
(2, 'De Montaigne and The Art of The Essay', 98),
(4, 'Borges and Magical Realism', 89);


-- EXERCISE 1

SELECT first_name, title, grade
FROM students
INNER JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;
-- ALT SOLUTION

SELECT first_name, title, grade
FROM students
RIGHT JOIN papers
    ON students.id = papers.student_id
ORDER BY grade DESC;
-- PROBLEM 2

SELECT first_name, title, grade
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;
-- PROBLEM 3

SELECT
    first_name,
    IFNULL(title, 'MISSING'),
    IFNULL(grade, 0)
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id;
    
-- PROBLEM 4

SELECT
    first_name,
    IFNULL(AVG(grade), 0) AS average
FROM students
LEFT JOIN papers
    ON students.id = papers.student_id
GROUP BY students.id
ORDER BY average DESC;
-- PROBLEM 5

SELECT first_name, 
       Ifnull(Avg(grade), 0) AS average, 
       CASE 
         WHEN Avg(grade) IS NULL THEN 'FAILING' 
         WHEN Avg(grade) >= 75 THEN 'PASSING' 
         ELSE 'FAILING' 
       end                   AS passing_status 
FROM   students 
       LEFT JOIN papers 
              ON students.id = papers.student_id 
GROUP  BY students.id 
ORDER  BY average DESC;








