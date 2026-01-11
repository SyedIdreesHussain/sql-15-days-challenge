-- Day 6: INNER JOIN basics
-- Understanding how to combine data from multiple tables

USE day1_sql;

-- --------------------------------------------------
-- Students table is already created earlier
-- Courses table for join practice
-- --------------------------------------------------

CREATE TABLE courses (
    student_id INT,
    course VARCHAR(50)
);

INSERT INTO courses VALUES
(1, 'SQL'),
(1, 'Python'),
(2, 'SQL'),
(3, 'Excel'),
(4, 'SQL');

-- --------------------------------------------------
-- Show student names and their enrolled courses
-- --------------------------------------------------
SELECT students.name, courses.course
FROM students
INNER JOIN courses
ON students.id = courses.student_id;

-- --------------------------------------------------
-- Show only students enrolled in 'SQL'
-- --------------------------------------------------
SELECT students.name, courses.course
FROM students
INNER JOIN courses
ON students.id = courses.student_id
WHERE courses.course = 'SQL';

-- --------------------------------------------------
-- Show student name and score for students enrolled in SQL
-- --------------------------------------------------
SELECT students.name, students.score
FROM students
INNER JOIN courses
ON students.id = courses.student_id
WHERE courses.course = 'SQL';
