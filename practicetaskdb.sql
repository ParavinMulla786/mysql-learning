-- Create Database
CREATE DATABASE practicetaskdb;
USE practicetaskdb;

-- Create Tasks Table
CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description VARCHAR(250),
    status VARCHAR(50) DEFAULT 'pending',
    startDate DATE,
    endDate DATE
);

-- Create Users Table
CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    task_id INT,
    FOREIGN KEY (task_id) REFERENCES tasks(id)
);

SHOW TABLES;

-- Insert Tasks
INSERT INTO tasks (title, description, startDate, endDate)
VALUES
('Learn MYSQL', 'Learn foreign keys and joins', '2026-07-01', '2026-07-15'),
('Study Java', 'Learn intro, datatypes', '2026-07-01', '2026-07-02'),
('Study React', 'Learn React Hooks', '2026-07-02', '2026-07-04');

SELECT * FROM tasks;

-- Insert Users
INSERT INTO users (name, email, task_id)
VALUES
('Paravin', 'paravin@gmail.com', 1),
('Swapnil', 'swapnil@gmail.com', 2),
('Vedantika', 'veda@gmail.com', 3),
('Samruddhi', 'samruddhi@gmail.com', 1),
('Nikita', 'nikita@gmail.com', 2),
('Shruti', 'shruti@gmail.com', 3);

SELECT * FROM users;

-- Update End Date of Task ID 2
UPDATE tasks
SET endDate = '2026-06-30'
WHERE id = 2;

-- Delete User ID 5
DELETE FROM users
WHERE id = 5;

-- Show Tasks with Status
SELECT title, status
FROM tasks;

-- Update Status of Task ID 2
UPDATE tasks
SET status = 'completed'
WHERE id = 2;

-- Display All Pending Tasks
SELECT title, status
FROM tasks
WHERE status = 'pending';

-- Display Tasks Whose End Date Is After Today
SELECT *
FROM tasks
WHERE endDate >= CURDATE();

-- Display All Task Titles
SELECT title
FROM tasks;

-- Count Total Tasks
SELECT COUNT(*) AS total_tasks
FROM tasks;

-- Display First Two Tasks
SELECT *
FROM tasks
LIMIT 2;

-- Sort Users Alphabetically
SELECT *
FROM users
ORDER BY name ASC;

-- Get User by Email
SELECT *
FROM users
WHERE email = 'paravin@gmail.com';

-- Display User Name with Assigned Task
SELECT
    users.name,
    tasks.title
FROM users
INNER JOIN tasks
ON users.task_id = tasks.id;

-- Display User Name, Email and Task Status
SELECT
    users.name,
    users.email,
    tasks.status
FROM users
INNER JOIN tasks
ON users.task_id = tasks.id;

-- Display User Name with Task Title and Dates
SELECT
    users.name,
    tasks.title,
    tasks.startDate,
    tasks.endDate
FROM users
INNER JOIN tasks
ON users.task_id = tasks.id;

-- Count How Many Users Are Assigned to Each Task
SELECT
    tasks.title,
    COUNT(users.id) AS total_users
FROM tasks
LEFT JOIN users
ON users.task_id = tasks.id
GROUP BY tasks.id, tasks.title;