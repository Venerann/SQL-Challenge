-- Query 1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees AS e
JOIN salaries AS s ON e.emp_no = s.emp_no;

-- Query 2
SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- Query 3
SELECT dm.emp_no, d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN departments AS d ON dm.dept_no = d.dept_no
JOIN employees AS e ON dm.emp_no = e.emp_no;

-- Query 4
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM dept_emp AS de
JOIN employees AS e ON de.emp_no = e.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no;

-- Query 5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- Query 6
SELECT e.emp_no, e.last_name, e.first_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- Query 7
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees AS e
JOIN dept_emp AS de ON e.emp_no = de.emp_no
JOIN departments AS d ON de.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

-- Query 8
SELECT last_name, COUNT(*) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;
