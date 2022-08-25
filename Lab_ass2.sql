use akash;

#1 creating emp1 table
create table emp1(
id numeric(2),
ID_Name char(10),
basic numeric(6,2),
designation varchar(10),
age numeric(2)
);

#2 updating column basic
alter table emp1 modify basic integer(6);

#3 updating column ID_Name
alter table emp1 modify ID_Name varchar(15);

#4 creating new emp_trainee table
create table emp_trainee(
emp_id numeric(2),
id_name varchar(10),
basic numeric(6,2),
Designation varchar(10),
Age numeric(2)
);

#5 adding values to emp1
insert into emp1 values
(1, 'Rohit', 6700, 'Manger', 24),
(2, 'Sunil', 6200, 'Engineer', 27),
(3, 'Payal', 6300, 'Engineer', 25),
(4, 'Kunal', 6700, 'Trainee', 28),
(5, 'Sunita', 6230, 'Trainee', 26);

#6 inserting all emp1 values into emp_trainee
insert into emp_trainee select * from emp1;

#7 displaying structure of both table
select * from emp1, emp_trainee;

#adding table columns
alter table emp1 add Skills varchar(15) after age;
alter table emp1 add DOJ date after Skills;

#adding values to existing table using some condition
update emp1 set Skills='java' where id=1;
update emp1 set Skills='python' where id=2;
update emp1 set Skills='c++' where id=3;
update emp1 set Skills='SQL' where id=4;
update emp1 set Skills='java' where id=5;
update emp1 set Skills='selenium' where id=6;
update emp1 set DOJ='2022-02-05' where id=1;
update emp1 set DOJ='2022-02-10' where id=2;
update emp1 set DOJ='2022-02-15' where id=3;
update emp1 set DOJ='2022-02-20' where id=4;
update emp1 set DOJ='2022-02-22' where id=5;
update emp1 set DOJ='2022-02-23' where id=6;

#8 updating Designation
alter table emp_trainee modify Designation varchar(30);

#9 updating Designation
update emp_trainee set Designation='Programmer_Trainee';

#10 updating skills
update emp1 set Skills='Python' where Designation='Trainee';

#11 updating id column
alter table emp1 modify id varchar(5);

#12 displaying emp1 and trainee
select * from emp1, emp_trainee;

#13 changing the age column
alter table emp1 rename column age to age_in_years;

#14 deleting all trainee records
delete from emp1 where Designation='Trainee';

#15 deleting age column
alter table emp_trainee drop column age;

#16 deleting two columns from table emp_trainee
alter table emp_trainee drop column age, drop column designation;

#17 changing name
alter table emp1 rename emp_mgr_engr; 

#18 deleting both datas and table
drop table emp_trainee;

#19 deleting all records from table emp_mgr_engr
truncate emp_mgr_engr;

#20 recovering data
rollback;