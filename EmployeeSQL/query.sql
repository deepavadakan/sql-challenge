-- List the following details of each employee: 
-- employee number, last name, first name, sex, and salary.

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s
	ON (e.emp_no = s.emp_no);
	
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE (hire_date >= '1/1/1986' AND hire_date <= '12/31/1986');

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, 
-- last name, first name.
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d
	ON dm.dept_no = d.dept_no
JOIN employees AS e
	ON dm.emp_no = e.emp_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN departments AS d
	ON de.dept_no = d.dept_no
JOIN employees AS e
	ON de.emp_no = e.emp_no;
