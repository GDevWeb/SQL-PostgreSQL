# Study case

## **Employee Management System: Objectives**

Great choice! The **Employee Management System** is a robust study case that covers essential database concepts. Here's a structured approach for the session:

---

1. Design the database schema.
2. Populate the database with sample data.
3. Write queries to perform various operations and extract insights.

---

### **Step 1: Database Schema Design**

#### Tables to include:

1. **Employees**:

   - `id`: Unique identifier (Primary Key).
   - `first_name`: Employee's first name.
   - `last_name`: Employee's last name.
   - `email`: Contact email.
   - `phone`: Phone number.
   - `hire_date`: Date of hire.
   - `salary`: Monthly salary.
   - `department_id`: Foreign key to `Departments`.

2. **Departments**:

   - `id`: Unique identifier (Primary Key).
   - `name`: Department name.

3. **Job_Titles**:

   - `id`: Unique identifier (Primary Key).
   - `title`: Job title (e.g., Manager, Engineer).

4. **Employee_Jobs**:
   - `employee_id`: Foreign key to `Employees`.
   - `job_id`: Foreign key to `Job_Titles`.

---

### **Step 2: Sample Data**

We'll insert realistic data for employees, departments, and job titles.

---

### **Step 3: Queries**

1. Retrieve all employees' details.
2. Find employees with a salary greater than a specific value.
3. List all employees in a particular department.
4. Retrieve the total salary expense by department.
5. Find the top 5 highest-paid employees.
6. Count employees hired after a specific date.
7. Retrieve employees grouped by job titles.

---

Let me know if you'd like to start with creating the schema, adding data, or jumping directly into writing queries!
