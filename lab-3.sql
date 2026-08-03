--Retrieve all data from table STUDENT.

select * from student


--Display Student Name and City from STUDENT.

select sname,city from student

--Display student details of all students who belongs to COMPUTER branch.

select * from student
where branch = 'computer'

--Display names of students whose ID is less than 105 from STUDENT table.

select * from student
where stdid <105

--Give Student Name, City and SPI of student whose SPI is greater than 6.50.

select sname,city,spi from student
where spi >6.50


--Give name of Student whose branch is COMPUTER and SPI is greater than 8.00.


select sname from student
where spi >8.00 and branch = 'computer'

--Give names of students whose ID is greater than 103 and belongs to Rajkot city

select sname from student
where stdid>103 and city = 'rajkot'

--Display names of students who belong to either ‘RAJKOT’ or ‘SURAT’ city (USE OR & IN)

select sname from student
where  city = 'rajkot' or city = 'surat'
--where city in ('rajkot','surat')


--Display names of students with branch whose SPI is greater than 8.0 and ID is less than 105.

select sname,branch from student
where  spi >8.00 and stdid<105

-- Find all students whose SPI is greater than or equal to 7.0 and less than or equal to 9.0 (USE AND & BETWEEN).

select * from student
--where spi >=7.0 and spi <=9.0
where spi between 7 and 9



-- Find all students who do not belong to ‘COMPUTER’ branch.

select * from student
where  branch != 'computer'

-- Display Student ID, Name & SPI of students who belong to ‘COMPUTER’, ‘CIVIL’ or ‘CHEMICAL’ branch and ID is less than 104.



select stdid,sname,spi from student
WHERE Branch IN ('COMPUTER', 'CIVIL', 'CHEMICAL') 
  AND stdid < 104




--Display all student IDs and names who do not belong to ‘COMPUTER’ or ‘CIVIL’ branch (USE NOT IN)

select stdid,sname from student
where branch not in ('COMPUTER','CIVIL')

--Display all student names other than ‘DEEP’ from STUDENT table (USE NOT, <>, !=).

select sname from student
--WHERE NOT (sname = 'DEEP')
WHERE sname <> 'DEEP'
--WHERE sname != 'DEEP'


-- Display student names whose branch is not available (NULL) in STUDENT table.

select stdid,sname,spi from student
WHERE Branch is null

-- Retrieve all unique branches name from STUDENT table.

SELECT DISTINCT branch FROM STUDENT


-- Retrieve first 50% records from STUDENT table.

SELECT TOP 50 PERCENT * FROM STUDENT


--Retrieve first five student IDs from STUDENT table.

SELECT TOP 5  stdid FROM STUDENT



--B


-- Display all the details of first five students from STUDENT table.

SELECT TOP 5  * FROM STUDENT


-- Display all the details of first three students whose SPI is greater than 8.0

SELECT TOP 3  * FROM STUDENT
WHERE spi>8.0



--Display Student ID, Name of first five students whose branch does not belong to ‘COMPUTER’ branch.


select top 5 stdid,sname,branch from student
where branch not in ('COMPUTER')

--Select all details with student IDs not in the range 105 to 109.





--Select all records from STUDENT where SPI is greater than 7.0 and less than or equal to 9.0, and student ID is between 102 and 108.

SELECT   * FROM STUDENT
where spi between 7 and 9 and  stdid between 102 and 108



--c

-- Display all details of students who have SPI more than 8.5 without using * from STUDENT table.

SELECT  stdid,sname,city,spi,branch FROM STUDENT
WHERE spi>8.5

-- Retrieve names of students whose city is ‘RAJKOT’ and SPI is less than 8.00.


SELECT  sname FROM STUDENT
WHERE spi<8.0 AND city = 'RAJKOT'


--Retrieve records from STUDENT table where SPI is greater than 8.0 and student ID is less than 105.

SELECT  * FROM STUDENT
WHERE spi>8.0 AND stdid<105

-- Retrieve records from STUDENT table where SPI is greater than 7.5 and student ID is between 100 and 110 and city is ‘RAJKOT’ or ‘SURAT’.


SELECT  * FROM STUDENT
WHERE spi>7.5 AND stdid between 100 and 110 and city in ('rajkot','surat')

--Display details of students who belong to ‘CIVIL’ or ‘MECHANICAL’ branch and SPI is greater than 8.0.

select stdid,sname from student
where branch  in ('MECHANICAL','CIVIL') and spi>8.0