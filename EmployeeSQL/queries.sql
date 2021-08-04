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
--WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
SELECT last_name, first_name, gender
FROM employees
WHERE first_name = 'Hercules' and last_name like 'B%';
------------------------------
SELECT  departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM  dept_emp as dept
FULL JOIN employees ON
dept.emp_no=employees.emp_no
INNER JOIN departments on 
dept.dept_no=departments.dept_no
Where departments.dept_name = 'Sales';
---------------------------------------
SELECT  departments.dept_name, employees.last_name, employees.first_name, employees.emp_no
FROM  dept_emp as dept
FULL JOIN employees ON
dept.emp_no=employees.emp_no
INNER JOIN departments on 
dept.dept_no=departments.dept_no
Where departments.dept_name = 'Sales' OR departments.dept_name = 'Development';
--------------------------------------
SELECT last_name, COUNT(last_name) AS "employees count"
FROM employees
GROUP BY last_name
ORDER BY "employees count" DESC;



