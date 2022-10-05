
--List the following details of each employee: employee number, last name, first name, sex, and salary.
-- SELECT sql_schema.employees.empno, firstname, lastname, sex, salary
-- FROM sql_schema.employees
-- INNER JOIN sql_schema.salaries 
-- ON sql_schema.employees.empno=sql_schema.salaries.empno

--List first name, last name, and hire date for employees who were hired in 1986.
-- SELECT firstname, lastname, hiredate 
-- FROM sql_schema.employees
-- WHERE hiredate between '1986-01-01' and '1986-12-31'

--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
-- SELECT sql_schema.dept_managers.deptno, sql_schema.dept_managers.empno, 
-- deptname, firstname, lastname
-- FROM sql_schema.dept_managers
-- INNER JOIN sql_schema.employees
-- ON sql_schema.employees.empno=sql_schema.dept_managers.empno
-- INNER JOIN sql_schema.departments
-- ON sql_schema.departments.deptno=sql_schema.dept_managers.deptno

--List the department of each employee with the following information: employee number, last name, first name, and department name.
-- SELECT sql_schema.dept_emp.empno, 
-- deptname, firstname, lastname
-- FROM sql_schema.dept_emp
-- INNER JOIN sql_schema.employees
-- ON sql_schema.employees.empno=sql_schema.dept_emp.empno
-- INNER JOIN sql_schema.departments
-- ON sql_schema.departments.deptno=sql_schema.dept_emp.deptno

--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
-- SELECT firstname, lastname, sex FROM sql_schema.employees
-- WHERE firstname = 'Hercules'
-- AND lastname LIKE 'B%'

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
-- SELECT firstname, lastname, deptname, sql_schema.dept_emp.empno
-- FROM sql_schema.employees
-- INNER JOIN sql_schema.dept_emp
-- ON sql_schema.employees.empno=sql_schema.dept_emp.empno
-- INNER JOIN sql_schema.departments
-- ON sql_schema.employees.empno=sql_schema.departments.deptno
-- WHERE deptname = 'Sales'

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
-- SELECT firstname, lastname, deptname, sql_schema.dept_emp.empno
-- FROM sql_schema.employees
-- WHERE deptname = 'Sales', 'Development'
-- INNER JOIN sql_schema.dept_emp
-- ON sql_schema.employees.empno=sql_schema.dept_emp.empno
-- INNER JOIN sql_schema.departments
-- ON sql_schema.employees.empno=sql_schema.departments.deptno

--List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
-- SELECT lastname
-- FROM sql_schema.employees
-- GROUP BY lastname(COUNT)
-- ORDER BY lastname DESC