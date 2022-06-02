create database Complete_queries /*Creating Database*/
create table Information(               /*Creating Table*/
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
select * from Information
insert into Information(EMPNO, ENAME, JOB, HIREDATE, SAL, DEPTNO)
values(7839,'KING','PRESIDENT','11/17/1981',5000,10)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7698,'BLAKE','MANAGER',7839,'05/01/1981',2850,30)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7782,'CLARK','MANAGER',7839,'06/09/1981',2450,10)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7566,'JONES','MANAGER',7839,'04/02/1981',2975,20)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7654,'MARTIN','SALESMAN',7698,'09/28/1981',1250,1400,30)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7499,'ALLEN','SALESMAN',7698,'02/20/1981',1600,300,30)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7844,'TURNER','SALESMAN',7698,'09/08/1981',1500,0,30)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7900,'JAMES','CLERK',7698,'12/03/1981',950,30)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7521,'WARD','SALESMAN',7698,'02/22/1981',1250,500,30)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7902,'FORD','ANALYST',7566,'12/03/1981',3000,20)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7369,'SMITH','CLERK',7902,'12/17/1980',800,20)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7788,'SCOTT','ANALYST',7566,'12/09/1982',3000,20)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7876,'ADAMS','CLERK',7788,'01/12/1983',1100,20)
insert into Information(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7934,'MILLER','CLERK',7782,'01/23/1982',1300,10)


select EMPNO,ENAME,MGR from Information /*Selecting some record (EMPNO, ENMAE, MGR) all the employees that working as a ‘Clerk’.*/
where JOB='CLERK'
 

select * from Information
where DEPTNO=10 or DEPTNO=20    --Selecting all employees that have DeptID (10, 20).
 

select max(SAL) from Information   --Find the Employee that has maximum and
select min(SAL) from Information   -- minimum salary.
 
select * from Information                     --Selecting the employee that have designation (Analyst ,Salesman).
where JOB='ANALYST' or JOB='SALESMAN'  
 

select Sum(SAL) from Information        --Select the total amount that organization pay to their employees and
select AVG(SAL) from Information         -- find out average salary of an employee.
 
select avg=(SAL/100)*20+SAL from Information          -- Add the 20% increment in the salary of those employees that have salary below 1100.
where SAL<1100 
 

select *,SAL * 12 as "Annual salary" from Information   --Selecting the annual salary all employees and
select sum(SAL*12) as "Annual salary" from Information                      --count total annual expenses of organization as Employees Salary.
 

select count(COMM) as "employee that don’t have COMM" from Information                     --Selecting the employee that don’t have COMM and count them.

select * from Information order by EMPNO asc              --Showing all employees and an order (Ascending, Descending) with EmpID.
 
select * from Information order by EMPNO desc
 

select sum(SAL)+sum(25000) as "President Salary After Bonus" from Information       --give an annual Bonus of 50% of their salary to employees that have designation ‘President’.
 where JOB='PRESIDENT'                                                              --Find the total Salary after bonus.
 select count(EMPNO)-count(COMM) from Information
select ENAME from Information where COMM is null




create table Employee_Address( --creating second table
branchNo int primary key,
street nvarchar(20),
city varchar(10),
postcode nvarchar(10),
EMPNO int foreign key references Information(EMPNO)
)
select * from Employee_Address
insert into Employee_Address(branchNo,street,city,postcode,EMPNO)
values('1007','16 Argyll St','Aberdeen','AB23SU',7698)
insert into Employee_Address(branchNo,street,city,postcode,EMPNO)
values('1003','163 Main St','Glasgo','G119QX',7782)
insert into Employee_Address(branchNo,street,city,postcode,EMPNO)
values('1004','32 Manse Rd','Bristol','B5991NZ',7900)
insert into Employee_Address(branchNo,street,city,postcode,EMPNO)
values('1002','56 Clover Dr','London','NW106EU',7876)
insert into Employee_Address(branchNo,street,city,postcode,EMPNO)
values('1005','22 Deer Rd','London','SW14EH',7369)


select 'STATEMENT'=CONCAT(EMPNO,' Working as a ',JOB,' SINCE FROM ',HIREDATE) FROM Information

select count(*)from Information, Employee_Address      --Count both table's field
select * from Information, Employee_Address       --Cartiesian Product  
select sum(SAL) as "Total Salary" from Information