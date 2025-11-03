-- You are helping manage a student information table in a college database. The table is named students and 
-- contains the following columns:
-- id (number)
-- name (text)
-- age (number)
-- department (text)
-- grade (number)

-- Your task is to:
-- Insert 4 student records into the students table using realistic data.

INSERT INTO `students`(`id`, `name`, `age`, `department`, `grade`) VALUES (1000,'Abhiram',23,'ME',80), (1001,'Ayush',22,'ME',89), (1002,'Afnas',24,'CS',95), (1003,'Niranjan',23,'EE',60)

-- Write a query to display all students whose age is greater than 20.

SELECT * FROM `students` WHERE age > 20;

-- Write a query to display all students in the 'Computer Science' or 'Physics' departments.

SELECT * FROM students WHERE department='CS' OR department='Physics';

-- Write a query to show the student who has the grade exactly equal to 90.

SELECT * FROM students WHERE grade=90;

-- Write a query to find students whose grades are between 70 and 90.

SELECT * FROM students WHERE grade BETWEEN 70 AND 90;
 