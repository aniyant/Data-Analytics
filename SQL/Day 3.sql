show databases;
use ineuron;
SET SQL_SAFE_UPDATES = 0;
show tables;

-- id	name	dob	sex	class	hcode	dcode	mtest

CREATE table student(
id int not null,
name varchar(100),
dob varchar(100),
sex varchar(100),
class varchar(100),
hcode varchar(100),
dcode varchar(100),
mtest int,
primary key (id) );

select * from student;
select * from cust_details;
ALTER TABLE cust_details 
DROP column AGE;

ALTER TABLE cust_details
ADD age int;
ALTER TABLE student
RENAME column name TO fname

ALTER TABLE student
CHANGE column DATA_TYPE sex char(5)

-- check columns names and data type and other of any table
SELECT * from INFORMATION_SCHEMA.COLUMNS 
where table_schema = 'ineuron' and table_name = 'student' ;

select * from student

select count(*) from cust_details;
select * from cust_details;
update cust_details set age = 35 where gender = 'M';
update cust_details set age = 30 where gender = 'F';

# Importing a csv into MySQL
select * from student

# Importing tables from MySQL interface

# IMPORT TABLES from Command Prompt

CREATE TABLE M_CAST (
index_1 varchar(10),
MID varchar(255),
PID varchar(255),
ID varchar(10))

use imdb

drop table M_Cast


select * from cust_details

select * from cust_details

ALTER TABLE cust_details
DROP COLUMN age;

UPDATE cust_details set Age = 35 where gender = 'M';
UPDATE cust_details set Age = 30 where gender = 'F';


select * from cust_details

select * from cust_details


SELECT count(cust_id),geography
FROM cust_details
GROUP BY gender
HAVING count(cust_id) > 3;

select * from cust_details

Creating a new database --> IMDB

create database imdb

use imdb

show tables

select * from person

select * from movie

drop table m_cast

"index_1","MID","PID","ID"
"0","tt2388771","nm0000288","0"
"1","tt2388771","nm0000949","1"
"2","tt2388771","nm1212722","2"

CREATE table m_cast(
index_1 varchar(1),
mid varchar(255), 
pid varchar(255),
id varchar(1))

use ineuron
show tables;
select * from cust_details

use ineuron

select gender, count(*) from cust_details
group by gender

select gender, geography, count(cust_id) from cust_details
group by gender, geography having count(cust_id) = 2


select 
from
where
group by
having
order by
limit

select * 
from tablename 
where 
group by
having
order by
limit


len()
select concat(cust_name, ' ', geography) as full_data from cust_details 

select mid(cust_name, 2,3) as char_len, cust_name from cust_details



show tables

CREATE table transaction_details(
prod_name varchar(50),
prod_id int NOT NULL,  
order_date datetime,
amount int)

select * from transaction_details

INSERT INTO transaction_details VALUES ('Motorola', 1, '2020-01-01', 10000);
INSERT INTO transaction_details VALUES ('Canon Camera', 2, '2020-02-01', 60000);
INSERT INTO transaction_details VALUES ('Mousepad', 3, '2020-03-01', 2000);
INSERT INTO transaction_details VALUES ('Razer', 4, '2020-04-01', 3000);
INSERT INTO transaction_details VALUES ('ABC', 5, '2020-05-01', 1200);
INSERT INTO transaction_details VALUES ('DEF', 6, '2020-06-01', 2500);
INSERT INTO transaction_details VALUES ('XYZ', 7, '2020-07-01', 90000);
INSERT INTO transaction_details VALUES ('ABBBB', 8, '2020-08-01', 123100);
INSERT INTO transaction_details VALUES ('ASADASD', 9, '2020-09-01', 1500);
INSERT INTO transaction_details VALUES ('Pencil', 10, '2020-10-01', 10);

select datediff('2021-01-01', order_date) as datediff_today, prod_name, prod_id, order_date 
from transaction_details

select date_format(order_date, "%d %M %Y") from transaction_details;


SELECT DAY("2017-06-15");



SELECT ADDDATE("2017-06-15", INTERVAL -2 DAY);


select * from cust_details where cust_name like 'a%'

select * from cust_details where cust_name REGEXP '^a'

select * from cust_details where cust_name REGEXP "[ty]";

select * from cust_details where cust_name REGEXP "[t-z]";

select * from cust_details where cust_name like '%t%' or cust_name like '%y%';













use ineuron;
select * from student
select * from student where fname like '%t%' or fname like '%u%' or fname like '%v%' or fname like '%x%' or fname like '%y%' or fname like '%z%'

select * from student where name REGEXP '[t-z]'

select substr(fname, 1, character_length(fname)-1) as something , fname  from student

select character_length(fname) from student

select LEFT(fname, 1) from student where  dcode = 'YMT'

select fname from student where fname REGEXP  "[e]";

select SUBSTR(fname, 1,1) from student where  dcode = 'YMT'

select RIGHT(name,2) , name from student
