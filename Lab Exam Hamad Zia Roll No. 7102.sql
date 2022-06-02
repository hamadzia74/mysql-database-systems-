--creating database
create database banking_enterprise
--creating Branch table
create table BRANCH(
Branch_Code nvarchar(10),
Branch_Name nvarchar(40) primary key,
Branch_City varchar(20),
assets nvarchar(20)
)
select * from BRANCH
--inserting values in the attributes
insert into BRANCH(Branch_Code,Branch_Name,Branch_City,assets)
values('BR-101','Dubai Islamic Bank One','Faisalabad','AS-1')
insert into BRANCH(Branch_Code,Branch_Name,Branch_City,assets)
values('BR-102','Dubai Islamic Bank Two','Islamabad','AS-2')
insert into BRANCH(Branch_Code,Branch_Name,Branch_City,assets)
values('BR-103','Dubai Islamic Bank Three','Lahore','AS-3')
insert into BRANCH(Branch_Code,Branch_Name,Branch_City,assets)
values('BR-104','Dubai Islamic Bank Four','Multan','AS-4')
insert into BRANCH(Branch_Code,Branch_Name,Branch_City,assets)
values('BR-105','Dubai Islamic Bank Five','Peshawar','AS-5')
insert into BRANCH(Branch_Code,Branch_Name,Branch_City,assets)
values('BR-106','Dubai Islamic Bank Six','Kohat','AS-6')
insert into BRANCH(Branch_Code,Branch_Name,Branch_City,assets)
values('BR-107','Dubai Islamic Bank Seven','Karachi','AS-7')

--Creating table of Account
create table ACCOUNT(
AccNo nvarchar(8) primary key,
Balance int,
Branch_Name nvarchar(40) foreign key references BRANCH(Branch_Name)
)
select * from ACCOUNT
insert into ACCOUNT(AccNo,Balance,Branch_Name)
values('AC-201',30000,'Dubai Islamic Bank One')
insert into ACCOUNT(AccNo,Balance,Branch_Name)
values('AC-202',70000,'Dubai Islamic Bank Two')
insert into ACCOUNT(AccNo,Balance,Branch_Name)
values('AC-203',40000,'Dubai Islamic Bank Three')
insert into ACCOUNT(AccNo,Balance,Branch_Name)
values('AC-204',50000,'Dubai Islamic Bank Four')
insert into ACCOUNT(AccNo,Balance,Branch_Name)
values('AC-205',80000,'Dubai Islamic Bank Five')
insert into ACCOUNT(AccNo,Balance,Branch_Name)
values('AC-206',20000,'Dubai Islamic Bank Six')
insert into ACCOUNT(AccNo,Balance,Branch_Name)
values('AC-207',90000,'Dubai Islamic Bank Seven')

--Creating table of Depositor
create table DEPOSITOR(
Customer_name varchar(20) primary key,
AccNo nvarchar(8) foreign key references ACCOUNT(AccNo)
)
select * from DEPOSITOR
insert into DEPOSITOR(Customer_name,AccNo)
values('Hamad Zia','AC-202')
insert into DEPOSITOR(Customer_name,AccNo)
values('Omer Zaman','AC-201')
insert into DEPOSITOR(Customer_name,AccNo)
values('Huzaifa Zahoor','AC-203')
insert into DEPOSITOR(Customer_name,AccNo)
values('Subhan Cheema','AC-204')
insert into DEPOSITOR(Customer_name,AccNo)
values('Anwer Khan','AC-205')
insert into DEPOSITOR(Customer_name,AccNo)
values('Kamil','AC-206')
insert into DEPOSITOR(Customer_name,AccNo)
values('Shah Fahad','AC-207')

--Creating table of Customer
create table CUSTOMER(
customer_name varchar(20),
customer_street nvarchar(40),
customer_city varchar(20),
AccNo nvarchar(8) foreign key references ACCOUNT(AccNo)
)
select * from CUSTOMER
insert into CUSTOMER(customer_name,customer_street,customer_city,AccNo)
values('Abishae Amir','12 Wale Jinnah Rd','Karachi','AC-201')
insert into CUSTOMER(customer_name,customer_street,customer_city,AccNo)
values('Naveed Ashraf','15 Blue Zone Express Rd','Islamabad','AC-202')
insert into CUSTOMER(customer_name,customer_street,customer_city,AccNo)
values('Qamar Zaman','st 20 Kindi Rd','Gujranwala','AC-203')
insert into CUSTOMER(customer_name,customer_street,customer_city,AccNo)
values('Qamar Abbass','20 st Stadium Rd','Sargodha','AC-204')
insert into CUSTOMER(customer_name,customer_street,customer_city,AccNo)
values('Shahab Khan','st 11 BRT Rd','Peshawar','AC-205')
insert into CUSTOMER(customer_name,customer_street,customer_city,AccNo)
values('Zaheer Khan','9 st canal Rd','Lahore','AC-206')
insert into CUSTOMER(customer_name,customer_street,customer_city,AccNo)
values('Zain','12 Kan Gulberg Rd','Multan','AC-207')

--Creating table of loan
create table LOAN(
Loan_Number nvarchar(20) primary key,
Amount int,
AccNo nvarchar(8) foreign key references ACCOUNT(AccNo),
Branch_Name nvarchar(40) foreign key references BRANCH(Branch_Name)
)
select * from LOAN
insert into LOAN(Loan_Number,Amount,Branch_Name,AccNo)
values('LN-10',45000,'Dubai Islamic Bank One','AC-201')
insert into LOAN(Loan_Number,Amount,Branch_Name,AccNo)
values('LN-11',55000,'Dubai Islamic Bank Two','AC-202')
insert into LOAN(Loan_Number,Amount,Branch_Name,AccNo)
values('LN-12',65000,'Dubai Islamic Bank Three','AC-203')
insert into LOAN(Loan_Number,Amount,Branch_Name,AccNo)
values('LN-13',75000,'Dubai Islamic Bank Four','AC-204')
insert into LOAN(Loan_Number,Amount,Branch_Name,AccNo)
values('LN-14',85000,'Dubai Islamic Bank Five','AC-205')
insert into LOAN(Loan_Number,Amount,Branch_Name,AccNo)
values('LN-15',15000,'Dubai Islamic Bank Six','AC-206')
insert into LOAN(Loan_Number,Amount,Branch_Name,AccNo)
values('LN-16',95000,'Dubai Islamic Bank Seven','AC-207')

--Creating table of Borrower
create table BORROWER(
Customer_Name varchar(20),
AccNo nvarchar(8) foreign key references ACCOUNT(AccNo),
Loan_Number nvarchar(20) foreign key references LOAN(Loan_Number)
)
select * from BORROWER
insert into BORROWER(Customer_Name,AccNo,Loan_Number)
values('Zia','AC-201','LN-10')
insert into BORROWER(Customer_Name,AccNo,Loan_Number)
values('Omer','AC-202','LN-11')
insert into BORROWER(Customer_Name,AccNo,Loan_Number)
values('Waqas','AC-203','LN-12')
insert into BORROWER(Customer_Name,AccNo,Loan_Number)
values('Osama','AC-204','LN-13')
insert into BORROWER(Customer_Name,AccNo,Loan_Number)
values('Saad','AC-205','LN-14')
insert into BORROWER(Customer_Name,AccNo,Loan_Number)
values('Umer Shahid','AC-206','LN-15')
insert into BORROWER(Customer_Name,AccNo,Loan_Number)
values('Hussnain','AC-207','LN-16')

-- Queries

-- 02
alter table ACCOUNT
add Joining_Date date;
select * from ACCOUNT

-- 03
alter table ACCOUNT
add constraint Joining_Date
default '7/9/2019' for Joining_Date;

--04
update ACCOUNT set Joining_Date='7/9/2019'
select * from ACCOUNT

--05
select * from DEPOSITOR inner join LOAN on DEPOSITOR.AccNo=LOAN.AccNo