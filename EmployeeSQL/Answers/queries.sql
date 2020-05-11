---#1 Salary by employee
SELECT emp.emp_no,
	emp.last_name,
	emp.first_name,
	emp.gender,
	sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
	ON(emp.emp_no = sal.emp_no)
ORDER BY emp.emp_no

---#2 Employees hired in 1986
SELECT * FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'

---#3 Manager of each department
SELECT dm.dept_no,
	d.dept_name,
	dm.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS dm
	INNER JOIN departments AS d
		ON (dm.dept_no = d.dept_no)
	INNER JOIN employees AS e
		ON (dm.emp_no = e.emp_no)
		
---#4 Department of each employee
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees As e
	INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
ORDER BY e.emp_no;

---#5 Employees whose first name is "Hercules" and last name begins with "B"
SELECT e.first_name,
	e.last_name,
	e.gender
FROM employees AS e
WHERE first_name = 'Hercules' 
AND last_name LIKE 'B%';

---#6 Employees in Sales Department
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	INNER JOIN departments AS de
		ON (e.emp_no = e.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
WHERE d.dept_name = 'Sales'
ORDER BY e.emp_no;

---#7 Employees in the Sales and Development Department
SELECT e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM employees AS e
	INNER JOIN departments AS de
		ON (e.emp_no = e.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no)
WHERE d.dept_name IN ('Sales', 'Development')
ORDER BY e.emp_no;

---#8 The frequency of employee last names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name)





	
	
		

	
	

