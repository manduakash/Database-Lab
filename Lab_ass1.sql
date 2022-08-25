use akash;

#1 creating table CUSTOMER;
create table CUSTOMER(
Cust_id varchar(5),
Fname varchar(15),
Lname varchar(15),
Area char(2),
Phone numeric(10),
DOB date,
Payment numeric (6,2)
);

#2 and 3 displaying the structure of table
select * from CUSTOMER;

#4 adding values into the table
insert into CUSTOMER values
('A01' ,'Ivan', 	'Ross', 	'SA', 6125467, '1986-01-15', 800.50),
('A02' ,'Vandana',  'Ray', 		'MU', 5560379, '1987-12-20', 1000.75),
('A03' ,'Pramada',  'Jauguste', 'DA', 4560389, '1967-07-25', 500.00),
('A04' ,'Basu', 	'Navindi',  'BA', 6125401, '1956-02-28', 860.00),
('A05' ,'Ravi', 	'Shridhar', 'NA', null,    '1989-02-15', 500.50),
('A06' ,'Rukmini',  'Aiyer', 	'GH', 5125274, '1987-07-23', 1500.50);

#5 displaying the data of table
select * from CUSTOMER;

#6 updating the value of A02 and A04
update customer set Phone = 6846914 where cust_id ='A02';
update customer set Phone = 9846138 where cust_id ='A04';

#7 updating the value of A03 and A05
update customer set DOB='1987-07-23' where cust_id='A03';
update customer set DOB='1983-04-14' where cust_id='A05';

#8 displaying the updated data of table
select * from CUSTOMER;

#9 deleting datas from A01 and A02
delete from customer where cust_id='A01';
delete from customer where cust_id='A02';

#10 deleting all rows from table
delete from customer;

#11 adding 5 values into the table
insert into CUSTOMER values
('A01' ,'Akash', 'Singh', 'SA', 6125467, '1986-01-15', 800.50),
('A02' ,'Amitab', 'Bacchan', 'MU', 5560379, '1987-12-20', 1000.75),
('A03' ,'Salman', 'Khan', 'DA', 4560389, '1967-07-25', 500.00),
('A04' ,'Hero', 'Alom', 'BA', 6125401, '1956-02-28', 860.00),
('A05' ,'Mamata', 'Banerjee', 'NA', null, '1989-02-15', 500.50);

#12 updating a value
update customer set Phone='6202734' where Phone=null;

#13 deleting a value 
delete from customer where Phone='6202734';