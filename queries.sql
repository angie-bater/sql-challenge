-- List the following details of each employee: 
-- employee number, last name, first name, gender, and salary
SELECT emp.emp_no,
	emp.last_name,
	emp.first_name,
	emp.gender,
	sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
		ON (emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no;

-- List employees who were hired in 1986
SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates

SELECT d.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name,
	e.hire_date
FROM dept_manager as dm
	INNER JOIN deparments as d
		ON (d.dept_no = d.dept_no)
	INNER JOIN employees as e
		ON (dm.emp_no = e.emp_no);
		
--List the department of each employee with the following information: 
--employee number, last name, first name, and department name

SELECT e.emp_no,
	e.first_name,
	e.last_name,
	d.dept_name
FROM employees as e
	INNER JOIN dept_emp as de
		ON (e.emp_no = de.emp_no)
	INNER JOIN deparments as d
		ON (de.dept_no = d.dept_no);
	
-- List all employees whose first name is "Hercules" and last names begin with "B.
SELECt *
FROM employees as e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';
