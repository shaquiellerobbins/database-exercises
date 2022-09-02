SELECT DISTINCT last_name
FROM employees
ORDER BY last_name DESC
LIMIT 10;

SELECT s.emp_no
FROM salaries s
ORDER BY s.salary DESC
LIMIT 5;

SELECT s.emp_no
FROM salaries s
ORDER BY s.salary DESC
LIMIT 5 OFFSET 45;
