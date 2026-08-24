--Part – A:

-- 1. Cities where total salary is greater than 20000

SELECT CITY, SUM(SALARY) AS TOTAL_SALARY FROM employee
GROUP BY CITY
HAVING SUM(SALARY) > 20000;


-- 2. Departments having average salary greater than 12000

SELECT department, AVG(SALARY) AS AVG_SALARY FROM employee
GROUP BY department
HAVING AVG(SALARY) > 12000;

-- 3. Departments having total salary greater than 20000

SELECT department, SUM(SALARY) AS TOTAL_SALARY FROM employee
GROUP BY department
HAVING SUM(SALARY) > 20000;


-- 4. Departments having number of employees greater than 2

SELECT department, COUNT(*) AS EMPLOYEE_COUNT FROM employee
GROUP BY department
HAVING COUNT(*) > 2;

--5. Display cities where minimum salary less than 7000.

SELECT city, MIN(SALARY) AS MINIMUM_SALARY FROM employee
GROUP BY city
HAVING Min(SALARY) < 7000;

-- 6. Cities where average salary is less than 12000

SELECT CITY, AVG(SALARY) AS AVG_SALARY FROM employee
GROUP BY CITY
HAVING AVG(SALARY) < 12000;


-- 7. Departments where maximum salary is greater than 14000

SELECT department, MAX(SALARY) AS MAX_SALARY FROM employee
GROUP BY department
HAVING MAX(SALARY) > 14000;


-- 8. Cities where total salary is greater than or equal to 30000

SELECT CITY, SUM(SALARY) AS TOTAL_SALARY FROM employee
GROUP BY CITY
HAVING SUM(SALARY) >= 30000;


-- 9. Departments having exactly 2 employees

SELECT department, COUNT(*) AS EMPLOYEE_COUNT FROM employee
GROUP BY department
HAVING COUNT(*) = 2;

--10. Display cities having number of female employees greater than equal to 1.

SELECT gender, COUNT(gender) AS EMPLOYEE_COUNT FROM employee
WHERE gender = 'female'
GROUP BY gender
HAVING COUNT(gender) >= 1;

--11. Display departments where minimum salary of male employees greater than 7000.

SELECT CITY, MIN(SALARY) AS TOTAL_SALARY FROM employee
WHERE gender = 'male'
GROUP BY CITY
HAVING Min(SALARY) > 7000;

--12. Display cities where maximum salary of female employees less than 13000.

SELECT CITY, MAX(SALARY) AS TOTAL_SALARY FROM employee
WHERE gender = 'female'
GROUP BY CITY
HAVING MAX(SALARY) > 13000;

--13. Display departments where average salary greater than 10000 and less than 14000.

SELECT CITY, AVG(SALARY) AS TOTAL_SALARY FROM employee
GROUP BY CITY
HAVING AVG(SALARY) between 10000 and 14000;

-- 14. Cities where number of employees joined before 2023 is greater than 1

SELECT CITY, COUNT(*) AS EMPLOYEE_COUNT FROM employee
WHERE joiningyear < '2023'
GROUP BY CITY
HAVING COUNT(*) > 1;


-- 15. Cities where total salary of male employees is greater than 15000, ordered by total salary

SELECT CITY, SUM(SALARY) AS TOTAL_MALE_SALARY FROM employee
WHERE GENDER = 'Male'
GROUP BY CITY
HAVING SUM(SALARY) > 15000
ORDER BY TOTAL_MALE_SALARY;


-- 16. Departments where maximum salary is greater than 13000,ordered by maximum salary

SELECT department, MAX(SALARY) AS MAX_SALARY FROM employee
GROUP BY department
HAVING MAX(SALARY) > 13000
ORDER BY MAX_SALARY;


--17. Display cities where total salary of male employees greater than 15000.

SELECT CITY, SUM(SALARY) AS TOTAL_MALE_SALARY FROM employee
WHERE GENDER = 'Male'
GROUP BY CITY
HAVING SUM(SALARY) > 15000


--18. Display departments where employees joined after 2022 and count greater than 1.

SELECT CITY, COUNT(*) AS EMPLOYEE_COUNT FROM employee
WHERE joiningyear > '2022'
GROUP BY CITY
HAVING COUNT(*) > 1;

--19. Display departments where average salary of female employees greater than 8000.

SELECT CITY, AVG(SALARY) AS TOTAL_MALE_SALARY FROM employee
WHERE GENDER = 'Male'
GROUP BY CITY
HAVING AVG(SALARY) > 8000

--20. Display departments having total salary greater than 20000 and less than 40000.

SELECT department, SUM(SALARY) AS TOTAL_MALE_SALARY FROM employee
GROUP BY department
HAVING SUM(SALARY) > 40000 and SUM(SALARY) < 20000

--Part – B:

-- 21. Departments having total salary of employees joined after 2021 greater than 20000

SELECT department, SUM(SALARY) AS TOTAL_SALARY FROM employee
WHERE joiningyear >= '2021'
GROUP BY department
HAVING SUM(SALARY) > 20000;


-- 22. Cities where average salary of employees joined after 2022 is greater than 10000

SELECT CITY, AVG(SALARY) AS AVG_SALARY FROM employee
WHERE joiningyear >= '2022'
GROUP BY CITY
HAVING AVG(SALARY) > 10000;


-- 23. Cities having number of distinct departments greater than 1

SELECT CITY, COUNT(DISTINCT department) AS DEPT_COUNT
FROM employee
GROUP BY CITY
HAVING COUNT(DISTINCT department) > 1;


-- 24. Cities where maximum salary of employees joined before 2022 is greater than 12000

SELECT CITY, MAX(SALARY) AS MAX_SALARY FROM employee
WHERE joiningyear < '2022'
GROUP BY CITY
HAVING MAX(SALARY) > 12000;


-- 25. Departments where total salary of female employees is less than 15000

SELECT department, SUM(SALARY) AS TOTAL_FEMALE_SALARY FROM employee
WHERE GENDER = 'Female'
GROUP BY department
HAVING SUM(SALARY) < 15000;


--Part – C:

-- 26. Cities where number of male employees is greater than number of female employees
SELECT CITY,
       SUM(CASE WHEN GENDER = 'Male' THEN 1 ELSE 0 END) AS MALE_COUNT,
       SUM(CASE WHEN GENDER = 'Female' THEN 1 ELSE 0 END) AS FEMALE_COUNT
FROM employee
GROUP BY CITY
HAVING SUM(CASE WHEN GENDER = 'Male' THEN 1 ELSE 0 END)
     > SUM(CASE WHEN GENDER = 'Female' THEN 1 ELSE 0 END);


-- 27. Departments having number of cities greater than 1

SELECT department, COUNT(DISTINCT CITY) AS CITY_COUNT
FROM employee
GROUP BY department
HAVING COUNT(DISTINCT CITY) > 1;


-- 28. Cities where total salary excluding IT department is greater than 15000

SELECT CITY, SUM(SALARY) AS TOTAL_SALARY
FROM employee
WHERE department <> 'IT'
GROUP BY CITY
HAVING SUM(SALARY) > 15000;


-- 29. Departments where average salary excluding HR employees is greater than 11000

SELECT department, AVG(SALARY) AS AVG_SALARY
FROM employee
WHERE department <> 'HR'
GROUP BY department
HAVING AVG(SALARY) > 11000;


-- 30. Departments where total salary of male employees is greater than total salary of female employees

SELECT department,
       SUM(CASE WHEN GENDER = 'Male' THEN SALARY ELSE 0 END) AS MALE_SALARY,
       SUM(CASE WHEN GENDER = 'Female' THEN SALARY ELSE 0 END) AS FEMALE_SALARY
FROM employee
GROUP BY department
HAVING SUM(CASE WHEN GENDER = 'Male' THEN SALARY ELSE 0 END)
     > SUM(CASE WHEN GENDER = 'Female' THEN SALARY ELSE 0 END);