# Employee Management System — Database Schema

## 📌 Overview
This task is part of the **SQL Developer Internship – Task 1**.  
The goal is to design a multi-table relational database with proper keys and relationships.

The chosen domain is **Employee Management System**, which includes departments, employees, projects, and their relationships.

---

## 🏗 Database Schema

### Entities:
1. **Departments**
2. **Employees**
3. **Projects**
4. **Employee_Project** (Many-to-Many bridge table)

### Relationships:
- **One Department → Many Employees** (1:M)  
- **Many Employees ↔ Many Projects** (M:N), implemented using `employee_project`

---

## 🗂 Tables & Structure

### **1. departments**
| Column     | Type | Notes |
|------------|------|-------|
| dept_id    | INT  | Primary Key |
| dept_name  | VARCHAR(100) | Not Null |

---

### **2. employees**
| Column      | Type | Notes |
|-------------|------|-------|
| emp_id      | INT  | Primary Key |
| emp_name    | VARCHAR(100) | Not Null |
| salary      | INT |  |
| joined_date | DATE |  |
| dept_id     | INT | Foreign Key → departments(dept_id) |

---

### **3. projects**
| Column       | Type | Notes |
|--------------|------|-------|
| project_id   | INT  | Primary Key |
| project_name | VARCHAR(100) | Not Null |
| start_date   | DATE |  |

---

### **4. employee_project**
| Column     | Type | Notes |
|------------|------|-------|
| emp_id     | INT | FK → employees(emp_id) |
| project_id | INT | FK → projects(project_id) |
| **Primary Key (emp_id, project_id)** |

---

## ER Diagram

The ER diagram visually explains the relationships among the tables.

👉 ** ER Diagram:**  

               +--------------------+
               |    DEPARTMENTS     |
               +--------------------+
               | dept_id (PK)       |
               | dept_name          |
               +---------+----------+
                         |
                         | 1:M
                         |
               +---------v----------+
               |     EMPLOYEES      |
               +---------------------+
               | emp_id (PK)         |
               | emp_name            |
               | salary              |
               | joined_date         |
               | dept_id (FK)        |
               +----------+----------+
                          |
                          | M:N (via employee_project)
                          |
     +--------------------v----------------------+
     |              EMPLOYEE_PROJECT             |
     +-------------------------------------------+
     | emp_id (FK)(PK)                           |
     | project_id (FK)(PK)                       |
     +--------------------+----------------------+
                          |
                          | M:1
                          |
                +---------v--------+
                |     PROJECTS     |
                +------------------+
                | project_id (PK)  |
                | project_name     |
                | start_date       |
                +------------------+


