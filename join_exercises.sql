USE employees;

SELECT d.dept_name as department, CONCAT(e.first_name, ' ', e.last_name) as department_manager
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE YEAR(dm.to_date) = 9999
ORDER BY d.dept_name;

SELECT d.dept_name as department, CONCAT(e.first_name, ' ', e.last_name) as department_manager
FROM employees AS e
         JOIN dept_manager AS dm ON e.emp_no = dm.emp_no
         JOIN departments AS d ON d.dept_no = dm.dept_no
WHERE YEAR(dm.to_date) = 9999 AND e.gender = 'F'
ORDER BY d.dept_name;

SELECT t.title, COUNT(t.title) as Total
FROM employees AS e
         JOIN titles AS t ON e.emp_no = t.emp_no
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON d.dept_no = de.dept_no
WHERE t.to_date = '9999-01-01' AND de.to_date = '9999-01-01' AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', s.salary AS 'Salary'
FROM departments AS d
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e ON dm.emp_no = e.emp_no
         JOIN salaries AS s ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01' AND s.to_date = '9999-01-01'
ORDER BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name), d.dept_name, CONCAT(e2.first_name, ' ', e2.last_name)
FROM employees AS e
         JOIN dept_emp AS de ON e.emp_no = de.emp_no
         JOIN departments AS d ON de.dept_no = d.dept_no
         JOIN dept_manager AS dm ON d.dept_no = dm.dept_no
         JOIN employees AS e2 ON dm.emp_no = e2.emp_no
WHERE YEAR(de.to_date) = 9999 AND YEAR(dm.to_date) = 9999
ORDER BY d.dept_name, e.emp_no;