# **Section 4: Data Definitions – Managing Tables & Working with Data Types**

## **64. Module Summary: Tables, Constraints, and Generated Columns**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614462#overview)

---

#### **Overview**

In this module, we explored essential concepts related to creating and managing tables, constraints, and generated columns in SQL. This knowledge is crucial for maintaining data integrity, optimizing performance, and simplifying database design. Here’s a summary of what we covered.

---

### **Key Topics Covered**

---

### **1. Creating Tables**

- **Basic Table Creation**:  
  Defined tables with different data types.

  ```sql
  CREATE TABLE employees (
      EmployeeID SERIAL PRIMARY KEY,
      FullName VARCHAR(100),
      Salary DECIMAL(10, 2)
  );
  ```

- **Creating Tables from Existing Tables**:

  - Structure only:
    ```sql
    CREATE TABLE new_table AS SELECT * FROM existing_table WHERE 1=0;
    ```
  - Structure and data:
    ```sql
    CREATE TABLE new_table AS SELECT * FROM existing_table;
    ```

- **Temporary Tables**:  
  Created tables that exist only for the duration of a session or transaction.
  ```sql
  CREATE TEMPORARY TABLE temp_users (
      UserID SERIAL PRIMARY KEY,
      FullName VARCHAR(100)
  );
  ```

---

### **2. Constraints**

Constraints ensure data integrity by enforcing rules on the data. Key constraints include:

| **Constraint**  | **Description**                             | **Example**                                                       |
| --------------- | ------------------------------------------- | ----------------------------------------------------------------- |
| **PRIMARY KEY** | Uniquely identifies each row.               | `EmployeeID SERIAL PRIMARY KEY`                                   |
| **FOREIGN KEY** | References a primary key in another table.  | `FOREIGN KEY (DepartmentID) REFERENCES departments(DepartmentID)` |
| **NOT NULL**    | Ensures a column cannot have `NULL` values. | `FullName VARCHAR(100) NOT NULL`                                  |
| **UNIQUE**      | Ensures column values are unique.           | `Email VARCHAR(150) UNIQUE`                                       |
| **CHECK**       | Ensures values meet specific conditions.    | `Salary DECIMAL(10, 2) CHECK (Salary > 0)`                        |
| **DEFAULT**     | Sets a default value if none is provided.   | `JoinDate DATE DEFAULT CURRENT_DATE`                              |

---

### **3. Auto-Incrementing IDs**

- **PostgreSQL**: Uses `SERIAL` or `BIGSERIAL` for auto-incrementing columns.

  ```sql
  CREATE TABLE users (
      UserID SERIAL PRIMARY KEY,
      FullName VARCHAR(100)
  );
  ```

- **MySQL**: Uses `AUTO_INCREMENT` for auto-incrementing columns.
  ```sql
  CREATE TABLE users (
      UserID INT AUTO_INCREMENT PRIMARY KEY,
      FullName VARCHAR(100)
  );
  ```

---

### **4. Text Encoding and Collation**

- **Encoding**: Determines how text data is stored (e.g., `UTF-8`, `ASCII`).

  - **PostgreSQL**:

    ```sql
    CREATE DATABASE mydb ENCODING 'UTF8';
    ```

  - **MySQL**:
    ```sql
    CREATE DATABASE mydb CHARACTER SET utf8mb4;
    ```

- **Collation**: Determines how text is compared and sorted.

  - **PostgreSQL**:

    ```sql
    CREATE TABLE users (
        Name VARCHAR(100) COLLATE "en_US"
    );
    ```

  - **MySQL**:
    ```sql
    CREATE TABLE users (
        Name VARCHAR(100) COLLATE utf8mb4_general_ci
    );
    ```

---

### **5. Generated Columns**

Generated columns compute their values automatically based on other columns.

- **PostgreSQL** (Stored only):

  ```sql
  CREATE TABLE users (
      FirstName VARCHAR(50),
      LastName VARCHAR(50),
      FullName VARCHAR(100) GENERATED ALWAYS AS (FirstName || ' ' || LastName) STORED
  );
  ```

- **MySQL** (Stored or Virtual):
  ```sql
  CREATE TABLE products (
      Price DECIMAL(10, 2),
      TaxRate DECIMAL(5, 2),
      PriceWithTax DECIMAL(10, 2) GENERATED ALWAYS AS (Price + (Price * TaxRate)) VIRTUAL
  );
  ```

---

### **Best Practices**

1. **Use Constraints** to Maintain Data Integrity:

   - Apply `NOT NULL`, `PRIMARY KEY`, `UNIQUE`, `CHECK`, and `FOREIGN KEY` constraints based on your data requirements.

2. **Leverage Auto-Incrementing IDs**:

   - Simplify the creation of unique identifiers for rows.

3. **Choose the Right Encoding and Collation**:

   - Use `UTF-8`/`utf8mb4` for international applications.
   - Select appropriate collation rules for case-sensitive or case-insensitive comparisons.

4. **Use Generated Columns**:

   - Simplify derived calculations and maintain consistent data without manual updates.

5. **Temporary Tables**:
   - Use for intermediate results or temporary data processing during sessions.

---

### **Summary Table of Key Concepts**

| **Feature**          | **PostgreSQL**                            | **MySQL**                                 |
| -------------------- | ----------------------------------------- | ----------------------------------------- | -------- |
| **Primary Key**      | `SERIAL PRIMARY KEY`                      | `AUTO_INCREMENT PRIMARY KEY`              |
| **Foreign Key**      | `FOREIGN KEY (col) REFERENCES table(col)` | `FOREIGN KEY (col) REFERENCES table(col)` |
| **Temporary Table**  | `CREATE TEMPORARY TABLE temp_name (...)`  | `CREATE TEMPORARY TABLE temp_name (...)`  |
| **Encoding**         | `ENCODING 'UTF8'`                         | `CHARACTER SET utf8mb4`                   |
| **Collation**        | `COLLATE "en_US"`                         | `COLLATE utf8mb4_general_ci`              |
| **Generated Column** | `GENERATED ALWAYS AS (expr) STORED`       | `GENERATED ALWAYS AS (expr) [VIRTUAL      | STORED]` |

---

### **Exercises Recap**

1. **Create Tables with Constraints**:

   - Create a `users` table with `PRIMARY KEY`, `NOT NULL`, and `UNIQUE` constraints.

2. **Create and Query Temporary Tables**:

   - Create a temporary table for storing session-specific data.

3. **Use Generated Columns**:

   - Create tables that compute totals, full names, or derived values.

4. **Work with Collation and Encoding**:
   - Set appropriate encoding and collation rules for text data.

---

### **Conclusion**

In this module, you gained essential skills for managing tables, constraints, and generated columns in PostgreSQL and MySQL. These tools help ensure your database remains **accurate**, **efficient**, and **easy to manage**.

Let me know if you need further clarification or additional examples! 😊
