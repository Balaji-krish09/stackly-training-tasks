-- 1. Database & Architecture Initialization
USE college_db;

DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS departments;

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);


-- 2. Departments Data Population (Minimum 5 records)
INSERT INTO departments (dept_id, dept_name) VALUES
(10, 'Engineering'),
(20, 'Data Science'),
(30, 'Human Resources'),
(40, 'Finance'),
(50, 'Marketing');


-- 3. Employees Table Schema Design (Demonstrating 6 Core Constraints)
CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,                  -- PRIMARY KEY & AUTO_INCREMENT
    emp_name VARCHAR(100) NOT NULL,                         -- NOT NULL
    email VARCHAR(100) UNIQUE,                              -- UNIQUE
    salary DECIMAL(10, 2) CHECK (salary > 10000),           -- CHECK
    city VARCHAR(50) DEFAULT 'Chennai',                     -- DEFAULT
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)   -- FOREIGN KEY
);


-- 4. Employees Data Population (Minimum 10 records)
INSERT INTO employees (emp_name, email, salary, city, dept_id) VALUES
('Balaji K', 'balaji@stackly.com', 45000.00, 'Chennai', 10),
('Anand R', 'anand@stackly.com', 52000.00, 'Bangalore', 10),
('Suresh M', 'suresh@stackly.com', 38000.00, 'Chennai', 20),
('Priya S', 'priya@stackly.com', 41000.00, 'Hyderabad', 30),
('Rahul V', 'rahul@stackly.com', 60000.00, 'Chennai', 20),
('Vikram N', 'vikram@stackly.com', 28000.00, 'Mumbai', 40),
('Divya K', 'divya@stackly.com', 32000.00, 'Chennai', 50),
('Arjun B', 'arjun@stackly.com', 75000.00, 'Pune', 10),
('Deepa R', 'deepa@stackly.com', 48000.00, 'Chennai', 30),
('Karthik P', 'karthik@stackly.com', 34000.00, 'Coimbatore', 40);


-- 5. Constraint Verification Queries
-- Note: Queries that violate NOT NULL, UNIQUE, and CHECK constraints are 
-- active statements to allow verification testing in your runtime environment.

-- AUTO_INCREMENT & PRIMARY KEY Verification
INSERT INTO employees (emp_name, email, salary, city, dept_id) 
VALUES ('Test User', 'test@stackly.com', 15000.00, 'Chennai', 10);

-- DEFAULT Verification
INSERT INTO employees (emp_name, email, salary, dept_id) 
VALUES ('Default City User', 'default@stackly.com', 22000.00, 20);

-- NOT NULL Verification Check (Triggers Error Code 1048)
INSERT INTO employees (emp_name, email, salary, dept_id) 
VALUES (NULL, 'null@stackly.com', 20000.00, 10);

-- UNIQUE Verification Check (Triggers Error Code 1062)
INSERT INTO employees (emp_name, email, salary, dept_id) 
VALUES ('Duplicate User', 'balaji@stackly.com', 25000.00, 10);

-- CHECK Verification Check (Triggers Error Code 3819)
INSERT INTO employees (emp_name, email, salary, dept_id) 
VALUES ('Low Pay User', 'low@stackly.com', 5000.00, 10);


-- 6. Comprehensive Dataset Extractions
SELECT * FROM employees;


-- 7. Relational Cross-Table Join Extractions
SELECT e.emp_name, d.dept_name 
FROM employees e
INNER JOIN departments d ON e.dept_id = d.dept_id;