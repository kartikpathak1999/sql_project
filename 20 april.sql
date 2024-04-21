create database twentyapril;

use  twentyapril;
create table emp11(id int, fname varchar(20), lname varchar(20), salary int, gender varchar(20));

insert into emp11

values(1,'Ganesh','Patel',57,'M'),
(2,'Mohit','Jasrotia',78,'M'),
(3,'Ruhi','Jaiswal',82,'F'),
(4,'Abhi','Pandey',67,'M'),
(5,'Kanchan','Gupta',93,'F'),
(6,'Juhi','Joshi',97,'F'),
(7,'Krishna','Patil',88,'M'),
(8,'Aditi','Pandey',82,'F'),
(9,'Bhavesh','Singh',87,'M'),
(10,'Preeti','Sharma',77,'F');

select * from emp11; 

# show salary of all employees
# show the fnames and salaries of all employees
# show the fnames having salary greater than 85
# show the fname,lname of employees which are female
# show the details of employees which are male and 
  #having salary greater than 80
# show the details of id 2,3,5,7,8
# show the details of employees having salary from 50 to 70
# show the details of juhi and mohit
# show the details of all employees except preeti.
# add details of ram prasad earning 75 at id 11
# add gouri sharma to table without salary,gender & id
# add karan earning 70 to table
# show the details of employees having 'a' in their fname.
# show the details of employees having 'u' at 2nd position
 # of their fname.
 
 
# show the details of employees having 't' at third last position of
 # their lname
  
  select *from emp11 where lname Like '%t__'; 
  
# show the details of employees having 'u' at 2nd position
 # of their fname. 
   select *from emp11 where fname Like '_u%';  
   
   
 # show the details of employees having 'a' in their fname. 
 
select *from emp11 where fname Like '%a%'; 

# add karan earning 70 to table
insert into emp11 (fname,salary) values ('karan',70);
select *from emp11;

DELETE FROM emp11 WHERE fname = 'karan';
select *from emp11;
DELETE FROM emp11 WHERE id =3 and id =6;

select *from emp11; 

#delete all the details from emp*

truncate emp11;

DELETE FROM emp11 WHERE id in (2,5);

select *from emp11;

Drop  table emp11; 

#alter for column modifincaiton  

#change  the fname of id 7 to  harsh 

update emp11 set fname ='harsh' where id =7;


#alter column location 

alter table emp11 add column location varchar(30); 

#add column pincode 
alter table emp11 add column pincode int;

#modify column
#alter table emp modify column location int;

 
# delete location 
alter table emp11 drop column location ;


#change the salary of id 1 and 9 to 77 
update emp11 set salary=77 where id in (1,9);

#add  column location 

#insert the values of location of females 
#to vashi 

#add locatin of id 1 as belapur 

#remove teh deatils of preeti and aditi
#remove the column locaiton 
alter table emp11 add column location varchar(59);   
select *from emp11 Limit 2,1 ;
select *from emp11 Limit 3 ;
#show the fname and lname of  4th and 5th row; 
select fname,lname from emp11 Limit 3,2 ;

#show the details of employeese of  7 th 8th and 9th rows 
select * from emp11 Limit 6,3 ; 

#show the deatils of first two females;
select * from emp11  where gender ='F' limit 2; 
#sort the column salary in ascending order;
select salary from emp11 order by salary;
# show the details of employees according  to there id in decreasing order

select *from emp11 order  by id desc; 

#show the highest paid employee

select *from emp11 order by salary  desc limit 1; 

# show the top 3 highest pad employees
select *from emp11 order by salary  desc limit 3; 

# show the  details of employee having 2nd lowest salary 

select *from emp11 order by salary limit 1,1; 


# show the details of highest paid female employee 

select *from emp11 where gender='F' order by salary desc limit 1;


# show the details of highest paid  2ndfemale employee 

select *from emp11 where gender='F' order by salary desc limit 1,1;  


# show the details of highest  paid male employee 
select *from emp11 where gender='M' order by salary desc limit 1;  

#aggregate

#show the highest salary 
#show the total salary of all the employee 
# show the average salary of all emoloyee
# show the lowest salary of all employee 
select max(salary) from emp11; 
select sum(salary) from emp11; 
select avg (salary) from emp11; 
select min(salary) from emp11; 

select count(6) from emp11; 

select *from emp11; 

select count(location) from emp11 ;

select salary,(salary/2) as half_sal from emp11;

# show the double of salary  of all employe as d_sal
select salary,(salary*2) as double_salary from emp11; 

# shwo the salary 
select salary,(salary-id) as double_salary from emp11; 

select *from emp11; 
select min(salary) from emp11; 

alter table emp11 add constraint my_chk check(salary>40);
