-- Create table 
CREATE TABLE employees (
    id INTEGER PRIMARY KEY,
    name TEXT,
    department TEXT,
    salary INTEGER,
    joined_date TEXT
);

-- INSERT statements
INSERT INTO employees (id, name, department, salary, joined_date)
VALUES 
(1, 'Aarav', 'HR', 35000, '2023-01-15'),
(2, 'Diya', 'Finance', 42000, '2022-12-10'),
(3, 'Rohan', 'IT', 50000, '2023-02-01'),
(4, 'Meera', 'Marketing', NULL, '2023-03-10');   -- Handling missing salary with NULL

-- UPDATE statements
UPDATE employees
SET salary = 38000
WHERE id = 1;

UPDATE employees
SET department = 'IT'
WHERE name = 'Diya';

-- DELETE statements
DELETE FROM employees
WHERE salary IS NULL;

DELETE FROM employees
WHERE id = 4;

