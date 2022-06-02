create database sales_record          /*Creating Database*/
create table salesreps(                /*Creating Table*/
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
)
select * from salesreps
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(105,'Bill Adams',37,13,'Sales Rep','2/12/1988',104,'$350,000.00','$367,911.00','bill@yahoo.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(109,'Mary Jones',31,11,'Sales Rep','10/12/1989',106,'$300,000.00','$392,725.00','mary@yahoo.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(102,'Sue Smith',48,21,'Sales Rep','12/10/1986',108,'$350,000.00','$474,050.00;','sue@google.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE, QUOTA, SALES, EMAIL)
values(106,'Sam Clark',52,11,'VP Sales','01/14/1988','$275,000.00','$299,912.00','sam@facebook.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(104,'Bob Smith',33,12,'Sales Mgr','05/19/1987',106,'$200,000.00','$142,594.00','bob@facebook.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(101,'Dan Roberts',45,12,'Sales Rep','10/20/1986',104,'$300,000.00','$305,673.00','dan@facebook.com')
insert into salesreps(EMPL_NUM, NAME, AGE, TITLE, HIRE_DATE,  MANAGER, SALES, EMAIL)
values(110,'Tom Snyder',41,'Sales Rep','01/13/1990',101,'$75,985.00','tom@yahoo.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(108,'Larry Fitch',62,21,'Sales Mgr','10/12/1989',106,'$350,000.00','$361,865.00','larry@google.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(103,'Paul Cruz',29,22,'Sales Rep','11/14/1988',108,'$27,000.00','$26,775.00','aul@yahoo.com')
insert into salesreps(EMPL_NUM, NAME, AGE, REP_OFFICE, TITLE, HIRE_DATE,  MANAGER, QUOTA, SALES, EMAIL)
values(107,'Nancy Angell',49,22,'Sales Rep','11/14/1988',108,'$300,000.00','$186,042.00','nancy@google.com')


select EMPL_NUM,NAME,TITLE,QUOTA,SALES from salesreps            -- Selecting the EMPL_NUM , NAME, TITLE, QUOTA and SALES from salesReps1 table.

select *from salesreps where HIRE_DATE>'1-feb-1988' and HIRE_DATE<'1-nov-1990'      -- Selecting All Employees that have Hire_Date in between Feb-1988 to Nov-1990.

select *from salesreps where MANAGER in(104,108,101)  --Selecting all Employees that have Manager ID 104,108,101 without using OR Operator. 

select *from salesreps where NAME like('%ch')     --Selecting All Employees that have ‘CH’ as Last Character in Name.

select EMPL_NUM,NAME,AGE,TITLE from salesreps where NAME like('_a%') --Selecting Empl_Num, Name, Age, and Title of employees that have ‘A’ as Second Character in their name from SalesReps table

select *from salesreps where EMAIL like('%yahoo.com%') --Selectng All Employees that have Email Address on Yahoo mail Server.

select 'STATEMENT'=CONCAT(EMPL_NUM,' Working as a ',TITLE,' SINCE FROM ',HIRE_DATE,' WITH ',QUOTA,' WITH ',NAME) FROM salesreps
/*Create a Statement from given table as 
“Empl_Num Working as a Job Title Since form Hire_Date with Quota” with field name Employee Statement. */

select 'REMAINING SALES'=CONCAT('REMAINING SALES OF EMPLOYEE  ',SALES) FROM salesreps  --Select the remaining Sales of employee after Quota Achievement. Label remaining field as ‘Remaining Sales’.

select *from salesreps order by 'EMPL_NUM' ASC
select *from salesreps order by 'EMPL_NUM' DESC
--Showing all employees and an order (Ascending, Descending) with EmpI_num.
