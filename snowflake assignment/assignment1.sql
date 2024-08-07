-1) Display the details of all employees

select * from employees;

--2) Display the depart information from  department table

  select * from departments;
  select DEPARTMENT_NAME from departments;


--3) Display the name and job for all the employees

select FIRST_NAME,LAST_NAME, JOB_ID from employees;


--4) Display the name and salary  for all the employees

select FIRST_NAME,LAST_NAME,SALARY from employees ;

--5) Display the employee no andtotalsalary  for all the employees
select PHONE_NUMBER,
(select sum(salary) from employees)from employees;


--6) Display the employee name and annual salary for all employees.
select FIRST_NAME,LAST_NAME,(SALARY*12) as annual_salary from employees;


--7) Display the names of all the employees who are working in depart number 10.

select FIRST_NAME,LAST_NAME from employees where DEPARTMENT_ID=10;

--8) Display the names of all the employees who are working as clerks and  drawing a salary more than 3000.
select FIRST_NAME,LAST_NAME from employee where job='clerk' and salary>3000;

--9) Display the employee number and name  who are earning comm
select PHONE_NUMBER,FIRST_NAME,LAST_NAME from employees where comm>0;

--10) Display the employee number and name  who do not earn any comm.
 select PHONE_NUMBER,FIRST_NAME,LAST_NAME from employees where comm is null or comm=0;