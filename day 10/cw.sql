-- You are helping design a student registration system for a training institute. You need to:

-- Create a table called students with the following information:
-- student_id (a unique number for each student)
-- name (student's name)
-- email (each student must have a unique email address)

CREATE TABLE students( student_id int UNIQUE, name varchar(255), email varchar(255) UNIQUE );

-- Create another table called courses with:
-- course_id (a unique number for each course)
-- course_name (name of the course)

CREATE TABLE courses( course_id int UNIQUE, course_name varchar(255));

-- Create a table called enrollments to store which student has enrolled in which course. This table should:
-- Include student_id and course_id
-- Make sure both values must match existing records in the other two tables

CREATE TABLE enrollments( student_id int, course_id int, FOREIGN KEY (student_id) REFERENCES students(student_id), FOREIGN KEY (course_id) REFERENCES courses(course_id) );
