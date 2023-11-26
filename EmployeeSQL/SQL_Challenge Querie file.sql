
--PART III- Data Analysis

--1.List the employee number, last name, first name, sex and salary of each employee. 
SELECT e."Emp_no", e."Last_name", e."First_name", e."SEX", s."salary"
from "employees" e
JOIN "salaries" s on e."Emp_no" = s."emp_no";

--2. List the first name, last name & hiredate for the employees who where hired in 1986.
select "First_name", "Last_name", "Hire_date"
from "employees"
where extract(year from "Hire_date")= 1986;

--3. List the manager of each department along with their department number, department name, employee number, last name, first name.
select dm."dept_no", d."dept_name", dm."emp_no", e."Last_name", e."First_name"
from "dept_manager" dm
join "employees" e on dm."emp_no" = e."Emp_no"
Join "departments" d ON dm."dept_no" = d."dept_no";

--4. List the Department number for each employee along with that employee's employee number, last name, first name & department name
select de."Emp_no", e."Last_name", e."First_name", de."Dept_no", d."dept_name"
from "dept_emp" de
join "employees" e on de."Emp_no" = e."Emp_no"
join "departments" d on de."Dept_no" = d."dept_no";

--5. list first name, last name, and sex of each employee whos first name is hercules and whose last name begins with B.
select "First_name", "Last_name", "SEX"
from "employees"
where "First_name" = 'Hercules' and "Last_name" like 'B%';

--6. list each employee in the sales department, including their employee number, last name & first name.
select e."Emp_no", e."Last_name", e."First_name", d."dept_name"
from "dept_emp" de
join "employees" e on de."Emp_no" = e."Emp_no"
join "departments" d on de."Dept_no" = d."dept_no"
where d."dept_name" = 'Sales';

--7. List each employee in the sales and development departments, including thie employee number, last name, first name, and department name.
SELECT e."Emp_no", e."Last_name", e."First_name", d."dept_name"
FROM "dept_emp" de
JOIN "employees" e ON de."Emp_no" = e."Emp_no"
JOIN "departments" d ON de."Dept_no" = d."dept_no"
WHERE d."dept_name" IN ('Sales', 'Development');

--8. List the frequency counts, in descending order, of all the employee last names(that is, how many employees share each last name)
select "Last_name", count(*) as "frequency"
from "employees"
group by "Last_name"
order by "frequency" DESC;
