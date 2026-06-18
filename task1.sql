-- 1. Create a database named college_db.
CREATE DATABASE college_db;

-- 2. Select the created database.
USE college_db;

-- 3. Create a table named students with AUTO_INCREMENT PRIMARY KEY.
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    city VARCHAR(100)
);

-- 4. Insert a minimum of 10 student records.
INSERT INTO students (student_name, age, city) VALUES
('Balaji Krish', 21, 'Mettur'),
('Abarnasri', 22, 'Coimbatore'),
('Akhil', 20, 'Madurai'),
('Abirami', 23, 'Bangalore'),
('Ajay', 21, 'Trichy'),
('Agilan', 22, 'Chennai'),
('Srimathi', 19, 'Salem'),
('Praveen', 24, 'Hyderabad'),
('Aravinthkumar', 20, 'Bangalore'),
('Rukmani', 21, 'Coimbatore');


-- 5. Write queries to display specific records:

-- Query A: Display all student records.
SELECT * FROM students;

-- Query B: Display only student names.
SELECT student_name FROM students;

-- Query C: Display only student names and cities.
SELECT student_name, city FROM students;


-- 6. Update records using the WHERE clause:

-- Query A: Update the city of a student using the WHERE clause.
UPDATE students 
SET city = 'Mumbai' 
WHERE student_id = 4;

-- Query B: Update the age of a student using the WHERE clause.
UPDATE students 
SET age = 22 
WHERE student_id = 7;


-- 7. Delete a student record using the WHERE clause.
DELETE FROM students 
WHERE student_id = 10;


-- 8. Display the updated table to verify changes.
SELECT * FROM students;


-- 9. Write one example each demonstrating separate fundamental CRUD principles:

-- CREATE Example
INSERT INTO students (student_name, age, city) VALUES ('Saravanan', 23, 'Chennai');

-- READ Example
SELECT * FROM students WHERE city = 'Mettur';

-- UPDATE Example
UPDATE students SET city = 'Delhi' WHERE student_id = 8;

-- DELETE Example
DELETE FROM students WHERE student_id = 11;


-- 10. Write queries using the requested comparison operators:

-- Operator (=) : Equal to
SELECT * FROM students WHERE age = 21;

-- Operator (!=) : Not equal to
SELECT * FROM students WHERE city != 'Mettur';

-- Operator (>) : Greater than
SELECT * FROM students WHERE age > 21;

-- Operator (<) : Less than
SELECT * FROM students WHERE age < 21;

-- Operator (>=) : Greater than or equal to
SELECT * FROM students WHERE age >= 22;

-- Operator (<=) : Less than or equal to
SELECT * FROM students WHERE age <= 20;


-- 11. Write at least two queries using the WHERE clause to filter records.

-- Filter Query 1: Filter students living in Coimbatore
SELECT * FROM students 
WHERE city = 'Coimbatore';

-- Filter Query 2: Filter students whose age is strictly greater than 22
SELECT * FROM students 
WHERE age > 22;