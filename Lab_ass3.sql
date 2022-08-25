use akash;

#1 creating a employee table
create table employee(
Employee_ID numeric(6),
Last_name varchar(25),
Job_ID varchar(10),
Salary numeric(8,2),
Comm_pct numeric(4,2),
Mgr_ID numeric(6),
Department_ID numeric(4)
);

#2 inserting values
insert into employee values
(198, 'connell', 'SH_CLERK', 2600, 2.5, 124, 50),
(199, 'Grant', 'SH_CLERK', 2600, 2.2, 124, 50),
(200, 'Whalen', 'AD_ASST', 4400, 1.3, 101, 10),
(201, 'Hartstein', 'IT_PROG', 6000, null, 100, 20),
(202, 'Fay', 'AC_MGR', 6500, null, 210, 20),
(203, 'Mavris', 'AD_VP', 7500, null, 101, 40),
(204, 'Baer', 'AD_PRES', 3500, 1.5, 101, 90),
(205, 'Higgins', 'AC_MGR', 2300, null, 101, 60),
(206, 'Gitz', 'IT_PROG', 5000, null, 103, 60),
(100, 'King', 'AD_ASST', 8956, 0.3, 108, 100),
(101, 'Kochar', 'SH_CLERK', 3400, 1.3, 118, 30);

#3 displaying
select Employee_ID, Last_name, Job_ID from employee  order by Employee_ID;

#4 displaying by department id 60
select * from employee where Department_ID=60;

#5 displaying by last name is king
select * from employee where Last_name='King';

#6 displaying unique details
select distinct Job_ID from employee as JOB_TITLE;

#7 displaying increase salary
select distinct last_name, salary, salary+300 as Increased_Salary from employee ;

#8
select distinct last_name, salary, Comm_pct+100 as Annual_comm from employee;

#9
select * from employee where Comm_pct>0;

#10
select * from employee where Comm_pct=null;

#11
select employee_id, department_id, salary from employee where salary>5000;

#12
select last_name, salary salary from employee where salary between 4000 and 7000;

#13
select * from employee where salary in(6000, 6500, 7000);

#14
select * from employee where department_id in(10, 20, 30, 50);

#15
select * from employee where salary!=5000;

#16
select * from employee where Job_id like '%CLERK%';

#17
update employee set job_id='Grade_A' where salary>5000;
select * from employee;

#18
select * from employee where job_id in('SH_CLERK','AD_ASST','IT_PROG');

#19
select * from employee where Job_id like '%CLERK%' and salary<3000;

#20
select last_name, mgr_id from employee where salary>3000 and mgr_id=101;