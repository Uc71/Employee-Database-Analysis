#ANALYSIS 1
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no=salaries.emp_no

#ANALYSIS 2
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date > '1985-12-31'
AND hire_date < '1987-01-01'

#ANALYSIS 3
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
INNER JOIN departments
ON dept_manager.dept_no=departments.dept_no
INNER JOIN employees
ON dept_manager.emp_no=employees.emp_no

#ANALYSIS 4
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no=departments.dept_no

#ANALYSIS 5
SELECT first_name, last_name, sex FROM employees
WHERE first_name='Hercules'
AND last_name LIKE 'B%'

#ANALYSIS 6
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no=departments.dept_no
WHERE dept_name='Sales'

#ANALYSIS 7
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
INNER JOIN dept_emp
ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments
ON dept_emp.dept_no=departments.dept_no
WHERE dept_name='Sales' OR dept_name='Development'

#ANALYSIS 8
SELECT last_name, COUNT(last_name)AS Frequency
FROM employees
GROUP BY last_name
ORDER BY
COUNT(last_name) DESC