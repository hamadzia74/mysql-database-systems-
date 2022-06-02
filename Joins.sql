create database Teacher
create table Teacher1(
Name varchar(30),
ID int,
CNIC varchar(30),
Adress varchar(30),
Designation varchar(30),
Gender varchar(30),
)
select *from Teacher1 
insert into Teacher1 values('Abdullah',235468,'333303-8515560-9','Faisalabad','CSMS','Male')
insert into Teacher1 values('Abdul-Reman',235869,'333303-1256787-1','Faisalabad','M.Phil','Male')
insert into Teacher1 values('Adnan',235470,'333303-8732907-3','Lahore','MSSE','Male')
insert into Teacher1 values('Abdul-Qadeer',235471,'333303-8556873-9','Faisalabad','CSMS','Male')
insert into Teacher1 values('Sohaib-naz',235472,'333303-8515560-8','Sahiwal','MS-CHE','Male')
insert into Teacher1 values('Ahmad-Aftab',235473,'33303-3000983-1','Multan','MS-IT','Male')
insert into Teacher1 values('Saqib-Ameer',235474,'333303-851540-9','Faisalabad','MS-Physics','Male')
insert into Teacher1 values('Abdullah',235475,'333303-3126560-4','Gojra','MS-ENG','Male')
insert into Teacher1 values('Kashif-Haneef',235476,'333303-6798560-0','Toba','MS-Math','Male')
insert into Teacher1 values('Umer-Farooq',235477,'333303-6798320-6','Multan','M.Phil','Male')
insert into Teacher1 values('Khuram-Shehzad',235478,'333303-851670-7','Faisalabad','CSMS','Male')
insert into Teacher1 values('Aftab-ur-Rehman',235479,'333303-1295560-4','Lahore','CSMS','Male')



create table Student1(
Name varchar(30),
Rollno int,
Adress varchar(30),
CNIC varchar(30),
Gender varchar(30),
)
select *from Student1
insert into Student1 values('Talha',8050,'chak-289','33303-8515560-5','Male')
insert into Student1 values('Rehan',8051,'chak-290','33303-5468299-5','Male')
insert into Student1 values('Ahmad',8052,'chak-291','33303-1276345-7','Male')
insert into Student1 values('Arslan',8053,'chak-292','33303-3245745-6','Male')
insert into Student1 values('Ali',8054,'chak-293','33303-3456745-7','Male')
insert into Student1 values('Aamir',8055,'chak-284','33303-2389001-4','Male')
insert into Student1 values('Abdullah',8056,'chak-285','33303-1567845-2','Male')
insert into Student1 values('Talha',8057,'chak-296','33303-1276345-7','Male')
insert into Student1 values('Umar',8058,'chak-297','33303-3476809-0','Male')
insert into Student1 values('Talha',8059,'chak-298','33303-3000983-1','Male')
insert into Student1 values('Naveed',8060,'chak-299','33303-3000989-1','Male')
insert into Student1 values('Rashid',8061,'chak-300','33303-1276345-7','Male')
insert into Student1 values('Qadir',8062,'chak-289','33303-4578356-5','Male')

--select * from DEPOSITOR1 inner join LOAN1 on DEPOSITOR1.AccNo=LOAN1.AccNo

--returns matched rows from two table and unmatched from left table
SELECT * FROM Teacher1 LEFT OUTER join Student1 on Teacher1.CNIC=Student1.CNIC

--returns matched rows from two table and unmatched from right table
SELECT * FROM Teacher1 right OUTER join Student1 on Teacher1.CNIC=Student1.CNIC

SELECT * FROM Teacher1 FULL OUTER join Student1 on Teacher1.CNIC=Student1.CNIC

--inner join with equi 
select * from teacher1 inner join student1 on Teacher1.CNIC=Student1.CNIC

--non equi inner join
select * from teacher1  inner join student1 on Teacher1.name<=Student1.name

--natural inner join
select CNIC from teacher1  inner join student1 on Teacher1.name<=Student1.name
select *from student1,teacher1

--Cross-Join
select * from Teacher1 cross join Student1