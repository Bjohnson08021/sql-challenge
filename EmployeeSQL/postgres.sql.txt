DROP TABLE titles
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
	--FOREIGN KEY(title_id) REFERENCES employees(title_id)
);

SELECT * FROM titles

------------------
DROP TABLE  salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL, 
	salary INT NOT NULL
);
SELECT * FROM salaries
-------------------
DROP TABLE employees
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	title_id VARCHAR (20) NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	hire_date DATE NOT NULL
	
);
SELECT * FROM employees 

--------------------------
DROP TABLE dept_emp
CREATE TABLE dept_emp (
	dept_no VARCHAR (20) NOT NULL,
	emp_no VARCHAR (20)NOT NULL
);
SELECT * FROM dept_emp
------------------
DROP TABLE dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR (20) NOT NULL,
	emp_no INT NOT NULL
);
SELECT * FROM dept_manager
-----------------------
DROP TABLE departments
CREATE TABLE departments (
	dept_no VARCHAR (30) NOT NULL,
	dept_name VARCHAR (30) NOT NULL
);
SELECT * FROM departments
----------------------------------
SELECT e.emp_no,  e.last_name,  e.first_name,  e.gender, s.salary
FROM salaries AS s
INNER JOIN employees as e ON
e.emp_no=s.emp_no;
---------------------------------------
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE DROP TABLE titles
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
	--FOREIGN KEY(title_id) REFERENCES employees(title_id)
);

SELECT * FROM titles

------------------
DROP TABLE  salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL, 
	salary INT NOT NULL
);
SELECT * FROM salaries
-------------------
DROP TABLE employees
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	title_id VARCHAR (20) NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	hire_date DATE NOT NULL
	
);
SELECT * FROM employees 

--------------------------
DROP TABLE dept_emp
CREATE TABLE dept_emp (
	dept_no VARCHAR (20) NOT NULL,
	emp_no VARCHAR (20)NOT NULL
);
SELECT * FROM dept_emp
------------------
DROP TABLE dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR (20) NOT NULL,
	emp_no INT NOT NULL
);
SELECT * FROM dept_manager
-----------------------
DROP TABLE departments
CREATE TABLE departments (
	dept_no VARCHAR (30) NOT NULL,
	dept_name VARCHAR (30) NOT NULL
);
SELECT * FROM departments
----------------------------------
SELECT e.emp_no,  e.last_name,  e.first_name,  e.gender, s.salary
FROM salaries AS s
INNER JOIN employees as e ON
e.emp_no=s.emp_no;
---------------------------------------
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE DROP TABLE titles
CREATE TABLE titles (
	title_id VARCHAR PRIMARY KEY NOT NULL,
	title VARCHAR(30) NOT NULL
	
);

SELECT * FROM titles

------------------
DROP TABLE  salaries
CREATE TABLE salaries (
	emp_no INT NOT NULL, 
	salary INT NOT NULL
);
SELECT * FROM salaries
-------------------
DROP TABLE employees
CREATE TABLE employees(
	emp_no INT PRIMARY KEY NOT NULL,
	title_id VARCHAR (20) NOT NULL, 
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	gender VARCHAR(20) NOT NULL,
	hire_date DATE NOT NULL
	
);
SELECT * FROM employees 

--------------------------
DROP TABLE dept_emp
CREATE TABLE dept_emp (
	emp_no int NOT NULL,
	dept_no VARCHAR (20)NOT NULL
);
SELECT * FROM dept_emp
------------------
DROP TABLE dept_manager
CREATE TABLE dept_manager (
	dept_no VARCHAR (20) NOT NULL,
	emp_no INT NOT NULL
);
SELECT * FROM dept_manager
-----------------------
DROP TABLE departments
CREATE TABLE departments (
	dept_no VARCHAR (30) NOT NULL,
	dept_name VARCHAR (30) NOT NULL
);
SELECT * FROM departments
----------------------------------
SELECT e.emp_no,  e.last_name,  e.first_name,  e.gender, s.salary
FROM salaries AS s
INNER JOIN employees as e ON
e.emp_no=s.emp_no;
---------------------------------------
--SELECT date_part('century', TIMESTAMP '2020-01-01')
SELECT employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE date_part ('year', hire_date) = 1986
------------------------------
SELECT departments.dept_no, departments.dept_name, dm.emp_no, employees.last_name, employees.first_name
FROM dept_manager as dm
LEFT JOIN departments ON
dm.dept_no=departments.dept_no
LEFT JOIN employees on 
employees.emp_no=dm.emp_no;
-------------------------------
SELECT  departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM  dept_emp as dept
FULL JOIN employees ON
dept.emp_no=employees.emp_no
INNER JOIN departments on 
dept.dept_no=departments.dept_no;
------------------------------


------------------------------

