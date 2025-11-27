-- A small company maintains two tables:

-- employees – which contains employee details like id and name.

CREATE TABLE employees( id int, name varchar(255) );
INSERT INTO employees VALUES (1,'Anjali'),(2,'Rohan'),(3,'Meena');

-- departments – which contains emp_id and the department_name the employee works in.

CREATE TABLE departments( emp_id int, department_name varchar(255) );
INSERT INTO departments VALUES (1,'HR'),(2,'IT'),(4,'Finance');

-- Your tasks are:

-- Show a list of all employees along with their department name. If an employee doesn’t belong to any department, 
-- still show their name with “NULL” for the department.

SELECT e.name,d.department_name FROM employees e LEFT JOIN departments d ON e.id=d.emp_id 
UNION 
SELECT e.name,d.department_name FROM employees e RIGHT JOIN departments d ON e.id=d.emp_id;

-- Show only those employees who have a department assigned.

SELECT e.name,d.department_name FROM employees e LEFT JOIN departments d ON e.id=d.emp_id WHERE d.department_name IS NOT NULL;

-- Show all department assignments, even if the employee doesn’t exist in the employee table-- employees table

SELECT e.name,d.department_name FROM employees e RIGHT JOIN departments d ON e.id=d.emp_id;

-- id | name
-- ---|--------
-- 1  | Anjali
-- 2  | Rohan
-- 3  | Meena

-- -- departments table
-- emp_id | department_name
-- --------   |-----------------
-- 1           | HR
-- 2           | IT
-- 4           | Finance