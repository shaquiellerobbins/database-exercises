SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name, emp_no;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name, last_name;

SELECT emp_no, last_name, first_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name, last_name;

SELECT emp_no, last_name
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY emp_no;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name DESC, emp_no;

SELECT emp_no, first_name, last_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name, last_name DESC;

SELECT emp_no, last_name, first_name
FROM employees
WHERE first_name = 'Irena'
   OR first_name = 'Vidya'
   OR first_name = 'Maya'
ORDER BY first_name, last_name DESC;

SELECT emp_no, last_name, first_name
FROM employees
WHERE last_name LIKE '%e%'
ORDER BY last_name, first_name DESC;