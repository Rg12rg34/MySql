#WELCOME TO  Employee Payroll Problem

# UC1_Ability to create a payroll service database

create database payroll_services;
use payroll_services;
select database();

# UC2_Ability to create a employee payroll table in the payroll service database to manage employee payrolls

create table employee_payroll(id int unsigned not null auto_increment, name varchar(150) not null, salary double, start date not null, primary key (id));

# UC3_Ability to create employee payroll data in the payroll service database as part of CRUD Operation

insert into employee_payroll (name, salary, start) VALUES ('Charlie', 2000000.00, '2018-03-12'),('Terisa', 1500000.00, '2019-06-01'), ('Mike', 1800000.00, '2014-01-15');

#UC4 - Retrieve All Data

select * from employee_payroll;

#UC5 - retrieve salary data for a particular employee

select Salary from employee_payroll where name ='Bill';
select * from employee_payroll where StartDate between cast('2021-01-01' as Date ) AND DATE(NOW()) ;

#UC6 - add Gender to Employee Payroll Table and Update the Rows

alter table employee_payroll add gender char(1) after salary;
update employee_payroll set gender = 'M' where name in('Charlie','Mike');
update employee_payroll set gender = 'M' where name = 'Terisa';
select * from employee_payroll;

#UC7 - Find Sum Avg Min Max and Count from table

select sum(Salary) from employee_payroll where Gender = 'F' group by Gender;
select sum(Salary) from employee_payroll where Gender = 'M' group by Gender;

select avg(Salary) from employee_payroll where Gender = 'F' group by Gender;
select avg(Salary) from employee_payroll where Gender = 'M' group by Gender;

select min(Salary) from employee_payroll where Gender = 'F' group by Gender;
select min(Salary) from employee_payroll where Gender = 'M' group by Gender;

select max(Salary) from employee_payroll where Gender = 'F' group by Gender;
select max(Salary) from employee_payroll where Gender = 'M' group by Gender;

select count(Salary) from employee_payroll where Gender = 'F' group by Gender;
select count(Salary) from employee_payroll where Gender = 'M' group by Gender;