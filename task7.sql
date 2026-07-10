USE college_db;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);

INSERT INTO employees (emp_id, emp_name, department, salary) VALUES
(101, 'Balaji K', 'Engineering', 65000.00),
(102, 'Anand R', 'Engineering', 52000.00),
(103, 'Suresh M', 'Data Science', 58000.00),
(104, 'Priya S', 'HR', 41000.00),
(105, 'Rahul V', 'Data Science', 62000.00),
(106, 'Vikram N', 'Testing', 48000.00),
(107, 'Divya K', 'Testing', 32000.00),
(108, 'Arjun B', 'Engineering', 75000.00),
(109, 'Deepa R', 'HR', 45000.00),
(110, 'Karthik P', 'Testing', 34000.00);

-- Single Row Subqueries
SELECT * FROM employees WHERE salary = (SELECT MAX(salary) FROM employees);
SELECT * FROM employees WHERE salary = (SELECT MIN(salary) FROM employees);
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);

-- Multi Row Subqueries
SELECT * FROM employees WHERE department IN (SELECT DISTINCT department FROM employees WHERE department LIKE '%science%' OR department LIKE '%eng%');
SELECT * FROM employees WHERE salary > ANY (SELECT salary FROM employees WHERE department = 'HR');
SELECT * FROM employees WHERE salary > ALL (SELECT salary FROM employees WHERE department = 'Testing');

-- Correlated Subqueries
SELECT e1.* FROM employees e1 WHERE e1.salary > (SELECT AVG(e2.salary) FROM employees e2 WHERE e2.department = e1.department);
SELECT e1.* FROM employees e1 WHERE e1.salary = (SELECT MAX(e2.salary) FROM employees e2 WHERE e2.department = e1.department); 