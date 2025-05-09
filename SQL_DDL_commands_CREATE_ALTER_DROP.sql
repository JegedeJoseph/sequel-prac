/* create a new table called persons 
with columns called: id, person_name, birth_date, and phone */

USE MyDatabase

CREATE table persons 
(
	Id INT NOT NULL,
	person_name VARCHAR (50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	constraint pk_persons primary key (Id)
)
select * from persons

-- Add a column named "email"
alter table persons
add email varchar(50) not null  --When adding a column it will always be appended at the end of the table
--To append a column at any other location, you'll have to drop the whole table and recreate it.

--remove the column named "phone"
alter table persons
drop column phone  --when you drop a column you also loose the data in that column

--Remove the table "persons" from the database
drop table persons