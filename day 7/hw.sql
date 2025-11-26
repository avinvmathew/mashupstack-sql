-- You are managing a database for a mobile app that tracks user performance in different challenges. The table users
-- has the following columns:
-- id (number)
-- name (text)
-- city (text)
-- score (number)
-- bonus (number – can be NULL)
-- challenge (text)
-- Tasks:
-- Insert the following records into the users table:

-- id        name        city             score               bonus        challenge
-- 1        Raj           Chennai        88                   5                 Fitness
-- 2        Anu            Mumbai        91               NULL             Diet
-- 3        Ravi            Chennai       78                3                 Fitness
-- 4        Meena        Delhi            82              NULL               Diet
-- 5        Farah        Mumbai        95                 4                 Fitness
-- 6        Kiran        Pune             70               NULL               Yoga
-- 7        Latha        Pune             87                NULL            Fitness

INSERT INTO users VALUES 
(1, 'Raj', 'Chennai', 88, 5, 'Fitness'), 
(2 , 'Anu' , 'Mumbai' , 91 , NULL , 'Diet'), 
(3 , 'Ravi' , 'Chennai' , 78 , 3 , 'Fitness'), 
(4 , 'Meena' , 'Delhi' , 82 , NULL , 'Diet'), 
(5 , 'Farah' , 'Mumbai' , 95 , 4 , 'Fitness'), 
(6 , 'Kiran' , 'Pune' , 70 , NULL , 'Yoga'), 
(7 , 'Latha' , 'Pune' , 87 , NULL , 'Fitness');

-- Show the details of users whose score is greater than the average score across all users.

SELECT * FROM users HAVING score > (SELECT AVG(score) FROM users);

-- Display the names of users who are participating in the same challenge as the user named 'Farah'.

SELECT name FROM users WHERE challenge = (SELECT challenge FROM users WHERE name = 'Farah');
