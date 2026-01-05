create database day1_sql;
use day1_sql;
create table students(
id int,
name varchar(50),
age int,
marks int
);
insert into students values
(1,'ALi',20,89),
(2,'sara',21,54),
(3,'john',19,78),
(4,'Ayesha',20,88),
(5,'Rahul',22,67);

#select all table
select * from students;

#selecting specific columns 
select name, marks from students;

#rename:-columns tempororly
select name as student_name, marks as score from students;
select marks as result from students;
select * from students;

#rename:- columns permanently
alter table students rename column marks to score;
select * from students;