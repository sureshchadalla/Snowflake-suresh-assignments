create table A(numbers int);

create table B(numbers int);
insert into A values(1),(2),(2),(3),(3),(3),(4),(4),(4),(4),(5),(5),(5),(5),(5);
insert into A values (null);
insert into B values(1),(1),(2),(2),(3),(3),(4),(4),(5),(5),(5),(null),(null);
select *from A;

select *from B;


--Need count for inner join ->  left --> right for the below tables 


select a.* , b.* from A a inner join B b
on a.numbers = b.numbers;
--count=35


select a.* , b.* from A a left join B b
on a.numbers = b.numbers;
--count =36


select a.* , b.* from A a right join B b
on a.numbers = b.numbers;
--count=37


select a.* , b.* from A a full join B b
on a.numbers = b.numbers;
--count=38


select a.* , b.* from A a  join B b
on a.numbers = b.numbers;
--count=38

select x.numbers ,y.numbers from A x  join A y
on x.numbers=y.numbers;
--count=55

select a.* , b.* from A a cross join B b
;

--count208


----------------
--11) Display the names of employees who are working as clerks, salesman or  analyst and drawing a salary more than 3000. 

select employee_name from employees 
where job in ('clerks' ,'salesman','analyst') and salary>3000;

--12) Display the names of the employees who are working in the company for  the past 5 years; 
-------------
select employee_name from employee 
where Working_Years>5;


----------------
--13) Display the list of employees who have joined the company before  30-JUN-90 or after 31-DEC-90. 

select employee_id,
employee_name from employee
where joining_date<='30-jun-90' or joining_date>'31-dec-90' ;

---------
--14) Display current Date. 
select current_date;

------------------


--15) Display the list of all users in your database (use catalog table). 

show users;
-----------------
--16) Display the names of all tables from current user; 
show tables;

----------------

--17) Display the name of the current user. 

select current_user;
---------------------
--18) Display the names of employees working in depart number 10 or 20 or 40  or employees working as CLERKS,SALESMAN or ANALYST. 

select employee_name from employees
where job in('clerks', 'salesman' , 'analyst') 
or department_id in(10,20,40);
---------------

--19) Display the names of employees whose name starts with alaphabet S. 


select first_name from employees
where first_name like 'S%';

-------------


--20) Display the Employee names for employees whose name ends with alaphabet S.
select first_name from employees
where first_name like '%s';