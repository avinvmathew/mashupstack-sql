CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    leave_days INT
);

INSERT INTO employee (id, name, department, leave_days) VALUES 
(1, 'raju', 'sales', 1), 
(2, 'sangeetha', 'sales', 3), 
(3, 'vinay', 'operations', 8), 
(4, 'abey', 'packing', 2), 
(5, 'thomas', 'packing', 1), 
(6, 'muneer', 'operations', 7), 
(7, 'aparna', 'sales', 3), 
(8, 'abid', 'operations', 9), 
(9, 'fathima', 'sales', 11), 
(10, 'varghese', 'operations', 14);

CREATE TABLE exam (
    id INT PRIMARY KEY,
    employee_id INT,
    exam_status VARCHAR(50),
    FOREIGN KEY (employee_id) REFERENCES employee(id)
);

INSERT INTO exam (id, employee_id, exam_status) VALUES
(1, 2, 'pass'),
(2, 5, 'fail'),
(3, 1, 'fail'),
(4, 8, 'pass'),
(5, 3, 'pass'),
(6, 1, 'pass'),
(7, 6, 'fail'),
(8, 9, 'pass'),
(9, 10, 'pass');

-- Q1 Write a query to get the list of employees who took more than 5 leaves and are in sales department.

SELECT e.name FROM employee e WHERE e.leave_days > 5 AND e.department = 'sales';

-- Q2 Write a query to get the number of employees working in operations department

SELECT e.department, COUNT(*) as no_of_employees FROM employee e GROUP BY e.department HAVING e.department = 'operations';

-- Q3 Write a single query to get the count of employees working in each department.

SELECT e.department, COUNT(*) as no_of_employees FROM employee e GROUP BY e.department;

-- Q4 Write a query to list the departments where all its employee altogether took more than 10 leaves.

SELECT e.department FROM employee e GROUP BY e.department HAVING SUM(leave_days) > 10;

-- Q5 Write a query to list all the employee names who have passed the exam

SELECT e.name AS passed_employees FROM employee e WHERE e.id IN (SELECT ex.employee_id FROM exam ex WHERE ex.exam_status = 'pass');

-- Q6 Write a query to list all the employee names who have not attended the exam

SELECT e.name AS exam_not_attended_employees FROM employee e WHERE e.id IN (SELECT ex.employee_id FROM exam ex WHERE ex.exam_status IS NULL);
