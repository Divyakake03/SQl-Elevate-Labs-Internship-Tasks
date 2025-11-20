/*=====================================================================
   SQL Internship – Task 3
   Objective: Writing Basic SELECT Queries

   Tables Used:
     1. departments
     2. employees
     3. projects
     4. employee_project
=====================================================================*/


/*---------------------------------------------------------------
   1️⃣ Display all employee records
----------------------------------------------------------------*/
SELECT * 
FROM employees;


/*---------------------------------------------------------------
   2️⃣ Display only employee names and salaries
----------------------------------------------------------------*/
SELECT emp_name, salary
FROM employees;


/*---------------------------------------------------------------
   3️⃣ List employees belonging to the IT department (dept_id = 3)
----------------------------------------------------------------*/
SELECT emp_id, emp_name
FROM employees
WHERE dept_id = 3;


/*---------------------------------------------------------------
   4️⃣ Show employees earning more than 40,000
----------------------------------------------------------------*/
SELECT emp_name, salary
FROM employees
WHERE salary > 40000;


/*---------------------------------------------------------------
   5️⃣ List projects with a valid (non-NULL) start date
----------------------------------------------------------------*/
SELECT project_id, project_name
FROM projects
WHERE start_date IS NOT NULL;


/*---------------------------------------------------------------
   6️⃣ Order employees by salary (highest first)
----------------------------------------------------------------*/
SELECT emp_name, salary
FROM employees
ORDER BY salary DESC;


/*---------------------------------------------------------------
   7️⃣ Show the first 3 employees (LIMIT demo)
----------------------------------------------------------------*/
SELECT *
FROM employees
LIMIT 3;


/*---------------------------------------------------------------
   8️⃣ Employees whose names begin with 'D'
----------------------------------------------------------------*/
SELECT *
FROM employees
WHERE emp_name LIKE 'D%';


/*---------------------------------------------------------------
   9️⃣ Projects that started between Jan–Mar 2023
----------------------------------------------------------------*/
SELECT *
FROM projects
WHERE start_date BETWEEN '2023-01-01' AND '2023-03-31';


/*---------------------------------------------------------------
   🔟 Join employees with their department names
----------------------------------------------------------------*/
SELECT e.emp_name, d.dept_name
FROM employees e
JOIN departments d
ON e.dept_id = d.dept_id;


/*=====================================================================
   END OF FILE
=====================================================================*/
