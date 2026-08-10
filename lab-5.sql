select * from DEPOSIT

--1. Add column state VARCHAR(20)


ALTER TABLE DEPOSIT
ADD state VARCHAR(20)

--2. Add two more columns city varchar(20) and pincode int

ALTER TABLE DEPOSIT
ADD city VARCHAR(20), pincode int


--3. Change the size of cname column from varchar(50) to varchar(35).

ALTER TABLE DEPOSIT
alter column  cname VARCHAR(35) 


--4. Change the data type of amount from decimal to int.

ALTER TABLE DEPOSIT
alter column  amount int 


--5. Delete column city from the DEPOSIT table.

ALTER TABLE DEPOSIT
drop column  city

--6. Rename column actno to ano.

EXEC sp_rename 'deposit.actno', 'ano', 'COLUMN'


--7. Rename column bname to branch_name.

EXEC sp_rename 'deposit.bname', 'branch_name', 'COLUMN'

--8. Rename table DEPOSIT to DEPOSIT_DETAIL.

EXEC sp_rename 'deposit', 'DEPOSIT_DETAIL'


--9. Add column ifsc_code varchar(15).

ALTER TABLE DEPOSIT_DETAIL
ADD ifsc_code VARCHAR(15)

--10. Change the size of bname column from varchar(50) to varchar(30).

ALTER TABLE DEPOSIT_DETAIL
alter column  branch_name VARCHAR(35) 


-- Part - B

--11. Rename column adate to aopendate.

EXEC sp_rename 'DEPOSIT_DETAIL.adate', 'aopendate', 'COLUMN'

--12. Delete column aopendate from DEPOSIT_DETAIL table.

ALTER TABLE DEPOSIT_DETAIL
drop column  aopendate

--13. Rename column cname to customer_name.

EXEC sp_rename 'DEPOSIT_DETAIL.cname', 'customer_name', 'COLUMN'

--14. Add column country varchar(20).


ALTER TABLE DEPOSIT_DETAIL
ADD country VARCHAR(20)

--15. Add column account_type varchar(15).


ALTER TABLE DEPOSIT_DETAIL
ADD account_type VARCHAR(15)

--Part – C:
--16. Change data type of pincode from int to bigint.

ALTER TABLE DEPOSIT_DETAIL
alter column  pincode bigint

--17. Delete column account_type.

ALTER TABLE DEPOSIT_DETAIL
drop column  account_type

--18. Rename column amount to balance.

EXEC sp_rename 'DEPOSIT_DETAIL.amount', 'balance', 'COLUMN'

--19. Add column status varchar(10).

ALTER TABLE DEPOSIT_DETAIL
ADD satus VARCHAR(10)

--20. Change table name deposit_detail to bank_deposit.

EXEC sp_rename 'DEPOSIT_DETAIL', 'bank_deposit'

--21. Delete all the records having amount less than or equal to 3000.

DELETE FROM bank_deposit WHERE balance <= 3000

--22. Delete all the accounts of ‘BEDI’ branch customer


DELETE FROM bank_deposit WHERE branch_name = 'BEDI'

--23. Delete all the accounts having account number greater than 102 and less than 109.



DELETE FROM bank_deposit WHERE ano < 109 and ano >102

--24. Delete all the accounts whose branch is ‘BEDI’ or ‘MADHAPAR’.


DELETE FROM bank_deposit WHERE branch_name = 'BEDI' or   branch_name = 'MADHAPAR'

--25. Delete all the accounts details where amount is 8000 and account open after 1-1-2025;

DELETE FROM bank_deposit WHERE balance = 8000

select * from bank_deposit

--26. Delete all the accounts whose account branch is NULL.


DELETE FROM bank_deposit WHERE branch_name is null

--27. Delete all the accounts details where amount is 7000 and name is CHARMI and branch is SHITAL PARK.

DELETE FROM bank_deposit WHERE balance = 7000 and customer_name = 'charmi'  and branch_name = 'shital park'

--28. Delete all the remaining records using DELETE command. 

delete from bank_deposit

--29. Delete all the records of DEPOSIT table. (Use TRUNCATE)

TRUNCATE TABLE bank_deposit

--30. Remove DEPOSIT table. (Use DROP)

DROP TABLE bank_deposit

-- Student table

--31. Delete all the students whose stdid is greater than 105.

DELETE FROM STUDENT WHERE stdid>105

--32. Delete the records whose branch is NULL and sname is not NULL.

DELETE FROM STUDENT WHERE branch IS NULL AND sname IS NOT NULL

--33. Delete the records whose SPI is less than 9 and city is RAJKOT.

DELETE FROM STUDENT WHERE spi<9 AND city='RAJKOT'

--34. Delete the records whose branch name is not empty.

DELETE FROM STUDENT WHERE branch IS NOT NULL

--35. Delete all the records of STUDENT table. (Use TRUNCATE)

TRUNCATE TABLE STUDENT