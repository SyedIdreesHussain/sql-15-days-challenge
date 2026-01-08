-- Day 4: Aggregate Functions, GROUP BY, HAVING
-- Practicing COUNT, AVG, MAX with grouping logic

USE day1_sql;

-- Total number of students
SELECT COUNT(*) 
FROM students;

-- Average score of all students
SELECT AVG(score)
FROM students;

-- Highest score
SELECT MAX(score)
FROM students;

-- Age-wise count of students
SELECT age, COUNT(*) AS student_count
FROM students
GROUP BY age;

-- Age-wise average score
SELECT age, AVG(score) AS avg_score
FROM students
GROUP BY age;

-- Ages where average score is greater than 80
SELECT age, AVG(score) AS avg_score
FROM students
GROUP BY age
HAVING AVG(score) > 80;

-- Ages where average score > 70 AND student count >= 2
SELECT age, AVG(score) AS avg_sc, COUNT(*) AS count_std
FROM students
GROUP BY age
HAVING AVG(score) > 70 AND COUNT(*) >= 2;
