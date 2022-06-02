create database Employee12; /*Creating Database*/
create table Employees12(               /*Creating Table No 1*/
EMPNO int,
ENAME varchar(20),
JOB varchar(20),
MGR	varchar(20),
HIREDATE date,
SAL int,
COMM int,
DEPTNO int,
primary key(empno)
)
select * from employees12
insert into Employees12(EMPNO, ENAME, JOB, HIREDATE, SAL, DEPTNO)
values(5,'KING','PRESIDENT','11/17/1981',5000,10)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(4,'BLAKE','MANAGER',7839,'05/01/1981',2850,30)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(8,'CLARK','MANAGER',7839,'06/09/1981',2450,40)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7,'JONES','MANAGER',7839,'04/02/1981',2975,50)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(9,'MARTIN','SALESMAN',7698,'09/28/1981',1250,1400,60)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(11,'ALLEN','SALESMAN',7698,'02/20/1981',1600,300,75)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(10,'TURNER','SALESMAN',7698,'09/08/1981',1500,0,76)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(0,'JAMES','CLERK',7698,'12/03/1981',950,77)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(12,'WARD','SALESMAN',7698,'02/22/1981',1250,500,90)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(32,'FORD','ANALYST',7566,'12/03/1981',3000,100)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(20,'SMITH','CLERK',7902,'12/17/1980',800,105)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(18,'SCOTT','ANALYST',7566,'12/09/1982',3000,110)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(16,'ADAMS','CLERK',7788,'01/12/1983',1100,115)
insert into Employees12(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(19,'MILLER','CLERK',7782,'01/23/1982',1300,120)





--Creating another table

create table salesrepss12(                /*Creating Table*/
EMPL_NUM int,
NAME varchar(20),
AGE int,
REP_OFFICE int,
TITLE varchar(20),
HIRE_DATE date,
MANAGER int,
QUOTA nvarchar(30),
SALES nvarchar(30),
EMAIL nvarchar(30),
rollno int identity(10,1)
)
select * from salesrepss12
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(105,'Bill Adams',37,13,'Sales Rep','2/12/1988',104,'$350,000.00','$367,911.00','bill@yahoo.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(109,'Mary Jones',31,11,'Sales Rep','10/12/1989',106,'$300,000.00','$392,725.00','mary@yahoo.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(102,'Sue Smith',48,21,'Sales Rep','12/10/1986',108,'$350,000.00','$474,050.00;','sue@google.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE, QUOTA, SALES, EMAIL)
values(106,'Sam Clark',52,11,'VP Sales','01/14/1988','$275,000.00','$299,912.00','sam@facebook.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(104,'Bob Smith',33,12,'Sales Mgr','05/19/1987',106,'$200,000.00','$142,594.00','bob@facebook.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(101,'Dan Roberts',45,12,'Sales Rep','10/20/1986',104,'$300,000.00','$305,673.00','dan@facebook.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, TITLE, HIRE_DATE,  MANAGER, SALES, EMAIL)
values(110,'Tom Snyder',41,'Sales Rep','01/13/1990',101,'$75,985.00','tom@yahoo.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(108,'Larry Fitch',62,21,'Sales Mgr','10/12/1989',106,'$350,000.00','$361,865.00','larry@google.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(103,'Paul Cruz',29,22,'Sales Rep','11/14/1988',108,'$27,000.00','$26,775.00','aul@yahoo.com')
insert into salesrepss12(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(107,'Nancy Angell',49,22,'Sales Rep','11/14/1988',108,'$300,000.00','$186,042.00','nancy@google.com')


select EMPL_NUM,NAME,TITLE,QUOTA,SALES from salesrepss12         -- Selecting the EMPL_NUM , NAME, TITLE, QUOTA and SALES from salesReps1 table.

select *from salesrepss12 where HIRE_DATE>'1-feb-1988' and HIRE_DATE<'1-nov-1990'      -- Selecting All Employees that have Hire_Date in between Feb-1988 to Nov-1990.

select *from salesrepss12 where MANAGER in(104,108,101)  --Selecting all Employees that have Manager ID 104,108,101 without using OR Operator. 

select *from salesrepss12 where NAME like('%ch')     --Selecting All Employees that have ‘CH’ as Last Character in Name.

select EMPL_NUM,NAME,AGE,TITLE from salesrepss12 where NAME like('_a%') --Selecting Empl_Num, Name, Age, and Title of employees that have ‘A’ as Second Character in their name from SalesReps table

select *from salesrepss12 where EMAIL like('%yahoo.com%') --Selectng All Employees that have Email Address on Yahoo mail Server.

select 'STATEMENT'=CONCAT(EMPL_NUM,' Working as a ',TITLE,' SINCE FROM ',HIRE_DATE,' WITH ',QUOTA,' WITH ',NAME) FROM salesrepss12
/*Create a Statement from given table as 
“Empl_Num Working as a Job Title Since form Hire_Date with Quota” with field name Employee Statement. */

select 'REMAINING SALES'=CONCAT('REMAINING SALES OF EMPLOYEE  ',SALES) FROM salesrepss12  --Select the remaining Sales of employee after Quota Achievement. Label remaining field as ‘Remaining Sales’.

select *from salesrepss12 order by 'EMPL_NUM' ASC
select *from salesrepss12 order by 'EMPL_NUM' DESC
--Showing all employees and an order (Ascending, Descending) with EmpI_num.


select count(*)from salesrepss12, Employees12       --Count both table's field
select * from salesrepss12, Employees12       --Cartiesian Product  
select *FROM salesrepss12 s, Employees12 e
where s.NAME=e.ENAME

select sum(age) as "Total Age" from salesrepss12, Employees12 