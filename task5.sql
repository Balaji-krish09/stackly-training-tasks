1. Create a table named departments
USE college_db;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- 2. Create a table named employees
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10, 2),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);


-- 3. Data Insertion: Minimum 5 department records
INSERT INTO departments (dept_id, dept_name) VALUES
(10, 'Engineering'),
(20, 'Data Science'),
(30, 'Human Resources'),
(40, 'Finance'),
(50, 'Marketing');


-- 4. Data Insertion: Minimum 10 employee records
-- Note: Includes employees with NULL department matches to fully verify outer join behavior
INSERT INTO employees (emp_id, emp_name, salary, dept_id) VALUES
(101, 'Balaji K', 45000.00, 10),
(102, 'Anand R', 52000.00, 10),
(103, 'Suresh M', 38000.00, 20),
(104, 'Priya S', 41000.00, 30),
(105, 'Rahul V', 60000.00, 20),
(106, 'Vikram N', 28000.00, 40),
(107, 'Divya K', 32000.00, NULL),
(108, 'Arjun B', 75000.00, 10),
(109, 'Deepa R', 48000.00, 30),
(110, 'Karthik P', 34000.00, NULL);


-- 5. Display employee names along with their department names using INNER JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;


-- 6. Display all employees and their department names using LEFT OUTER JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT OUTER JOIN departments d ON e.dept_id = d.dept_id;


-- 7. Display all departments and their corresponding employees using RIGHT OUTER JOIN
SELECT d.dept_name, e.emp_name
FROM employees e
RIGHT OUTER JOIN departments d ON e.dept_id = d.dept_id;


-- 8. Simulate a FULL OUTER JOIN using LEFT JOIN, RIGHT JOIN, and UNION
SELECT e.emp_name, d.dept_name
FROM employees e
LEFT JOIN departments d ON e.dept_id = d.dept_id
UNION
SELECT e.emp_name, d.dept_name
FROM employees e
RIGHT JOIN departments d ON e.dept_id = d.dept_id;


-- 9. Display all possible combinations of employees and departments using CROSS JOIN
SELECT e.emp_name, d.dept_name
FROM employees e
CROSS JOIN departments d;


-- 10. Count the total number of rows returned by the CROSS JOIN
SELECT COUNT(*) AS total_cross_join_rows
FROM employees e
CROSS JOIN departments d;