-- ========================================================================
-- Part 1: MySQL - Database Design & Operations
-- ========================================================================

-- 1. Create Database
CREATE DATABASE IF NOT EXISTS college_db;
USE college_db;
 
-- 2. Create Table
CREATE TABLE IF NOT EXISTS notes (
    note_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    created_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    status VARCHAR(20) DEFAULT 'ACTIVE'
);
 
-- 3. Sample CRUD Queries (also executed dynamically from Python below)
 
-- CREATE
INSERT INTO notes (title, description) VALUES ('Sample Title', 'Sample Description');
 
-- READ (all notes)
SELECT note_id, title, description, created_date, updated_date, status FROM notes;
 
-- READ (single note)
SELECT note_id, title, description, created_date, updated_date, status
FROM notes WHERE note_id = 1;
 
-- UPDATE
UPDATE notes
SET title = 'Updated Title', description = 'Updated Description'
WHERE note_id = 1;
 
-- DELETE
DELETE FROM notes WHERE note_id = 1;