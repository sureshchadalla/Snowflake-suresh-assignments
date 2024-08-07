--41) Display name,salary,hra,pf,da,total salary for each employee. The  output should be in the order of total salary, hra 15% of salary, da 10% of salary,pf 5%  salary,total salary will be(salary+hra+da)-pf. 


select name,salary,
(salary *0.15) as hra,
(salary *0.05) as pf,
(salary *0.10) as da,
salary+(salary *0.15)+(salary*0.10)-(salary*0.05)as total salary from employees 
order by salary ;
----------------

--42) Display depart numbers and total number of employees working in each department. 

select DEPARTMENT_ID ,count(*) as total_employees from departments group by(DEPARTMENT_ID);
----------------
--43) Display the various jobs and total number of employees within each job group. 

select j.job_title, count(e.employee_id) as total_employees
from employees e join jobs j
on e.job_id=j.job_id
group by j.job_title;
-------------------------------
--44) Display the depart numbers and total salary for each department. 

select department_id,sum(salary) as total_salary from employees
group by department_id
order by department_id;

------------------------------
--45) Display the depart numbers and max salary for each department. 

select department_id,max(salary) as max_salary from employees
group by department_id
order by department_id;
----------------------
--46) Display the various jobs and total salary for each job 

select j.job_title,sum(e.salary) as total_salary
from jobs j join employees e
on j.job_id = e.job_id
group by job_title;
---------------------------------

--47) Display the various jobs and total salary for each job 

select j.job_title,sum(e.salary) as total_salary
from jobs j join employees e
on j.job_id = e.job_id
group by job_title;
----------------------------------
--48) Display the depart numbers with more than three employees in each dept. 

select department_id from employees
group by department_id
having count(*)>3 ;

--49) Display the various jobs along with total salary for each of the jobs  Where total salary is greater than 40000. 

select j.job_title,sum(e.salary) as total_salary
from  jobs j  join employees e
on j.job_id = e.job_id
group by j.job_title
having sum(e.salary)>30000
order by j.job_title asc;

----------------------------
--50) Display the various jobs along with total number of employees in each  job. The output should contain only those jobs with more than three employees.

select j.job_title,count(e.FIRST_NAME) as total_employees
from  jobs j  join employees e
on j.job_id = e.job_id
group by j.job_title
having count(e.FIRST_NAME)>3
order by j.job_title asc;
