--Part – A:
select * from Person
select * from DEPARTMENT

-- 1. Combine information from Person and Department using Cross Join

SELECT * FROM Person
CROSS JOIN Department;

-- 2. Find all persons with their department name

SELECT P.PersonName, D.DepartmentName FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid;

-- 3. Find all persons with their department name and code

SELECT P.PersonName, D.DepartmentName, D.departmentid FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid;


-- 4. Find all persons with their department code and location

SELECT P.PersonName, D.departmentid, D.Location FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid;


-- 5. Find the detail of the person who belongs to Mechanical department

SELECT P.* FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid
WHERE D.DepartmentName = 'Mechanical';


-- 6. Find person's name, department code and salary who lives in Ahmedabad

SELECT P.PersonName, P.departmentid, P.Salary FROM Person P
WHERE P.City = 'Ahmedabad';


-- 7. Find the person's name whose department is in C-Block

SELECT P.PersonName FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid
WHERE D.Location = 'C-Block';


-- 8. Retrieve person's name, salary and department name who belongs to Jamnagar

SELECT P.PersonName, P.Salary, D.DepartmentName FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid
WHERE P.City = 'Jamnagar';


-- 9. Retrieve person's detail who joined Civil department after 1-Aug-2001

SELECT P.* FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid
WHERE D.DepartmentName = 'Civil'
AND P.JoiningDate > '2001-08-01';


-- 10. Display all person's name with department whose joining date difference with current date is more than 25 years

SELECT P.PersonName, D.DepartmentName FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid
WHERE DATEDIFF(year,P.JoiningDate, GETDATE())>25 

select * from PERSON



-- 11. Find department-wise person counts

SELECT D.DepartmentName, COUNT(P.PERSONID) AS Person_Count FROM Department D
LEFT JOIN Person P
ON D.departmentid = P.departmentid
GROUP BY D.DepartmentName;


-- 12. Give department-wise maximum and minimum salary with department name

SELECT D.DepartmentName,
       MAX(P.Salary) AS Maximum_Salary,
       MIN(P.Salary) AS Minimum_Salary
FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid
GROUP BY D.DepartmentName;


-- 13. Find city-wise total, average, maximum and minimum salary

SELECT P.City,
       SUM(P.Salary) AS Total_Salary,
       AVG(P.Salary) AS Average_Salary,
       MAX(P.Salary) AS Maximum_Salary,
       MIN(P.Salary) AS Minimum_Salary
FROM Person P
GROUP BY P.City;


-- 14. Find the average salary of persons who belong to Ahmedabad city
SELECT AVG(P.Salary) AS Average_Salary
FROM Person P
WHERE P.City = 'Ahmedabad';


-- 15. Produce output:
-- <PersonName> lives in <City> and works in <DepartmentName> Department.

SELECT P.PersonName + ' lives in ' + P.City +
       ' and works in ' + D.DepartmentName + ' Department.'
       AS Person_Details
FROM Person P
INNER JOIN Department D
ON P.departmentid = D.departmentid;
