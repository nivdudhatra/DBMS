select * from student


--1. Update SPI of all students from 7.00 to 8.00

UPDATE STUDENT
SET SPI = 8.00
WHERE SPI = 7.00


--2. Change city of HETVI from RAJKOT to AHMEDABAD

UPDATE STUDENT
SET CITY = 'AHMEDABAD'
WHERE SNAME = 'HETVI' AND CITY = 'RAJKOT';


--3. Update SPI of DEEP to 9.20 and city to VADODARA.

UPDATE STUDENT
SET SPI = 9.20,
    CITY = 'VADODARA'
WHERE SNAME = 'DEEP';


--4. Update SPI of DHARMIK to 8.50.

update student
set spi = 8.50
where sname = 'Dharmik'


--5. Update branch name from COMPUTER to IT.

update student
set branch = 'IT'
where branch = 'COMPUTER'


--6. Update branch of RAJ to AUTOMOBILE.


update student
set branch = 'AUTOMOBILE'
where sname = 'Raj'


--7. Update SPI to 7.50 where STDID is between 103 and 107.

update student
set spi = 7.50
where stdid between 103 and 107


--8. Update city of PARAG to MUMBAI.

update student
set city = 'MUMBAI'
where sname = 'Parag'

--9. Update SPI of RIYA to 6.00.

update student
set spi = 6.00
where sname = 'RIYA'


--10. Update SPI of SMAIR to 7.20 and branch to ELECTRICAL.

UPDATE STUDENT
SET SPI = 7.20,
    branch = 'ELECTRICAL'
WHERE SNAME = 'SMAIR';

--11. Give 10% increment in SPI.

UPDATE STUDENT
SET SPI = SPI * 1.10;

--12. Increase SPI by 20% for all students. 

UPDATE STUDENT
SET SPI = SPI * 1.20;

--13. Increase SPI by 0.50 in all records

UPDATE STUDENT
SET SPI = SPI + 0.50;

--14. Update branch to 'EC' and SPI to 8.00 and city to Surat where SNAME is KRUNAL. 

UPDATE STUDENT
SET SPI = 8.00,
    branch = 'EC',
    city = 'Surat'
WHERE SNAME = 'Krunal';

--15. Update city to 'RAJKOT' and SPI to 7.00 where branch is CIVIL and stdid is less than 105.

UPDATE STUDENT
SET SPI = 7.00,
    city = 'Rajkot'
WHERE stdid < 105 and branch = 'CIVIL'

--16. Update SPI of student with stdid 110 to NULL. 

UPDATE STUDENT
SET SPI = null
WHERE stdid = 110


--17. Update branch of VISHAL to NULL.

UPDATE STUDENT
SET branch = null
WHERE sname = 'Vishal'

--18. Display names of students whose SPI is NULL. 

select sname from student
where spi is null

--19. Display students who have branch assigned.

SELECT * FROM STUDENT
WHERE BRANCH IS NOT NULL;

-- 20. Update student with STDID 108 to name DARSHAN, branch COMPUTER, and SPI 8.50


UPDATE STUDENT
SET SNAME = 'DARSHAN',
    BRANCH = 'COMPUTER',
    SPI = 8.50
WHERE STDID = 108;


--21. Update city to SURAT where SPI is less than 7.00.

UPDATE STUDENT
SET city = 'Surat'
WHERE spi < 7.00

--22. Update city to NULL and branch to MECHANICAL where stdid is 109.

UPDATE STUDENT
SET city = null,
    BRANCH = 'MECHANICAL'
WHERE STDID = 109