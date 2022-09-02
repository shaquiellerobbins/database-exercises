SELECT CONCAT_WS(' ' , first_name, last_name) as full_name
FROM employees
WHERE last_name LIKE 'e%'
  AND last_name LIKE '%e'
ORDER BY full_name;

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY birth_date;

SELECT *
FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25
AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date;

SELECT *
FROM employees
WHERE month(birth_date) = 12
  AND day(birth_date) = 25
  AND year(hire_date) BETWEEN 1990 AND 1999
ORDER BY birth_date, hire_date DESC;

SELECT e.*, datediff(now(), hire_date)
FROM employees e
WHERE month(e.birth_date) = 12
  AND day(e.birth_date) = 25
  AND year(e.hire_date) BETWEEN 1990 AND 1999;
