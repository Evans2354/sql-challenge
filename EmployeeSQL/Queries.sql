--Employee Details
select
e.emp_no as "employee number" , e.last_name as "last name", e.first_name as "first name", e.gender, s.salary
from
employees e
,salaries s
where e.emp_no = s.emp_no;

--List employees who were hired in 1986
select
e.last_name as "last name", e.first_name as "first name"
from 
employees e
where  TO_CHAR(hire_date, 'yyyy')='1986';

--department number, department name, the manager's employee number, last name, first name, 
--and start and end employment dates.

select
d.dept_no as "department number", d.dept_name as "department name", dm.emp_no as "manager's employee number'"
, e.last_name as "last name", e.first_name as "first name",de.from_date as "start", de.to_date as "employment end date"
from
departments d,
dept_manager dm,
dept_emp de,
employees e
where d.dept_no = dm.dept_no
and dm.emp_no =de.emp_no
and de.emp_no = e.emp_no;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select
e.emp_no as "employee number", e.last_name as "last name", e.first_name as "first name", d.dept_name as "department name"
from
departments d,
dept_emp de,
employees e
where d.dept_no = de.dept_no
and de.emp_no = e.emp_no;


--List all employees whose first name is "Hercules" and last names begin with "B."
select
e.first_name,e.last_name
from
employees e
where  e.first_name ='Hercules' and e.last_name like 'B%' ;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

select
de.emp_no as "employee number", e.last_name as "last name", e.first_name as "first name", d.dept_name as "department name"
from
departments d
,dept_emp de
,employees e
where d.dept_name ='Sales'
and d.dept_no = de.dept_no
and e.emp_no = de.emp_no;

--List all employees in the Sales and Development departments
select
de.emp_no as "employee number", e.last_name as "last name", e.first_name as "first name", d.dept_name as "department name"
from
departments d
,dept_emp de
,employees e
where d.dept_name in ('Sales','Development')
and d.dept_no = de.dept_no
and e.emp_no = de.emp_no;

--In descending order, list the frequency count of employee last names

select
e.last_name as "last name", count(*) as "frequency"
from

employees e
group by e.last_name
order by e.last_name desc;




