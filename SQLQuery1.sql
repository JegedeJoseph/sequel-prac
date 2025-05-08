create database mytestdb2

use mytestdb2
create table mytesttable
(
firstname varchar (100),
middlename varchar (100),
lastname varchar (50),
age int,
customer_id int,
)

select firstname,middlename,lastname,age,d.o.b,customer_id from 