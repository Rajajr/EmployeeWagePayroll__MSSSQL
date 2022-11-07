--UC1-create a datatbase
create database Payroll_Service;

--UC2-Create table
create table EmployeePayroll(ID int identity(1,1)primary key,Empname varchar(200),Salary bigint,Startdate date)

--UC3-Insert Records
insert into EmployeePayroll(Empname,Salary,Salary) values('Raj',20000,'2020-02-03');
insert into EmployeePayroll(Empname,Salary,Salary) values('Ramya',22000,'2020-01-01');
insert into EmployeePayroll(Empname,Salary,Salary) values('Sam',12000,'2020-01-02');
insert into EmployeePayroll(Empname,Salary,Salary) values('Daniel',18000,'2020-01-05');
insert into EmployeePayroll(Empname,Salary,Salary) values('Sara',25000,'2020-01-06');

--UC4-Retrive All Records
select *from EmployeePayroll

--UC5-Retrive Particular Records
select *from EmployeePayroll WHERE Startdate Between CAST('2020-01-03' as date) And Getdate();

--UC6-Update Add Gender
alter table EmployeePayroll add Gender char(1)
update EmployeePayroll set Gender='M' Where Empname='Raj'
update EmployeePayroll set Gender='F' Where Empname='Ramya'
update EmployeePayroll set Gender='M' Where Empname='Sam'
update EmployeePayroll set Gender='M' Where Empname='Daniel'
update EmployeePayroll set Gender='M' Where Empname='Sara'

--UC7-Ability To Find Sum,Average,Minimum,Maximum and Number Of Male and Female
select Sum(salary)as Total_SUM from EmployeePayroll where Gender='M' group by Gender
select Avg(salary)as AvgSalary from EmployeePayroll where Gender='M' group by Gender
select min(salary)as MinSalary from EmployeePayroll where Gender='M' group by Gender
select max(salary)as MaxSalary from EmployeePayroll where Gender='M' group by Gender
select count(*)as totalrecord from EmployeePayroll group by Gender

--UC8-Ability To Extend Employee Payroll Data To Store
alter table EmployeePayroll add Department varchar(200),Address varchar (200),Phone_Number bigint
