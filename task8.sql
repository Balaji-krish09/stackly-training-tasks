-- SECTION 1: DATABASE TRANSACTION CONTROL SEGMENTS
USE college_db;
DROP TABLE IF EXISTS bank_accounts;

CREATE TABLE bank_accounts (
    account_id INT PRIMARY KEY,
    account_holder VARCHAR(100),
    balance DECIMAL(10, 2)
);

INSERT INTO bank_accounts (account_id, account_holder, balance) VALUES
(1001, 'Balaji Krishnamoorthy', 25000.00),
(1002, 'Anand R', 15000.00),
(1003, 'Suresh M', 8000.00),
(1004, 'Priya S', 45000.00),
(1005, 'Rahul V', 12000.00);

-- Query 1: Display the structural ledger state BEFORE transactions run
SELECT 'STATE: BEFORE TRANSACTIONS' AS Execution_Status;
SELECT * FROM bank_accounts;

-- Begin controlled manual transaction tracking
SET AUTOCOMMIT = 0;
START TRANSACTION;

-- Deduct ₹1000 from first target account
UPDATE bank_accounts SET balance = balance - 1000.00 WHERE account_id = 1001;
-- Credit ₹1000 to second target account
UPDATE bank_accounts SET balance = balance + 1000.00 WHERE account_id = 1002;

-- Finalize persistent disk changes
COMMIT;

-- Query 2: Display the structural ledger state AFTER COMMIT is executed
SELECT 'STATE: AFTER COMMIT' AS Execution_Status;
SELECT * FROM bank_accounts;

-- Begin secondary speculative transaction block
START TRANSACTION;

-- Attempt multiple experimental balance updates
UPDATE bank_accounts SET balance = balance + 5000.00 WHERE account_id = 1003;
UPDATE bank_accounts SET balance = balance - 3000.00 WHERE account_id = 1004;

-- Purge memory log modifications and return to the verified state
ROLLBACK;

-- Query 3: Display the structural ledger state AFTER ROLLBACK is executed
SELECT 'STATE: AFTER ROLLBACK' AS Execution_Status;
SELECT * FROM bank_accounts;
SET AUTOCOMMIT = 1;


-- SECTION 2: VIRTUAL ABSTRACT SCHEMA LAYERS (VIEWS)
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
(104, 'Priya S', 'HR', 41000.00, 'Hyderabad'),
(105, 'Rahul V', 'Data Science', 62000.00, 'Chennai'),
(106, 'Vikram N', 'Testing', 48000.00, 'Mumbai'),
(107, 'Divya K', 'Testing', 32000.00, 'Chennai'),
(108, 'Arjun B', 'Engineering', 75000.00, 'Pune'),
(109, 'Deepa R', 'HR', 45000.00, 'Chennai'),
(110, 'Karthik P', 'Testing', 34000.00, 'Coimbatore');

-- 1. Create presentation view subset abstract layer
CREATE VIEW employee_view AS
SELECT emp_name, department, salary
FROM employees;

-- 2. Display all records from the newly initialized virtual view schema
SELECT 'DISPLAYING PRIMARY CORE VIEW RECORDS' AS View_Status;
SELECT * FROM employee_view;

-- 3. Replace the structure to map the city attribute columns
CREATE OR REPLACE VIEW employee_view AS
SELECT emp_name, department, salary, city
FROM employees;

-- 4. Display all records from the updated schema view layout
SELECT 'DISPLAYING REPLACED EXTENDED VIEW RECORDS' AS View_Status;
SELECT * FROM employee_view;

-- 5. Drop the virtual view allocation from the relational cache
DROP VIEW employee_view;