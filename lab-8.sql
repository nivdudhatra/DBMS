-- Q1. Display the Highest, Lowest Salary and Label the columns Maximum, Minimum respectively.

SELECT MAX(Salary) AS Maximum, MIN(Salary) AS Minimum  FROM EMPLOYEE;

-- Q2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal, respectively.

SELECT SUM(Salary) AS Total_Sal, AVG(Salary) AS Average_Sal  FROM EMPLOYEE;

-- Q3. Find total number of employees of EMPLOYEE table.

SELECT COUNT(*) AS Total_Employees  FROM EMPLOYEE;

-- Q4. Find highest salary from Rajkot city.

SELECT MAX(Salary) AS Highest_Salary  FROM EMPLOYEE 
WHERE City = 'Rajkot';

-- Q5. Give maximum salary from IT department.

SELECT MAX(Salary) AS Max_Salary  FROM EMPLOYEE 
WHERE Department = 'IT';

-- Q6. Count employee department is HR.

SELECT COUNT(*) AS HR_Count FROM EMPLOYEE 
WHERE Department = 'HR';

-- Q7. Display average salary of Admin department.

SELECT AVG(Salary) AS Avg_Salary FROM EMPLOYEE 
WHERE Department = 'Admin';

-- Q8. Display total salary of HR department.

SELECT SUM(Salary) AS Total_Salary FROM EMPLOYEE 
WHERE Department = 'HR';

-- Q9. Count total number of cities of employee without duplication.

SELECT COUNT(DISTINCT City) AS Unique_Cities FROM EMPLOYEE;

-- Q10. Count unique departments.

SELECT COUNT(DISTINCT Department) AS Unique_Departments FROM EMPLOYEE;

-- Q11. Display minimum salary of employee who belongs to Ahmedabad.

SELECT MIN(Salary) AS Min_Salary FROM EMPLOYEE 
WHERE City = 'Ahmedabad';

-- Q12. Find city wise highest salary.

SELECT City, MAX(Salary) AS Highest_Salary FROM EMPLOYEE 
GROUP BY City;

-- Q13. Find department wise lowest salary.

SELECT Department, MIN(Salary) AS Lowest_Salary FROM EMPLOYEE 
GROUP BY Department;

-- Q14. Display minimum salary in each city.

SELECT City, MIN(Salary) AS Minimum_Salary FROM EMPLOYEE 
GROUP BY City;

-- Q15. Display average salary of employees from Surat.

SELECT AVG(Salary) AS Avg_Salary FROM EMPLOYEE 
WHERE City = 'Surat';

-- Q16. Display total salary of female employees.

SELECT SUM(Salary) AS Total_Female_Salary  FROM EMPLOYEE 
WHERE Gender = 'FEMALE';

-- Q17. Count number of male employees.

SELECT COUNT(*) AS Male_Count FROM EMPLOYEE 
WHERE Gender = 'MALE';

-- Q18. Display city with the total number of employees belonging to each city.

SELECT City, COUNT(*) AS Total_Employees FROM EMPLOYEE 
GROUP BY City;

-- Q19. Count number of employees in each city where gender is MALE.

SELECT City, COUNT(*) AS Male_Employees FROM EMPLOYEE 
WHERE Gender = 'MALE' 
GROUP BY City;

-- Q20. Display maximum salary in each department where city is not Ahmedabad.

SELECT Department, MAX(Salary) AS Max_Salary FROM EMPLOYEE 
WHERE City <> 'Ahmedabad' 
GROUP BY Department;


--Part-B

-- Q21. Display minimum salary in each city where gender is FEMALE.

SELECT City, MIN(Salary) AS Min_Salary FROM EMPLOYEE 
WHERE Gender = 'FEMALE' 
GROUP BY City;

-- Q22. Give total salary of each department of EMPLOYEE table.

SELECT Department, SUM(Salary) AS Total_Salary FROM EMPLOYEE 
GROUP BY Department;

-- Q23. Give average salary of each department of EMPLOYEE table without displaying the respective department name.

SELECT AVG(Salary) AS Avg_Salary FROM EMPLOYEE 
GROUP BY Department;

-- Q24. Count the number of employees for each department in every city.

SELECT City, Department, COUNT(*) AS Employee_Count FROM EMPLOYEE 
GROUP BY City, Department;

-- Q25. Calculate the total salary distributed to male and female employees.

SELECT Gender, SUM(Salary) AS Total_Distributed_Salary FROM EMPLOYEE 
GROUP BY Gender;


-- Part-C

-- Q26. Give city wise maximum and minimum salary of female employees.

SELECT City, MAX(Salary) AS Max_Salary, MIN(Salary) AS Min_Salary FROM EMPLOYEE 
WHERE Gender = 'FEMALE' 
GROUP BY City;

-- Q27. Calculate department, city, and gender wise average salary.

SELECT Department, City, Gender, AVG(Salary) AS Avg_Salary FROM EMPLOYEE 
GROUP BY Department, City, Gender;

-- Q28. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.

SELECT MAX(Salary) - MIN(Salary) AS DIFFERENCE FROM EMPLOYEE;

-- Q29. Display sum of salaries of department wise where department name consist 5 letters.

SELECT Department, SUM(Salary) AS Total_Salary FROM EMPLOYEE 
WHERE department like '_____' 
GROUP BY Department;

-- Q30. Find the Maximum salary department & city wise in which city name starts with ‘R’.

SELECT Department, City, MAX(Salary) AS Max_Salary FROM EMPLOYEE 
WHERE City LIKE 'R%' 
GROUP BY Department, City;