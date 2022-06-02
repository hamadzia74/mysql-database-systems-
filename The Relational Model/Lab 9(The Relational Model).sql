create database basetable
create table branch(
branchNo nvarchar(8) primary key,
street nvarchar(20),
city varchar(10),
postcode nvarchar(10)
)
select * from branch
insert into branch(branchNo,street,city,postcode)
values('B005','22 Deer Rd','London','SW14EH')
insert into branch(branchNo,street,city,postcode)
values('B007','16 Argyll St','Aberdeen','AB23SU')
insert into branch(branchNo,street,city,postcode)
values('B003','163 Main St','Glasgo','G119QX')
insert into branch(branchNo,street,city,postcode)
values('B004','32 Manse Rd','Bristol','B5991NZ')
insert into branch(branchNo,street,city,postcode)
values('B002','56 Clover Dr','London','NW106EU')

create table staffthree(
staffNo nvarchar(8) primary key,
fName varchar(8),
lName varchar(8),
position varchar(20),
sex varchar(1),
DOB date,
salary int,
branchNo nvarchar(8) foreign key references branch(branchNo)
)
select * from staffthree
insert into staffthree(staffNo,fName,lName,position,sex,DOB,salary,branchNo)
values('SL21','John','White','Manager','M','10-1-45',30000,'B005')
insert into staffthree(staffNo,fName,lName,position,sex,DOB,salary,branchNo)
values('SG37','Ann','Beech','Assist.','F','11-10-60',12000,'B003')
insert into staffthree(staffNo,fName,lName,position,sex,DOB,salary,branchNo)
values('SG14','David','Ford','Supervisor','M','03-24-58',18000,'B003')
insert into staffthree(staffNo,fName,lName,position,sex,DOB,salary,branchNo)
values('SA9','Mary','Howe','Assistant','F','02-19-70',9000,'B007')
insert into staffthree(staffNo,fName,lName,position,sex,DOB,salary,branchNo)
values('SG5','Susan','Brand','Manager','F','01-03-40',24000,'B003')
insert into staffthree(staffNo,fName,lName,position,sex,DOB,salary,branchNo)
values('SL41','Julie','Lee','Assistant','F','06-13-65',9000,'B005')

create table PropertyForRent(
propertyNo nvarchar(8) primary key,
street nvarchar(20),
city varchar(10),
postcode nvarchar(10),
[type] varchar(10),
rooms int,
rent int,
ownerNo nvarchar(8),
staffNo nvarchar(8) foreign key references staffthree(staffNo),
branchNo nvarchar(8) foreign key references branch(branchNo)
)
select * from PropertyForRent
insert into PropertyForRent(propertyNo,street,city,postcode,[type],rooms,rent,ownerNo,staffNo,branchNo)
values('PA14','16 Holhead','Aberdeen','AB755U','House',6,650,'CO46','SA9','B007')
insert into PropertyForRent(propertyNo,street,city,postcode,[type],rooms,rent,ownerNo,staffNo,branchNo)
values('PL94','6 Argyll St','London','NW2','Flat',4,400,'CO87','SL41','B005')
insert into PropertyForRent(propertyNo,street,city,postcode,[type],rooms,rent,ownerNo,branchNo)
values('PG4','6 Lawrence St','Glasgow','G119QX','Flat',3,350,'CO40','B003')
insert into PropertyForRent(propertyNo,street,city,postcode,[type],rooms,rent,ownerNo,staffNo,branchNo)
values('PG36','2 Manor Rd','Glasgow','G324QX','flat',3,375,'CO93','SG37','B003')
insert into PropertyForRent(propertyNo,street,city,postcode,[type],rooms,rent,ownerNo,staffNo,branchNo)
values('PG21','18 Dale Rd','Glasgow','G12','House',5,600,'CO87','SG37','B003')
insert into PropertyForRent(propertyNo,street,city,postcode,[type],rooms,rent,ownerNo,staffNo,branchNo)
values('PG16','5 Novar Dr','Glasgow','G129AX','Flat',4,450,'CO93','SG14','B003')

create table Clientone(
clientNo nvarchar(8),
fName varchar(10),
lName varchar(10),
telNo nvarchar(30),
prefType varchar(6),
maxRent int,
primary key(clientNo)
)
select * from Clientone
insert into Clientone(clientNo,fName,lName,telNo,prefType,maxRent)
values('CR76','John','Kay','0207-774-5632','Flat',425)
insert into Clientone(clientNo,fName,lName,telNo,prefType,maxRent)
values('CR56','Aline','Strewart','0141-848-1825','Flat',350)
insert into Clientone(clientNo,fName,lName,telNo,prefType,maxRent)
values('CR74','Mike','Ritchie','01475-392178','House',750)
insert into Clientone(clientNo,fName,lName,telNo,prefType,maxRent)
values('CR62','Mary','Tregear','01224-196720','Flat',600)

create table PrivateOwner(
ownerNo nvarchar(8),
fName varchar(5),
lName varchar(8),
[address] nvarchar(40),
telNo nvarchar(20)
)
select * from PrivateOwner
insert into PrivateOwner(ownerNo,fName,lName,[address],telNo)
values('CO46','Joe','Keogh','2 Fergus Dr, Aberdeen AB27SX','01224-861212')
insert into PrivateOwner(ownerNo,fName,lName,[address],telNo)
values('CO87','Carol','Farrel','6 Achray St, Glasgow G329DX','0141-357-7419')
insert into PrivateOwner(ownerNo,fName,lName,[address],telNo)
values('CO40','Tina','Murphy','63 Well St, Glasgow G42','0141-943-1728')
insert into PrivateOwner(ownerNo,fName,lName,[address],telNo)
values('CO93','Tony','Shaw','12 Park P1, Glasgow G40QR','0141-225-7025')

create table Viewing(
viewDate date,
comment varchar(20)

)
select * from branch,staffthree