-- 1. Table Setup and Initialization
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    department VARCHAR(100),
    salary DECIMAL(10, 2),
    city VARCHAR(100)
);


-- 2. Data Insertion (10 Target Records)
INSERT INTO employees (emp_name, department, salary, city) VALUES
('Abarnasri', 'Development', 45000.00, 'Coimbatore'),
('Balaji Krish', 'AI Engineering', 65000.00, 'Mettur'),
('Akhil', 'Testing', 28000.00, 'Madurai'),
('Abirami', 'HR', 30000.00, 'Bangalore'),
('Ajay', 'Development', 32000.00, 'Trichy'),
('Agilan', 'Testing', 30000.00, 'Chennai'),
('Srimathi', 'HR', 24000.00, 'Salem'),
('Praveen', 'Development', 55000.00, 'Hyderabad'),
('Aravinthkumar', 'Testing', 35000.00, 'Bangalore'),
('Ananya', 'Design', 29000.00, 'Coimbatore');


-- 3. Comparison Operators Queries
SELECT * FROM employees WHERE salary = 30000;
SELECT * FROM employees WHERE salary != 30000;
SELECT * FROM employees WHERE salary > 30000;
SELECT * FROM employees WHERE salary < 30000;
SELECT * FROM employees WHERE salary >= 30000;
SELECT * FROM employees WHERE salary <= 30000;


-- 4. Between Operator Queries
SELECT * FROM employees WHERE salary BETWEEN 25000 AND 50000;
SELECT * FROM employees WHERE emp_id BETWEEN 2 AND 8;


-- 5. In / Not In Operators Queries
SELECT * FROM employees WHERE department IN ('HR', 'Testing', 'Development');
SELECT * FROM employees WHERE department NOT IN ('HR');


-- 6. Logical Operators Separate Queries
-- Query using AND operator
SELECT * FROM employees WHERE salary >= 30000 AND department = 'Development';

-- Query using OR operator
SELECT * FROM employees WHERE city = 'Coimbatore' OR salary > 60000;

-- Query using NOT operator
SELECT * FROM employees WHERE NOT city = 'Chennai';


-- 7. Like Operator Wildcards (Pattern Matching)
SELECT * FROM employees WHERE emp_name LIKE 'A%';
SELECT * FROM employees WHERE emp_name LIKE '%n';
SELECT * FROM employees WHERE emp_name LIKE '_____';
SELECT * FROM employees WHERE city LIKE '%a%';


-- 8. Order By Sort Operations
SELECT * FROM employees ORDER BY salary ASC;
SELECT * FROM employees ORDER BY salary DESC;
SELECT * FROM employees ORDER BY emp_name ASC;


-- 9. Limit and Offset Row Extractions
SELECT * FROM employees LIMIT 5;
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
SELECT * FROM employees LIMIT 4 OFFSET 2;