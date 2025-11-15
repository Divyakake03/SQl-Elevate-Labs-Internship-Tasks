/*---------------------------------------------------------------
   1. INSERT DATA INTO TABLES (Handling NULLs)
----------------------------------------------------------------*/

-- 1.1 Insert into Departments
INSERT INTO departments (dept_id, dept_name) VALUES
(1, 'HR'),
(2, 'Finance'),
(3, 'IT'),
(4, 'Marketing');

-- 1.2 Insert into Employees (Some rows contain NULL values)
INSERT INTO employees (emp_id, emp_name, salary, joined_date, dept_id) VALUES
(101, 'Aarav', 38000, '2023-01-15', 1),
(102, 'Diya', 42000, '2022-12-10', 2),
(103, 'Rohan', 50000, '2023-02-01', 3),
(104, 'Meera', NULL, '2023-03-10', 4),   -- Missing salary
(105, 'Karan', 45000, NULL, 3);         -- Missing joined_date

-- 1.3 Insert into Projects (One NULL start_date)
INSERT INTO projects (project_id, project_name, start_date) VALUES
(201, 'Website Revamp', '2023-01-20'),
(202, 'AI Automation', '2023-03-10'),
(203, 'Cloud Migration', NULL);     -- Missing start_date

-- 1.4 Insert into Employee_Project (Many-to-Many mappings)
INSERT INTO employee_project (emp_id, project_id) VALUES
(101, 201),
(102, 202),
(103, 201),
(103, 203),
(104, 203),
(105, 202);


/*---------------------------------------------------------------
   2. UPDATE STATEMENTS (Clean & Fix Data)
----------------------------------------------------------------*/

-- 2.1 Update NULL salary for employee Meera
UPDATE employees
SET salary = 40000
WHERE emp_id = 104;

-- 2.2 Assign Karan to a new department
UPDATE employees
SET dept_id = 2
WHERE emp_name = 'Karan';

-- 2.3 Update project name for latest modification
UPDATE projects
SET project_name = 'Cloud Modernization'
WHERE project_id = 203;


/*---------------------------------------------------------------
   3. DELETE STATEMENTS (Clean inconsistent data)
----------------------------------------------------------------*/

-- 3.1 Remove employees with missing department (if any)
DELETE FROM employees
WHERE dept_id IS NULL;

-- 3.2 Remove orphan projects (not linked to any employee)
DELETE FROM projects
WHERE project_id NOT IN (SELECT project_id FROM employee_project);


/*---------------------------------------------------------------
   END OF FILE
   Result: Dataset fully populated and cleaned
----------------------------------------------------------------*/
