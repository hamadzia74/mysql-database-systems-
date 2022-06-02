create database Clients_info_Second; /*Creating Database*/
create table Employee(               /*Creating Table*/
EMPNO int,
ENAME varchar(20),
JOB varchar(20),
MGR	varchar(20),
HIREDATE date,
SAL int,
COMM int,
DEPTNO int,
)
select * from Employee
insert into Employee(EMPNO, ENAME, JOB, HIREDATE, SAL, DEPTNO)
values(7839,'KING','PRESIDENT','11/17/1981',5000,10)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7698,'BLAKE','MANAGER',7839,'05/01/1981',2850,30)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7782,'CLARK','MANAGER',7839,'06/09/1981',2450,10)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7566,'JONES','MANAGER',7839,'04/02/1981',2975,20)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7654,'MARTIN','SALESMAN',7698,'09/28/1981',1250,1400,30)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7499,'ALLEN','SALESMAN',7698,'02/20/1981',1600,300,30)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7844,'TURNER','SALESMAN',7698,'09/08/1981',1500,0,30)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7900,'JAMES','CLERK',7698,'12/03/1981',950,30)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, COMM, DEPTNO)
values(7521,'WARD','SALESMAN',7698,'02/22/1981',1250,500,30)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7902,'FORD','ANALYST',7566,'12/03/1981',3000,20)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7369,'SMITH','CLERK',7902,'12/17/1980',800,20)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7788,'SCOTT','ANALYST',7566,'12/09/1982',3000,20)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7876,'ADAMS','CLERK',7788,'01/12/1983',1100,20)
insert into Employee(EMPNO, ENAME, JOB, MGR, HIREDATE, SAL, DEPTNO)
values(7934,'MILLER','CLERK',7782,'01/23/1982',1300,10)


select EMPNO,ENAME,MGR from Employee /*Selecting some record (EMPNO, ENMAE, MGR) all the employees that working as a ‘Clerk’.*/
where JOB='CLERK'
 

select * from Employee
where DEPTNO=10 or DEPTNO=20    --Selecting all employees that have DeptID (10, 20).
 

 select max(SAL) from Employee   --Find the Employee that has maximum and
  select min(SAL) from Employee   -- minimum salary.
 
  select * from Employee                      --Selecting the employee that have                                                  designation (Analyst ,Salesman).
  where JOB='ANALYST' or JOB='SALESMAN'  
 

  select Sum(SAL) from Employee        --Select the total amount that organization pay to    their employees and
  select AVG(SAL) from Employee         -- find out average salary of an employee.
 
  select avg=(SAL/100)*20+SAL from Employee          -- Add the 20% increment in the                              salary of those employees that have salary below 1100.
  where SAL<1100 
 

  select *,SAL * 12 as "Annual salary" from Employee    --Selecting the annual salary all employees and
  select sum(SAL*12) as "Annual salary" from Employee                      --count total annual expenses of organization as Employees Salary.
 

  select count(COMM) as "employee that don’t have COMM" from Employee                     --Selecting the employee that don’t have COMM and count them.

select * from Employee order by EMPNO asc              --Showing all employees and an order (Ascending, Descending) with EmpID.
 
select * from Employee order by EMPNO desc
 

select sum(SAL)+sum(25000) as "President Salary After Bonus" from Employee          --give an annual Bonus of 50% of their salary to employees that have designation ‘President’.
 where JOB='PRESIDENT'                                                              --Find the total Salary after bonus.
 select count(EMPNO)-count(COMM) from Employee
 select ENAME from Employee where COMM is null