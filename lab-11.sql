--Part – A:

--1. Write a query to display the current date & time. Label the column Today_Date.

select GETDATE() as Today_Date

--2. Write a query to find new date after 365 day with reference to today.

select DATEADD(day,365, GETDATE()) as New_date

--3. Display the current date in a format that appears as may 5 1994 12:00AM.

select FORMAT(getdate(),'MMM d yyyy hh:mm') as formate

--4. Display the current date in a format that appears as 03 Jan 1995.

select FORMAT(getdate(),'dd MMM yyyy') as formate

--5. Display the current date in a format that appears as Jan 04, 96.

select FORMAT(getdate(),'MMM dd, yyyy') as formate

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.

select  DATEDIFF(Month,'31-dec-08' , '31-Mar-09') as diffrence

--7. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.

select  DATEDIFF(HOUR,'25-Jan-12 7:00' , '26-Jan-12 10:30') as diffrence

-- 8. Extract Day, Month, Year

SELECT DAY('2016-05-12') AS Day,MONTH('2016-05-12') AS Month, YEAR('2016-05-12') AS Year;

-- 9. Add 5 years to current date

SELECT DATEADD(YEAR, 5, GETDATE()) AS New_Date;

-- 10. Subtract 2 months from current date

SELECT DATEADD(MONTH, -2, GETDATE()) AS New_Date;

-- 11. Extract month using DATENAME() and DATEPART()

SELECT DATENAME(MONTH, GETDATE()) AS Month_Name;
SELECT DATEPART(MONTH, GETDATE()) AS Month_Number;

-- 12. Last date of current month

SELECT EOMONTH(GETDATE()) AS Last_Date;

-- 13. Calculate age in years and months

SELECT DATEDIFF(YEAR, '2005-06-15', GETDATE())AS Age_Years,
       DATEDIFF(MONTH, '2005-06-15', GETDATE())  AS Age_Months;


--Part - B

-- 14. Display all records where account date is in the year 2025

SELECT * FROM DEPOSIT
WHERE EXTRACT(YEAR FROM ADATE) = 2025;

-- 15. Display all records where account date is in the month of March

SELECT * FROM DEPOSIT
WHERE EXTRACT(MONTH FROM ADATE) = 3;

-- 16. Display records where account date is after '01-Jan-2025'

SELECT * FROM DEPOSIT
WHERE ADATE > '01-Jan-2025', 'DD-Mon-YYYY';


-- 17. Display records where account date is before '01-Jan-2025'

SELECT * FROM DEPOSIT
WHERE ADATE < '01-Jan-2025','DD-Mon-YYYY';


-- 18. Display records where day of account date is 1

SELECT * FROM DEPOSIT 
WHERE DAY(ADATE) = 1;

-- 19. Display records where month of account date is greater than 6

SELECT * FROM DEPOSIT
WHERE MONTH (ADATE) > 6;

-- 20. Display records where year of account date is 2026

SELECT * FROM DEPOSIT
WHERE YEAR (ADATE) = 2026;


-- 21. Display number of accounts opened in each year

SELECT YEAR (ADATE) AS YEAR,COUNT(*) AS NO_OF_ACCOUNTS
FROM DEPOSIT
GROUP BY YEAR (ADATE)
ORDER BY YEAR;

-- 22. Display number of accounts opened in each month

SELECT MONTH (ADATE) AS MONTH,COUNT(*) AS NO_OF_ACCOUNTS
FROM DEPOSIT
GROUP BY MONTH (ADATE)
ORDER BY MONTH;

-- 23. Display maximum amount deposited in each year

SELECT YEAR (ADATE) AS YEAR,
       MAX(AMOUNT) AS MAX_AMOUNT
FROM DEPOSIT
GROUP BY YEAR (ADATE)
ORDER BY YEAR;


-- PART – C

-- 24. Display minimum amount deposited in each month
SELECT MONTH (ADATE) AS MONTH,
       MIN(AMOUNT) AS MIN_AMOUNT
FROM DEPOSIT
GROUP BY MONTH (ADATE)
ORDER BY MONTH;

-- 25. Display total amount deposited in each year
SELECT YEAR (ADATE) AS YEAR,
       SUM(AMOUNT) AS TOTAL_AMOUNT
FROM DEPOSIT
GROUP BY YEAR (ADATE)
ORDER BY YEAR;

-- 26. Display records where account date is between '01-Mar-2025' and '31-Dec-2025'
SELECT *
FROM DEPOSIT
WHERE  [ADATE] BETWEEN '2025-03-01' AND '2025-12-31';


-- 27. Display records where account date is in the current year

SELECT * FROM DEPOSIT
WHERE YEAR (ADATE) = YEAR (GETDATE());

-- 28. Display difference in days between today's date and account date

SELECT *,DATEDIFF(DAY, ADATE, GETDATE()) AS DIFFERENCE_IN_DAYS
FROM DEPOSIT;