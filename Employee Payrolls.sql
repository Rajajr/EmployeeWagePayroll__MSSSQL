--UC1-create a datatbase
create database Payroll_Service;

--UC2-Create table
create table EmployeePayroll(ID int identity(1,1)primary key,Empname varchar(200),Salary bigint,Startdate date)

--UC3-Insert Records
insert into EmployeePayroll(Empname,Salary,Salary) values('Raj',20000,'2020-02-03');
insert into EmployeePayroll(Empname,Salary,Salary) values('Ramya',20000,'2020-01-01');
insert into EmployeePayroll(Empname,Salary,Salary) values('Sam',20000,'2020-01-02');
insert into EmployeePayroll(Empname,Salary,Salary) values('Daniel',20000,'2020-01-05');
insert into EmployeePayroll(Empname,Salary,Salary) values('Sara',20000,'2020-01-06');

