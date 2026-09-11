--Part – A:
--1. Combine information from Student_info and Result table using cross join (Cartesian product).

SELECT *FROM Student_info
CROSS JOIN Result;

--2. Perform inner join on Student_info and Result tables.

SELECT *FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno;

--3. Perform the left outer join on Student_info and Result tables.

SELECT *FROM Student_info
LEFT OUTER JOIN Result
ON Student_info.Rno = Result.Rno

--4. Perform the right outer join on Student_info and Result tables.

SELECT * FROM Student_info
RIGHT OUTER JOIN Result
ON Student_info.Rno = Result.Rno;

--5. Perform the full outer join on Student_info and Result tables.

SELECT * FROM Student_info
FULL OUTER JOIN Result
ON Student_info.Rno = Result.Rno;

--6. Display Rno, Name, Branch and SPI of all Student_infos.

SELECT Student_info.Rno, Student_info.Name, Student_info.Branch, Result.SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno;

--7. Display Rno, Name, Branch and SPI of CE branch Student_infos only.

SELECT Student_info.Rno, Student_info.Name, Student_info.Branch, Result.SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
WHERE Student_info.Branch = 'CE';

--8. Display Rno, Name, Branch and SPI of Student_infos other than EC branch.

SELECT Student_info.Rno, Student_info.Name, Student_info.Branch, Result.SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
WHERE Student_info.Branch <> 'EC';

--9. Display Rno, Name and SPI of Student_infos whose SPI is greater than 8.

SELECT Student_info.Rno, Student_info.Name, Result.SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
WHERE Result.SPI > 8;

--10. Display Rno, Name and Branch of Student_infos whose SPI is less than 8.

SELECT Student_info.Rno, Student_info.Name, Student_info.Branch FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
WHERE Result.SPI < 8;

--11. Display average result of each branch.

SELECT Student_info.Branch, AVG(Result.SPI) AS Average_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch;

--12. Display average result of CE and ME branch.

SELECT Student_info.Branch, AVG(Result.SPI) AS Average_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
WHERE Student_info.Branch IN ('CE', 'ME')
GROUP BY Student_info.Branch;

--13. Display maximum and minimum SPI of each branch.

SELECT Student_info.Branch,
       MAX(Result.SPI) AS Maximum_SPI,
       MIN(Result.SPI) AS Minimum_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch;

--14. Display branch-wise Student_info count in descending order.

SELECT Branch, COUNT(*) AS Student_info_Count
FROM Student_info
GROUP BY Branch
ORDER BY Student_info_Count DESC;

--15. Display branch-wise total SPI of Student_infos.

SELECT Student_info.Branch, SUM(Result.SPI) AS Total_SPI
FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch;


--Part – B:

--16. Display branch-wise number of Student_infos having SPI greater than 8.

SELECT Student_info.Branch, COUNT(*) AS Student_info_Count FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
WHERE Result.SPI > 8
GROUP BY Student_info.Branch;

--17. Display branch-wise number of Student_infos having SPI less than 8.

SELECT Student_info.Branch, COUNT(*) AS Student_info_Count FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
WHERE Result.SPI < 8
GROUP BY Student_info.Branch;

--18. Display branch-wise average SPI greater than 7.

SELECT Student_info.Branch, AVG(Result.SPI) AS Average_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch
HAVING AVG(Result.SPI) > 7;

--19. Display branches having more than 1 Student_infos.

SELECT Branch, COUNT(*) AS Student_info_Count FROM Student_info
GROUP BY Branch
HAVING COUNT(*) > 1;

--20. Display branches where maximum SPI is greater than 9

SELECT Student_info.Branch, MAX(Result.SPI) AS Maximum_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch
HAVING MAX(Result.SPI) > 9;


--Part – C:

--21. Display average result of each branch and sort them in ascending order by SPI.

SELECT Student_info.Branch, AVG(Result.SPI) AS Average_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch
ORDER BY Average_SPI ASC;

--22. Display highest SPI from each branch and sort them in descending order.

SELECT Student_info.Branch, MAX(Result.SPI) AS Highest_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch
ORDER BY Highest_SPI DESC;


--23. Display average result of each branch and sort them in ascending order by SPI.

SELECT Student_info.Branch, AVG(Result.SPI) AS Average_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch
ORDER BY Average_SPI ASC;

--24. Display highest SPI from each branch and sort them in descending order.

SELECT Student_info.Branch, MAX(Result.SPI) AS Highest_SPI FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch
ORDER BY Highest_SPI DESC;

--25. Display branches where difference between max and min SPI is greater than 1.

SELECT Student_info.Branch,
       MAX(Result.SPI) AS Maximum_SPI,
       MIN(Result.SPI) AS Minimum_SPI,
       MAX(Result.SPI) - MIN(Result.SPI) AS Difference  FROM Student_info
INNER JOIN Result
ON Student_info.Rno = Result.Rno
GROUP BY Student_info.Branch
HAVING MAX(Result.SPI) - MIN(Result.SPI) > 1;
