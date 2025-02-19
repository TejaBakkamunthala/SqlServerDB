--CREATE DATABASE EMPLOYEE;
USE EMPLOYEE
--CREATE TABLE EMP(EMPID INT,EMPNAME CHAR(10),EMPSALARY MONEY,AGE INT)

--SP_HELP EMP

--ALTER TABLE EMP ALTER COLUMN EMPNAME  VARCHAR(50)

--ALTER TABLE EMP ADD  EMPDEPARTMENT VARCHAR(50);
-- TO CHANGE COLUMN NAME
--SP_RENAME 'EMP.EMPSALARY' ,'EMPSAL';
--TO CHANGE TABLE NAME

--SP_RENAME 'EMP','EMPLOYEEE';

--ALTER TABLE EMP DROP COLUMN AGE;

--ALTER TABLE EMP ADD EMPAGE INT;

--SELECT * FROM EMPLOYEEE;

--TRUNCATE TABLE EMPLOYEEE WHERE EMPID=1;

--TRUNCATE TABLE EMPLOYEEE;

CREATE TABLE STUDENT (STDID INT,SNAME VARCHAR(40),SFEE DECIMAL(6,2),SAGE TINYINT);

INSERT INTO STUDENT VALUES(1,'TEJA',2000,22);
INSERT INTO STUDENT VALUES(2,'SUNIL',3000,23);
INSERT INTO STUDENT VALUES(3,'BHANU',4000,24);


INSERT INTO STUDENT(STDID,SNAME,SAGE) VALUES(4,'SURYA',23);
INSERT INTO STUDENT(STDID,SNAME,SFEE) VALUES(5,'MACHA',2000);
--WITH OUT INTO KEYWORD
INSERT  STUDENT VALUES(6,'BHARGAV',4000,24);
INSERT  STUDENT(STDID,SNAME,SFEE) VALUES(7,'MACHA',2000);



SELECT * FROM STUDENT;

DELETE STUDENT WHERE STDID=2;

UPDATE STUDENT SET SNAME='SUNIL' WHERE STDID=3;

UPDATE STUDENT SET SNAME='BHARATH',SFEE=123,SAGE=12 WHERE STDID=5;

UPDATE STUDENT SET SAGE=30 WHERE SAGE IS NULL; 


SELECT * FROM STUDENT;

SELECT STDID,SNAME,SAGE FROM STUDENT;

SELECT * FROM STUDENT WHERE STDID=1;

SELECT STDID,SNAME,SAGE FROM STUDENT WHERE STDID=1;

--SELECT * FROM EMPLOYEEE; 

--DROP TABLE EMPLOYEEE;
--CREATE TABLE EMPLOYE(EID INT IDENTITY,ENAME VARCHAR(20),SALARY MONEY);


CREATE TABLE EMPLOYE(EID INT IDENTITY(2,2),ENAME VARCHAR(20),SALARY MONEY);

INSERT INTO EMPLOYE VALUES('TEJA',1000);
INSERT INTO EMPLOYE VALUES('SUNIL',2000);
INSERT INTO EMPLOYE VALUES('BHANU',3000);
INSERT INTO EMPLOYE(ENAME) VALUES('GOPI');

INSERT INTO EMPLOYE VALUES('NARAYANA',5000),('THARUN',6000);

SELECT * FROM EMPLOYE;

DROP TABLE EMPLOYE;

/*SET IDENTITY_INSERT EMPLOYE ON
INSERT INTO EMPLOYE(EID,ENAME,SALARY) VALUES(13,'SUDHAKHAR',300);

SET IDENTITY_INSERT EMPLOYE ON
INSERT INTO EMPLOYE(EID,ENAME,SALARY) VALUES(14,'SUDHAKHAR',300);

SET IDENTITY_INSERT EMPLOYE ON
INSERT INTO EMPLOYE(EID,ENAME,SALARY) VALUES(15,'MADHUKAR',300);



SELECT * FROM EMPLOYE;

*/


CREATE TABLE EMP_HYD(EID INT,ENAME VARCHAR(20),ESALARY MONEY);

CREATE TABLE EMP_CHENNAI(EID INT,ENAME VARCHAR,ESALARY MONEY);

ALTER TABLE EMP_CHENNAI ALTER COLUMN ENAME VARCHAR(50);

INSERT INTO EMP_HYD VALUES(1,'TEJA',100);
INSERT INTO EMP_HYD VALUES(2,'SUNIL',200);
INSERT INTO EMP_HYD VALUES(3,'BHANU',300);
INSERT INTO EMP_HYD VALUES(4,'THARUN',400);
INSERT INTO EMP_HYD VALUES(5,'SURYA',500);
INSERT INTO EMP_HYD VALUES(6,'HARISH',600);
INSERT INTO EMP_HYD VALUES(7,'MAHESH',700);


INSERT INTO EMP_CHENNAI  VALUES(1,'TEJA',100);
INSERT INTO EMP_CHENNAI VALUES(2,'SUNILL',200);
INSERT INTO EMP_CHENNAI VALUES(3,'BHANUU',300);
INSERT INTO EMP_CHENNAI VALUES(4,'THARUNN',400);
INSERT INTO EMP_CHENNAI VALUES(5,'SURYAA',500);
INSERT INTO EMP_CHENNAI VALUES(6,'HARISH',600);

SELECT * FROM EMP_HYD
UNION 
SELECT * FROM EMP_CHENNAI

SELECT * FROM EMP_HYD
UNIONALL
SELECT * FROM EMP_CHENNAI

SELECT *FROM EMP_HYD
INTERSECT 
SELECT * FROM EMP_CHENNAI


SELECT *FROM EMP_HYD
EXCEPT
SELECT * FROM EMP_CHENNAI






SELECT * FROM EMP_HYD

SELECT *FROM EMP_CHENNAI;

CREATE TABLE DEPARTMENT(DEPTNO INT PRIMARY KEY,DNAME VARCHAR(30),LOCATION VARCHAR(40));

INSERT INTO DEPARTMENT VALUES(1,'IT','HYD');
INSERT INTO DEPARTMENT VALUES(2,'NON-IT','HYD');
INSERT INTO DEPARTMENT VALUES(3,'HR','PUNE');
INSERT INTO DEPARTMENT VALUES(4,'MUMBAI','ADMIN');



USE EMPLOYEE;

SELECT * FROM DEPARTMENT;


CREATE TABLE EMP (EMPID INT,ENAME VARCHAR(30),SALARY MONEY,DEPTNO INT FOREIGN KEY REFERENCES DEPARTMENT(DEPTNO) );



INSERT INTO EMP VALUES(1,'TEJA',1000,1);
INSERT INTO EMP VALUES(2,'SAI',2000,1);
INSERT INTO EMP VALUES(3,'NEERAJ',3000,2);
INSERT INTO EMP VALUES(4,'SAIRAM',40000,2);
INSERT INTO EMP VALUES(5,'HARI',5000,3);
INSERT INTO EMP VALUES(6,'RAM',6000,4);
INSERT INTO EMP VALUES(7,'HARISH',5000,3);
INSERT INTO EMP VALUES(8,'RAMESH',6000,4);




SELECT * FROM EMP;