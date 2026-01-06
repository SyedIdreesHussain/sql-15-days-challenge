use day1_sql;
-- Day 2: WHERE, AND, OR, ORDER BY, LIMIT
-- show all students
select * from students;

-- students with marks greater than 70
select * from students
where score > 70;

-- sort students by marks (highest first)
select * from students 
where age >= 20 and score >=80;

-- sorting data
select * from students 
order by score desc;

-- top results
select * from students
order by score desc
limit 3;