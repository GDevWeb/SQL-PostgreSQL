# **PostIt - SQL - The Complete Developer's Guide (MySQL, PostgreSQL)**

## **Section 1: Introduction**

### **3. A Closer Look At SQL & Databases**

📌 [Notes](../01.Section1.Introduction/3.A-Closer-Look-At-SQL&Databases/notes.md)

**Summary**:  
This section introduces the fundamental concepts of databases and their key components.

#### **Key Concepts**:

1. **Database**: A structured collection of data for efficient management.
2. **Relational Database**: Organizes data in tables with relationships.
3. **Table**: Stores data in rows and columns.
4. **Primary Key**: Unique identifier for each record.
5. **Foreign Key**: Links one table's record to another.
6. **Query**: Retrieves or manipulates data.
7. **Constraint**: Enforces rules for data integrity.

---

## **Section 2: SQL Basics Syntax & Features**

### **9. Module Introduction**

📌 [Notes](../02.Section2.SQL-Basics-Syntax&Features/09.Module-Introduction/notes.md)

**Summary**:  
Covers basic SQL commands for querying and modifying data.

#### **Key Commands**:

- **`SELECT`**: Retrieve data.
- **`INSERT`**: Add new data.
- **`UPDATE`**: Modify data.
- **`DELETE`**: Remove data.
- **`WHERE`**: Filter results.

### **10. Understanding The Core SQL Syntax**

📌 [Notes](../02.Section2.SQL-Basics-Syntax&Features/10.Understanding-The-Core-SQL-Syntax/notes.md)  
📊 [Schema](../02.Section2.SQL-Basics-Syntax&Features/10.Understanding-The-Core-SQL-Syntax/pdf/core-sql-syntax-rules.png)

**Summary**:  
Explains SQL syntax, including `SELECT`, `FROM`, `WHERE`, and `ORDER BY`.

### **11. SQL in Action**

📌 [Notes](../02.Section2.SQL-Basics-Syntax&Features/11.SQL-in-Action/notes.md)

**Summary**:  
Practical examples of SQL queries, joins, and aggregations.

---

## **Section 3: Course Setup – Installing MySQL & PostgreSQL**

### **14. Introduction**

📌 [Notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/notes.md)

**Summary**:  
Overview of database servers (MySQL, PostgreSQL) and management tools (MySQL Workbench, pgAdmin).

### **16. What We Need To Install**

📌 [Notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/notes.md)

**Summary**:

- **Database Server**: MySQL, PostgreSQL.
- **Client Software**: Command-line (`psql`, `mysql`).
- **GUI Tools**: MySQL Workbench, pgAdmin.

### **22-26. Setting Up Visual Studio Code With SQLTools**

📌 [Notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/24.Setting-Up-Visual-Studio-Code-With-The-SQLTools-Extension/notes.md)

**Summary**:  
Configure VS Code with SQLTools for database management.

---

## **Section 4: Data Definitions – Managing Tables & Data Types**

### **27. Module Introduction**

📌 [Notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/27.%20Module%20Introduction/notes.md)

**Summary**:  
Introduces DDL commands (`CREATE`, `ALTER`, `DROP`) and data types.

### **28-32. Key Data Definition Terms & Commands**

📌 [Notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/28.Key-Terms-When-Working-With-Data%20Definition-Statements&Commands/notes.md)

**Summary**:  
Covers primary keys, foreign keys, constraints, and schemas.

---

### **Important Data Types**

#### **Text Types**

| **Type**         | **Description**                         | **Max Length** | **Use Case**                      |
| ---------------- | --------------------------------------- | -------------- | --------------------------------- |
| **`CHAR(n)`**    | Fixed-length string, padded with spaces | `n` characters | Fixed-size data (e.g., codes)     |
| **`VARCHAR(n)`** | Variable-length string, up to `n`       | `n` characters | Varying-length data (e.g., names) |
| **`TEXT`**       | Unlimited-length string                 | No limit       | Long text (e.g., articles)        |

#### **Numeric Types**

| **Data Type**       | **Description**                        | **Range**                        |
| ------------------- | -------------------------------------- | -------------------------------- |
| **`SMALLINT`**      | Small integer (2 bytes)                | -32,768 to 32,767                |
| **`INTEGER`**       | Standard integer (4 bytes)             | -2,147,483,648 to 2,147,483,647  |
| **`BIGINT`**        | Large integer (8 bytes)                | -9 quintillion to 9 quintillion  |
| **`DECIMAL(p, s)`** | Exact fixed-point number               | User-defined precision and scale |
| **`REAL`**          | Single-precision floating-point number | 6 decimal digits of precision    |

---

## **Section 5: Data Manipulation – Querying & Managing Data**

### **51. Module Introduction**

📌 [Notes](../06.Section5.Data-Manipulation-Querying&Managing-Data/51.Module-Introduction/notes.md)

**Summary**:  
Introduction to DML commands for querying (`SELECT`), inserting (`INSERT`), updating (`UPDATE`), and deleting (`DELETE`) data.

---

## **Common SQL Commands Reference**

### **View All Tables in a Database**

```sql
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public';
```

### **Insert Data into a Table**

```sql
INSERT INTO table_name (column1, column2)
VALUES ('value1', 'value2');
```

### **Update Data in a Table**

```sql
UPDATE table_name
SET column1 = 'new_value'
WHERE condition;
```

### **Delete Data from a Table**

```sql
DELETE FROM table_name
WHERE condition;
```

---
