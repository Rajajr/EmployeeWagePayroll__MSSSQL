--UC1-create a datatbase
create database Payroll_Service;
--UC2-Create table
create table EmployeePayroll(ID int identity(1,1)primary key,Empname varchar(200),Salary bigint,Startdate date)

