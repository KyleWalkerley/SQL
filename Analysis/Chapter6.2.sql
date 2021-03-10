SELECT DISTINCT school
FROM teacher;

SELECT firts_name, last_name, salary
FROM teacher
ORDER BY salary ASC;

SELECT last_name, school, hire_date
FROM teacher
WHERE school = 'Meyers Middle School';

SELECT salary
From teacher
WHERE salary BETWEEN 39000 AND 70000


SELECT firts_name
FROM teacher
WHERE firts_name LIKE 'Sam%';

SELECT firts_name, last_name, school, hire_date, salary
FROM teacher
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC; 

SELECT firts_name, last_name, school, hire_date, salary
FROM teacher
ORDER BY school,firts_name DESC;




