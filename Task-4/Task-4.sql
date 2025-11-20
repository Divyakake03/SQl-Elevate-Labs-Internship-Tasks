/*=====================================================================
   SQL Internship – Task 4
   Aggregate Functions and Grouping
   Objective:
       Use SQL aggregate functions and GROUP BY to summarize data.
       Apply HAVING to filter aggregated results.
=====================================================================*/


/*---------------------------------------------------------------
   1. Count the total number of employees
----------------------------------------------------------------*/
SELECT COUNT(emp_id) AS total_employees
FROM employees;


/*---------------------------------------------------------------
   2. Find the average salary of all employees
----------------------------------------------------------------*/
SELECT AVG(salary) AS average_salary
FROM employees;


/*---------------------------------------------------------------
   3. Calculate the total salary expenditure per department
----------------------------------------------------------------*/
SELECT dept_id, SUM(salary) AS total_salary
FROM employees
GROUP BY dept_id;


/*---------------------------------------------------------------
   4. Count the number of employees in each department
----------------------------------------------------------------*/
SELECT dept_id, COUNT(emp_id) AS employee_count
FROM employees
GROUP BY dept_id;


/*---------------------------------------------------------------
   5. Find the highest and lowest salary in the organization
----------------------------------------------------------------*/
SELECT 
    MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees;


/*---------------------------------------------------------------
   6. List departments that have more than one employee
      HAVING is used because filtering is applied after grouping
----------------------------------------------------------------*/
SELECT dept_id, COUNT(emp_id) AS employee_count
FROM employees
GROUP BY dept_id
HAVING COUNT(emp_id) > 1;


/*---------------------------------------------------------------
   7. Show the average salary for each department
----------------------------------------------------------------*/
SELECT dept_id, AVG(salary) AS average_salary
FROM employees
GROUP BY dept_id;


/*---------------------------------------------------------------
   8. Count how many employees are assigned to each project
----------------------------------------------------------------*/
SELECT project_id, COUNT(emp_id) AS employee_assigned_count
FROM employee_project
GROUP BY project_id;


/*---------------------------------------------------------------
   9. Summarize project participation with grouping
----------------------------------------------------------------*/
SELECT 
    ep.project_id, 
    p.project_name, 
    COUNT(ep.emp_id) AS total_employees
FROM employee_project ep
JOIN projects p 
ON ep.project_id = p.project_id
GROUP BY ep.project_id, p.project_name;


/*---------------------------------------------------------------
   END OF FILE
================================================================*/
