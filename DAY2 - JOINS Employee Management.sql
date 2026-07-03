create database EmployeeManagemnt;
USE EmployeeManagemnt;

CREATE TABLE departments (
    dept_id INT AUTO_INCREMENT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE salaries (
    salary_id INT AUTO_INCREMENT PRIMARY KEY,
    base_salary DECIMAL(10,2) NOT NULL,
    bonus DECIMAL(10,2)
);


);

-- //Create Table Employee
CREATE TABLE employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(10),
    hire_date DATE NOT NULL,
    job_title VARCHAR(100) NOT NULL,
    dept_id INT,
    salary_id INT,
    
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    FOREIGN KEY (salary_id) REFERENCES salaries(salary_id)
);


insert into departments (dept_name) values
('Human Resources'),
('Engineering'),
('sales'),
('Marketing');


INSERT INTO salaries (base_salary, bonus) VALUES
(50000, 5000),
(80000, 10000),
(45000, 3000),
(60000, 70000);



INSERT INTO employees (
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_title,
    dept_id,
    salary_id
) VALUES (
    'paravin',
    'mulla',
    'paravinmulla2004@gmail.com',
    '1234567890',
    '2022-11-04',
    'software engineer',
    2,
    2
);

select * from employees;
select e.employee.id , e.first.name , e.last_name , d.dept_name
from employee e
join department d on e.department_id = d.dept_id;


SELECT 
    e.employee_id,
    e.first_name,
    e.last_name,
    s.base_salary,
    s.bonus
FROM employees e
JOIN salaries s 
ON e.salary_id = s.salary_id;


select first_name , last_name , hire_date 
from employees
where hire_date > '2024-06-24';


update employees 
set salary_id =3
where employee_id =1;



DELETE FROM employees
WHERE employee_id = 1;




