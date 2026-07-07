-- ==============================================================================
-- STANDALONE TESTING: MySQL Aggregate and Grouping Query Suites
-- ==============================================================================

USE college_db;
DROP TABLE IF EXISTS employees;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2),
    city VARCHAR(50)
);

INSERT INTO employees (emp_id, emp_name, department, salary, city) VALUES
(101, 'Balaji K', 'Engineering', 65000.00, 'Chennai'),
(102, 'Anand R', 'Engineering', 52000.00, 'Bangalore'),
(103, 'Suresh M', 'Data Science', 58000.00, 'Chennai'),
(104, 'Priya S', 'Human Resources', 41000.00, 'Hyderabad'),
(105, 'Rahul V', 'Data Science', 62000.00, 'Chennai'),
(106, 'Vikram N', 'Finance', 48000.00, 'Mumbai'),
(107, 'Divya K', 'Marketing', 32000.00, 'Chennai'),
(108, 'Arjun B', 'Engineering', 75000.00, 'Pune'),
(109, 'Deepa R', 'Human Resources', 48000.00, 'Chennai'),
(110, 'Karthik P', 'Finance', 54000.00, 'Coimbatore'),
(111, 'Meena T', 'Engineering', 46000.00, 'Chennai'),
(112, 'Sanjay L', 'Data Science', 28000.00, 'Bangalore'),
(113, 'Asha W', 'Human Resources', 39000.00, 'Hyderabad'),
(114, 'Hari H', 'Finance', 33000.00, 'Mumbai'),
(115, 'Gita J', 'Marketing', 45000.00, 'Pune');

-- Aggregate Queries
SELECT COUNT(*) FROM employees;
SELECT MAX(salary) FROM employees;
SELECT MIN(salary) FROM employees;
SELECT AVG(salary) FROM employees;
SELECT SUM(salary) FROM employees;

-- Group By Queries
SELECT department, COUNT(*) FROM employees GROUP BY department;
SELECT department, AVG(salary) FROM employees GROUP BY department;
SELECT department, MAX(salary) FROM employees GROUP BY department;
SELECT department, MIN(salary) FROM employees GROUP BY department;
SELECT department, SUM(salary) FROM employees GROUP BY department;

-- Having Queries
SELECT department, COUNT(*) FROM employees GROUP BY department HAVING COUNT(*) > 2;
SELECT department, AVG(salary) FROM employees GROUP BY department HAVING AVG(salary) > 30000;
SELECT department, SUM(salary) FROM employees GROUP BY department HAVING SUM(salary) > 100000;
SELECT department, MAX(salary) FROM employees GROUP BY department HAVING MAX(salary) > 50000;