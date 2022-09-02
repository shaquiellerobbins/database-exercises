SELECT DISTINCT title FROM titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT DISTINCT last_name, first_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e';

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%';

SELECT last_name, COUNT(last_name)
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

SELECT gender, COUNT(gender)
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;