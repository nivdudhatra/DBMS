--1. Copy all records from DEPOSIT where AMOUNT > 3000 into HIGH_AMOUNT.

select * into HIGH_AMOUNT from deposit 
where amount > 3000

--2. Copy only CNAME and AMOUNT from DEPOSIT where BNAME = 'MAVDI' into MAVDI_CUSTOMERS.

select cname ,amount into MAVDI_CUSTOMERS from deposit 
where bname = 'Mavdi'

--3. Copy records of DEPOSIT where ADATE > '2025-01-01' into RECENT_DEPOSITS.

select * into RECENT_DEPOSITS from deposit 
where adate > '2025-01-01'

--4. Copy distinct BNAME from DEPOSIT into BRANCH_LIST.

select distinct bname into BRANCH_LIST from deposit 


--5. Copy top 5 records from DEPOSIT into TOP_DEPOSITS.

select top 5 * into TOP_DEPOSITS from deposit 

--6. Copy records where AMOUNT between 2000 and 6000 into MID_RANGE.

select * into MID_RANGE from deposit 
where amount between 2000 and 6000

--7. Copy distinct branch names from DEPOSIT into UNIQUE_BRANCH.

select distinct bname into UNIQUE_BRANCH from deposit 

--8. Copy records with NULL branch into NO_BRANCH_ASSIGNED.

select * into NO_BRANCH_ASSIGNED from deposit
where bname is null

--9. Copy all records and rename AMOUNT as BALANCE into DEPOSIT_COPY.

SELECT ACTNO, CNAME, BNAME, AMOUNT AS BALANCE, ADATE INTO DEPOSIT_COPY FROM DEPOSIT

--10. Copy records where BNAME in ('MAVDI','BEDI') into SELECTED_BRANCH. ś

SELECT * INTO SELECTED_BRANCH FROM DEPOSIT
WHERE BNAME IN ('MAVDI', 'BEDI')

--Part-B

--11. Create a new table STUDENT_BACKUP from STUDENT without copying any data.

select * into STUDENT_BACKUP from STUDENT 

--12. Copy SNAME and CITY where BRANCH = 'COMPUTER' into CS_STUDENTS.

select sname,city into CS_STUDENTS from student 
where branch = 'computer'

--13. Copy top 3 students based on SPI into TOPPER_LIST.

select top 3 spi into TOPPER_LIST from student 


--14. Copy distinct CITY from STUDENT into CITY_LIST.

select distinct city into CITY_LIST from student 

--15. Copy records where STDID between 103 and 108 into MID_STUDENTS. 

SELECT * INTO MID_STUDENTS FROM STUDENT
WHERE STDID BETWEEN 103 AND 108

--16. Copy records with NULL branch into NULL_BRANCH_STUDENTS.

SELECT * INTO NULL_BRANCH_STUDENTS FROM STUDENT
WHERE branch is null

--17. Copy all STUDENT records and rename SPI as PERFORMANCE into STUDENT_COPY.

SELECT stdid, sname, city, spi AS PERFORMANCE, branch INTO STUDENT_COPY FROM STUDENT

--18. Copy records where CITY in ('RAJKOT','SURAT') into CITY_WISE.

SELECT * INTO CITY_WISE FROM STUDENT
WHERE CITY in ('RAJKOT','SURAT')

--19. Copy students where BRANCH <> 'CIVIL' into NON_CIVIL_STUDENTS.

SELECT * INTO NON_CIVIL_STUDENTS FROM STUDENT
where BRANCH <> 'CIVIL'

--20. Copy selected columns (SNAME, CITY) from STUDENT table into a new table

SELECT SNAME,city INTO new_table FROM STUDENT
