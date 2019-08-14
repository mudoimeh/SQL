--Query to list the following details of each employee: employee number, last name, first name, gender, and salary.

Select employee.emp_no, employee.last_name, employee.first_name, 
employee.gender, salaries.salary

From employee

Inner join salaries ON
 employee.emp_no = salaries.emp_no;





--Query to list employees who were hired in 1986.

Select first_name, last_name, hire_date

from employee

where EXTRACT(year FROM hire_date) = 1986

order by hire_date;





--Query to List the manager of each department with the following information:
--department number, department name, the manager's employee number, last name, first name, and start and end employment dates.

select departments.dept_no, departments.dept_name, employee.emp_no, 
employee.last_name, employee.first_name, dept_manager.
from_date, dept_manager.to_date

From employee

Inner join dept_manager on
 employee.emp_no = dept_manager.emp_no

Inner join departments on 
dept_manager.dept_no = departments.dept_no


;


--Query to List the department of each employee with the following information: employee number,
--last name, first name, and department name.

select employee.emp_no, employee.last_name, employee.first_name, departments.dept_name

From employee
Inner join dept_emp on 
employee.emp_no = dept_emp.emp_no

Inner join departments on
 dept_emp.dept_no = departments.dept_no;





--Query to List all employees whose first name is "Hercules" and last names begin with "B.

Select first_name, last_name from employee

where first_name = 'Hercules' and last_name like 'B%'

order by last_name;





--Query to List all employees in the Sales department, including their employee number, last name, first name, and department name.


select employee.emp_no, employee.last_name, employee.first_name, departments.dept_name

from employee
Inner join dept_emp on
employee.emp_no = dept_emp.emp_no

Inner join departments on 
dept_emp.dept_no = departments.dept_no

where dept_name = 'Sales'

order by last_name;




--Query to List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select employee.emp_no, employees.last_name, employee.first_name, departments.dept_name

from employee

Inner join dept_emp on 
employees.emp_no = dept_emp.emp_no

Inner join departments on
 dept_emp.dept_no = departments.dept_no

where (dept_name = 'Sales' or dept_name = 'Development')

order by last_name ;




--Query in descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

select last_name, count(last_name) as "Last Name Count"

from employee
group by last_name

order by "Last Name Count" 

DESC;


--Query to find out who the employee is that the boss in the homework referenced which is "April Foolsday"


select * from employee where emp_no = 499942




--Query to find out the average salary by title for bonus question to input into jupyter notebooks



select titles.title, round(avg(salaries.salary),2) as "Average Salary"

from titles 

Inner join salaries on 
salaries.emp_no = titles.emp_no

group by title

order by "Average Salary" DESC;
