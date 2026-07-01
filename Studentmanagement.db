
-- Create Database
CREATE DATABASE student_managementsystem;

-- Use Database
USE student_managementsystem;

-- =========================
-- Create Departments Table
-- =========================
CREATE TABLE departments (
    dept_id INT PRIMARY KEY AUTO_INCREMENT,
    dept_name VARCHAR(100) UNIQUE NOT NULL,
    hod_name VARCHAR(100) NOT NULL
);

-- ======================
-- Create Students Table
-- ======================
CREATE TABLE students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    dept_id INT,
    admission_date DATE,
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

-- ====================
-- Create Result Table
-- ====================
CREATE TABLE result (
    result_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    subject VARCHAR(100),
    marks INT,
    grade VARCHAR(2),
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);

-- =========================
-- Insert Departments Data
-- =========================
INSERT INTO departments(dept_name, hod_name)
VALUES
('Computer Science', 'P.R.Bhosle'),
('Mechanical', 'Patil'),
('Electrical', 'Mane'),
('Civil', 'Sane'),
('Electronics & Communication', 'Ingaole');

-- =====================
-- Insert Students Data
-- =====================
INSERT INTO students
(first_name, last_name, email, phone, dept_id, admission_date)
VALUES
('Paravin', 'Mulla', 'paravin1@gmail.com', '9890245341', 1, '2022-11-04'),

('Rahul', 'Sharma', 'rahul1@gmail.com', '9876543210', 2, '2021-07-15'),

('Priya', 'Patil', 'priya1@gmail.com', '9988776655', 3, '2023-01-10'),

('Amit', 'Kadam', 'amit1@gmail.com', '9123456780', 4, '2020-06-20'),

('Sneha', 'Jadhav', 'sneha1@gmail.com', '9765432109', 5, '2022-09-12');

-- ===================
-- Insert Result Data
-- ===================
INSERT INTO result(student_id, subject, marks, grade)
VALUES
(1, 'DBMS', 85, 'A'),
(1, 'Java', 78, 'B'),
(2, 'Thermodynamics', 88, 'A'),
(3, 'Electrical Machines', 91, 'A'),
(4, 'Surveying', 74, 'B'),
(5, 'Digital Electronics', 89, 'A');

-- ======================
-- Show Departments Table
-- ======================
SELECT * FROM departments;

-- ====================

SELECT * FROM students;

SELECT * FROM result;



-- CREATE


-- Add New Student
INSERT INTO students
(first_name, last_name, email, phone, dept_id, admission_date)
VALUES
('Arjun', 'Patel', 'arjun@gmail.com', '9876540000', 1, '2024-01-12');

-- Add New Result
INSERT INTO result(student_id, subject, marks, grade)
VALUES
(6, 'Python', 92, 'A');




-- Show All Students
SELECT * FROM students;

-- Show All Results
SELECT * FROM result;




-- Update Result Marks
UPDATE result
SET marks = 95,
    grade = 'A'
WHERE result_id = 1;

-- ======================
-- DELETE
-- ======================

-- Delete Result
DELETE FROM result
WHERE result_id = 7;

-- Delete Student
DELETE FROM students
WHERE student_id = 7;
