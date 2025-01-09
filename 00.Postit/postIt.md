# PostIt - SQL - The Complete Developer's Guide (MySQL, PostgreSQL)

## Section 1 : Introduction

### **3. A Closer Look At SQL & Databases**

[notes](../01.Section1.Introduction/3.A-Closer-Look-At-SQL&Databases/notes.md)

`Add a short resume about the concept and the goal`

1. **Database**: A structured collection of data stored and organized for efficient management and retrieval.
2. **Relational Database**: A type of database that organizes data into tables with defined relationships between them.
3. **Table**: A structure in a database that stores data in rows and columns.
4. **Row**: A single record in a table (also called a **tuple** or **entry**).
5. **Column**: A single field or attribute in a table, defining the type of data stored (e.g., `Name`, `Price`).
6. **Primary Key**: A unique identifier for each record in a table, ensuring data integrity.
7. **Foreign Key**: A field in a table that links to the primary key in another table, creating a relationship.
8. **Relationship**: The logical connection between tables in a database (e.g., one-to-many, many-to-many).
9. **Query**: A request made to a database to retrieve or manipulate data.
10. **Constraint**: A rule enforced on a table to maintain data integrity (e.g., `NOT NULL`, `UNIQUE`).

## **Section 2: SQL Basics Syntax & Features**

### **9. Module Introduction**

[notes](../02.Section2.SQL-Basics-Syntax&Features/09.Module-Introduction/notes.md)

`Add a short resume about the concept and the goal`

1. **SELECT**: A command to retrieve specific data from a database.
2. **FROM**: Specifies the table from which to retrieve the data.
3. **WHERE**: Adds conditions to filter the data retrieved.
4. **ORDER BY**: Sorts the data in ascending or descending order.
5. **LIMIT**: Restricts the number of rows returned in a query.
6. **INSERT**: Adds new data into a table.
7. **UPDATE**: Modifies existing data in a table.
8. **DELETE**: Removes data from a table.
9. **Semicolon (`;`)**: Indicates the end of an SQL statement.
10. **Comment**: A way to document your SQL code using `--` for single-line or `/* */` for multi-line comments.

### **10. Understanding The Core SQL Syntax**

- [notes](../02.Section2.SQL-Basics-Syntax&Features/10.Understanding-The-Core-SQL-Syntax/notes.md)
- [schema](../02.Section2.SQL-Basics-Syntax&Features/10.Understanding-The-Core-SQL-Syntax/pdf/core-sql-syntax-rules.png)

<div style="text-align:center">
<img src="../02.Section2.SQL-Basics-Syntax&Features/10.Understanding-The-Core-SQL-Syntax/pdf/core-sql-syntax-rules.png" style="border-radius:10px; ">
</div>

`Add a short resume about the concept and the goal`

1. **SQL**: A language used to interact with relational databases.
2. **SELECT**: Retrieves data from one or more columns in a table.
3. **FROM**: Specifies the table to query data from.
4. **WHERE**: Filters the data based on specified conditions.
5. **ORDER BY**: Sorts the results by a column in ascending (`ASC`) or descending (`DESC`) order.
6. **LIMIT**: Restricts the number of rows returned in the result set.
7. **Wildcard (`*`)**: Represents all columns in a table.

### **11. SQL in Action**

[notes](../02.Section2.SQL-Basics-Syntax&Features/11.SQL-in-Action/notes.md)

`Add a short resume about the concept and the goal`

1. **JOIN**: Combines rows from two or more tables based on a related column.
2. **AVG()**: A function to calculate the average value of a column.
3. **SUM()**: A function to calculate the total value of a column.
4. **GROUP BY**: Groups rows sharing a common value into summary rows.
5. **AS**: Renames a column or table in the query output (aliasing).

### **12. The Core SQL Rules**

[notes](../02.Section2.SQL-Basics-Syntax&Features/12.The-Core-SQL-Rules/notes.md)

`Add a short resume about the concept and the goal`

### **13. Data Definition vs Data Manipulation**

[notes](../02.Section2.SQL-Basics-Syntax&Features/13.Data-DefinitionvsData-Manipulation/notes.md)

`Add a short resume about the concept and the goal`

1. **DDL (Data Definition Language)**: SQL commands used to define and manage the database structure.
2. **DML (Data Manipulation Language)**: SQL commands used to manage the data stored in a database.
3. **CRUD**: An acronym for Create, Read, Update, Delete—core operations in data manipulation.
4. **Constraints**: Rules applied to database objects (e.g., primary key, foreign key).

---

## Section 3: Course Setup - Installing MySQL & PostgreSQL

[notes](../02.Section2.SQL-Basics-Syntax&Features/12.The-Core-SQL-Rules/notes.md)

`Add a short resume about the concept and the goal`

### **14. Introduction**

1. **Database Server**: Software that allows you to store, retrieve, and manage data in a database.
2. **MySQL**: An open-source relational database management system.
3. **PostgreSQL**: A powerful, standards-compliant relational database management system.
4. **MySQL Workbench**: A GUI tool for managing MySQL databases.
5. **pgAdmin**: A GUI tool for managing PostgreSQL databases.
6. **Test Database**: A sample database used to verify that your setup is working correctly.

### 16. What We Need To Install

1. **Database System Server**: The backend service that processes SQL queries and stores data.
2. **Client Software**: Applications that allow users to interact with the database server.
3. **GUI Tool**: A graphical interface for managing databases, such as MySQL Workbench or pgAdmin.
4. **Command-Line Tool**: A text-based interface for executing SQL commands, such as `mysql` or `psql`.

### **22. Starting & Stopping Servers + Uninstalling Database Systems**

[notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/22.Starting&Stopping-Servers+Uninstalling-Database-Systems/notes.md)

`Add a short resume about the concept and the goal`

1. **Service**: A background application running on your system, like a database server.
2. **systemctl**: A system management tool used in Linux distributions to manage services.
3. **Data Directory**: A folder where a database stores its data files.
4. **Uninstall**: The process of removing a program and its associated files from your system.

### 23. Connecting To Database Servers (MySQL & Postgresql) With Various Clients

[notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/23.Connecting-To-Database-Servers-MySQL&Postgresql-With-Various-Clients/notes.md)

`Add a short resume about the concept and the goal`

1. **Client**: A tool or application that connects to a database server to run queries or manage data.
2. **Hostname**: The address of the server hosting the database. For local servers, use `localhost`.
3. **Port**: The communication endpoint. Default ports are `3306` (MySQL) and `5432` (PostgreSQL).
4. **pgAdmin**: A graphical interface for managing PostgreSQL.
5. **MySQL Workbench**: A graphical tool for managing MySQL databases.
6. **psql**: The command-line client for PostgreSQL.
7. **mysql**: The command-line client for MySQL.

### **24. Setting Up Visual Studio Code With The SQLTools Extension**

[notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/24.Setting-Up-Visual-Studio-Code-With-The-SQLTools-Extension/notes.md)

`Add a short resume about the concept and the goal`

1. **SQLTools**: A VS Code extension that enables database management within the editor.
2. **Driver**: A piece of software that enables communication between SQLTools and a specific database type.
3. **Query**: A command or statement used to interact with a database.
4. **Connection Manager**: The SQLTools interface for configuring and managing database connections.

### **25. Configuring VS Code & Exploring SQLTools**

[notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/25.ConfiguringVSCode&Exploring-SQLTools/notes.md)

`Add a short resume about the concept and the goal`

1. **SQLTools**: A VS Code extension that simplifies database management and querying.
2. **Database Explorer**: A sidebar feature in SQLTools that allows you to navigate database tables and schemas.
3. **IntelliSense**: A feature that provides code suggestions and autocompletion for SQL queries.
4. **Query Results**: The output generated after executing an SQL query.

### **26. More on VS Code & SQLTools**

[notes](../04.Section3.Course-Setup.Intalling-MYSQL&Postgresql/26.More-OnVSCode&SQLTools/notes.md)

`Add a short resume about the concept and the goal`

1. **Auto Open Session Files**: A feature that opens a new `.sql` file automatically when switching database connections.
2. **Query Timeout**: The maximum time allowed for a query to execute before it times out.
3. **IntelliSense**: Autocompletion and syntax suggestions for SQL queries.
4. **User Settings**: Global settings applied to all VS Code projects.
5. **Workspace Settings**: Project-specific settings that override global ones.

---

## Section 4: Data Definitions – Managing Tables & Working with Data Types

### **27. Module Introduction**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/27.%20Module%20Introduction/notes.md)

#### **Important Keywords & Definitions**

1. **DDL (Data Definition Language)**: SQL commands used to define and modify database structures (e.g., `CREATE`, `ALTER`, `DROP`).
2. **`CREATE TABLE`**: Command to create a new table in a database.
3. **Data Type**: Specifies the kind of data a column can hold (e.g., `INT`, `VARCHAR`, `DATE`).
4. **Constraint**: Rules applied to columns to enforce data integrity (e.g., `PRIMARY KEY`, `NOT NULL`).
5. **`ALTER TABLE`**: Command to modify an existing table’s structure.
6. **`DROP TABLE`**: Command to delete a table and its data from the database.

### **28. Key Terms When Working With Data Definition Statements & Commands**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/28.Key-Terms-When-Working-With-Data%20Definition-Statements&Commands/notes.md)

`Add a short resume about the concept and the goal`

### **Important Keywords & Definitions Recap**

1. **DDL**: Data Definition Language for managing database structures.
2. **Primary Key**: Unique identifier for each row.
3. **Foreign Key**: Field linking one table to another.
4. **Constraint**: Rules to maintain data integrity.
5. **Index**: Speeds up data retrieval.
6. **Schema**: Defines the structure and organization of a database.

### **29. Introducing The Course Section Example**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/29.Introducing-The-Course-Section-Example/notes.md)

`Add a short resume about the concept and the goal`

### **30. Introducing Key Data Definition Clauses**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/30.Introducing-Key-Data-Definition-Clauses/notes.md)

`Add a short resume about the concept and the goal`

### **31. Creating a New Database in PostgreSQL (Using SQLTools with VS Code)**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/31.Creating-a-new-Database-CREATE-DATABASE/notes.md)

`Add a short resume about the concept and the goal`

#### **Important Keywords & Definitions**

1. **`CREATE TABLE`**: Defines a new table.
2. **`ALTER TABLE`**: Modifies an existing table.
3. **`DROP TABLE`**: Deletes a table and its data.
4. **`TRUNCATE TABLE`**: Removes all rows from a table without deleting its structure.
5. **Constraint**: Rules applied to columns to ensure data integrity (`PRIMARY KEY`, `FOREIGN KEY`, `NOT NULL`, etc.).

### **32. Deleting Databases & `IF NOT EXISTS` in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/32.Deleting-Databases&IF-NOT-EXISTS-in-PostgreSQL/notes.md)

`Add a short resume about the concept and the goal`

### **Summary of Key Commands**

| **Command**                     | **PostgreSQL Support** |
| ------------------------------- | ---------------------- |
| `DROP DATABASE IF EXISTS`       | ✅ Supported           |
| `CREATE DATABASE IF NOT EXISTS` | ❌ Not Supported       |
| `CREATE TABLE IF NOT EXISTS`    | ✅ Supported           |

### **33. The Importance of Data Types (Value Types) in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/33.The-Importance-Of-Data-Types-Value-Types/notes.md)

`Add a short resume about the concept and the goal`

---

## Commonly commands

### View all tables from a DB

```sql
FROM information_schema.tables
SELECT table_name
WHERE table_schema = 'public';
```

### **34. Introducing Key Text Value Types in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/34.Introducing-Key-Text-Value-Types/notes.md)

`Add a short resume about the concept and the goal`

### **Comparison of Text Types**

| **Type**         | **Description**                         | **Max Length** | **Use Case**                      |
| ---------------- | --------------------------------------- | -------------- | --------------------------------- |
| **`CHAR(n)`**    | Fixed-length string, padded with spaces | `n` characters | Fixed-size data (e.g., codes)     |
| **`VARCHAR(n)`** | Variable-length string, up to `n`       | `n` characters | Varying-length data (e.g., names) |
| **`TEXT`**       | Unlimited-length string                 | No limit       | Long text (e.g., articles)        |

## **35. Introducing Numeric Values, Date Types, and More in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/35.Introducing-Numeric-Values-Date-Types&More/notes.md)

`Add a short resume about the concept and the goal`

### **Summary**

- **Numeric Types**: `SMALLINT`, `INTEGER`, `BIGINT`, `DECIMAL`, `REAL`, `DOUBLE PRECISION`
- **Date/Time Types**: `DATE`, `TIME`, `TIMESTAMP`, `TIMESTAMPTZ`, `INTERVAL`
- **Boolean**: `BOOLEAN` for `TRUE` or `FALSE` values.
- Choosing the right data type is essential for **efficiency**, **data integrity**, and **performance**.

## **36. An Overview of Numeric Value Types in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/36.An-Overview-of-Numeric-Value-Types-in-PostgreSQL/notes.md)

`Add a short resume about the concept and the goal`

## **37. How Do You Store Files in PostgreSQL?**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/37.How-Do-You-Store-Files/notes.md)

`Add a short resume about the concept and the goal`

### **Comparison of Methods**

| **Method**        | **Use Case**                 | **Pros**                       | **Cons**                          |
| ----------------- | ---------------------------- | ------------------------------ | --------------------------------- |
| **`BYTEA`**       | Small files (up to a few MB) | Simple to use, stores in table | Not suitable for large files      |
| **Large Objects** | Large files (>10 MB)         | Efficient for large files      | Requires special LO functions     |
| **File Paths**    | Very large files             | Lightweight, reduces DB size   | Relies on filesystem availability |

### **38. Getting Started With the `CREATE TABLE` Statement & Syntax in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/38.Getting-Started-With-The-CREATE-TABLE-Statement&Syntax/notes.md)

`Add a short resume about the concept and the goal`

### **39. Creating a First Text Column in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/39.Creating-a-First-Text-Column/notes.md)

`Add a short resume about the concept and the goal`

### **Best Practices for Text Columns**

1. **Use `VARCHAR(n)`** for fields with predictable maximum lengths (e.g., names, emails).
2. **Use `TEXT`** for fields where the length is unpredictable (e.g., descriptions, comments).
3. **Avoid `CHAR(n)`** unless you have fixed-length data, as it pads shorter strings with spaces.
4. **Add Constraints** like `NOT NULL` or `UNIQUE` when necessary to ensure data integrity.

## **40. Creating a Numeric Value Column in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/39.Creating-a-First-Text-Column/notes.md)

`Add a short resume about the concept and the goal`

#### **Common Numeric Data Types in PostgreSQL**

| **Data Type**          | **Description**                                  | **Range**                         |
| ---------------------- | ------------------------------------------------ | --------------------------------- |
| **`SMALLINT`**         | Small integer (2 bytes)                          | -32,768 to 32,767                 |
| **`INTEGER` / `INT`**  | Standard integer (4 bytes)                       | -2,147,483,648 to 2,147,483,647   |
| **`BIGINT`**           | Large integer (8 bytes)                          | -9 quintillion to 9 quintillion   |
| **`DECIMAL(p, s)`**    | Exact fixed-point number                         | User-defined precision and scale  |
| **`NUMERIC(p, s)`**    | Same as `DECIMAL`                                | User-defined precision and scale  |
| **`REAL`**             | Single-precision floating-point number (4 bytes) | 6 decimal digits of precision     |
| **`DOUBLE PRECISION`** | Double-precision floating-point number (8 bytes) | 15-17 decimal digits of precision |
| **`SERIAL`**           | Auto-incrementing integer (4 bytes)              | 1 to 2,147,483,647                |
| **`BIGSERIAL`**        | Auto-incrementing large integer (8 bytes)        | 1 to 9,223,372,036,854,775,807    |

#### **Summary**

- Use **`INTEGER`**, **`SMALLINT`**, or **`BIGINT`** for whole numbers.
- Use **`DECIMAL`/`NUMERIC`** for exact decimal values.
- Use **`REAL`** or **`DOUBLE PRECISION`** for approximate floating-point values.
- Add constraints to ensure **data integrity** (e.g., `CHECK (value > 0)`).

### **41. Working with Enums & Finishing Table Creation in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/41.Working-with-Enums&Finishing-Table-Creation/notes.md)

`Add a short resume about the concept and the goal`

#### **Best Practices for Using Enums**

1. **Use Enums for Fixed Sets of Values**:

   - Enums are great for columns with a limited set of predefined values (e.g., statuses, categories).

2. **Consider Future Changes**:

   - If you anticipate frequent changes to the set of allowed values, enums may not be the best choice. Consider using a separate lookup table instead.

3. **Naming Conventions**:

   - Use clear and descriptive names for enum types (e.g., `task_status`, `role_type`).

4. **Combining Constraints**:
   - Combine enums with constraints like `NOT NULL` and `DEFAULT` to enforce data integrity.

#### Summary

- Enums are useful for columns with a fixed set of values.
- Use the CREATE TYPE statement to define an enum.
- Enums help enforce data integrity and simplify schema design.
- Combine enums with constraints like NOT NULL and DEFAULT for more robust tables.

### **42. Inserting Data into the Created Table (`INSERT INTO`) in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/42.Inserting-Data-Into-The-Created-Table-INSERT%20INTO/notes.md)

`Add a short resume about the concept and the goal`

#### **Summary**

- **`INSERT INTO`** is used to add new rows to a table.
- You can insert data into **all columns** or **specific columns**.
- Use **`RETURNING`** to get values from the inserted rows.
- Handle errors related to constraints and data types carefully.

## **43. Inserting & Querying More Data in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/43.Inserting&Querying-More-Data-in-PostgreSQL/notes.md)

`Add a short resume about the concept and the goal`

### **Summary**

- **Insert Data**: Use `INSERT INTO` to add multiple rows to a table.
- **Query Data**: Use `SELECT` with options like `WHERE`, `JOIN`, `ORDER BY`, `AND`, and `OR` to retrieve and filter data.
- **Practice**: Combining `INSERT` and `SELECT` helps solidify your understanding of data manipulation in PostgreSQL.

### **44. Working with Fixed-Point and Floating-Point Numbers in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/44.Working-With-Fixed-Point&Floating-Point-Numbers/notes.md)

`Add a short resume about the concept and the goal`

### **Summary**

- **Fixed-Point Numbers** (`DECIMAL`/`NUMERIC`) provide **exact precision** and are ideal for financial data.
- **Floating-Point Numbers** (`REAL`/`DOUBLE PRECISION`) provide **approximate precision** and are suitable for scientific calculations.
- Choose the appropriate numeric type based on your **precision needs** and **use case**.

### **45. Adding Boolean Value Types in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/45.Adding-Boolean-Value-Types/notes.md)

`Add a short resume about the concept and the goal`

### **46. Creating a New Table with Text & Timestamp Data in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/46.Creating-a-new-Table-with-Text-Timestamp-Data/notes.md)

`In PostgreSQL, the TEXT data type is used for storing variable-length strings, while the TIMESTAMP data type is used to store date and time information. These types are commonly combined in tables for tracking events, logging activity, or storing descriptive data with timestamps.`

Add some example or a comparative array

### **Summary**

- **Text Columns**: Use `TEXT` for variable-length strings and `VARCHAR` for strings with a defined maximum length.
- **Timestamp Columns**: Use `TIMESTAMP` for storing date and time information. Use `DEFAULT CURRENT_TIMESTAMP` to auto-fill with the current time.
- **Tracking Updates**: Combine `CreatedAt` and `UpdatedAt` for tracking row creation and modification times.

### **47. Inserting Data into the New Tables in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/47.Inserting-Data-Into-The-New-Tables/notes.md)

`Add a short resume about the concept and the goal`

### **48. Working with Time Zones in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/48.What-About-Time-Zones/notes.md)

`Add a short resume about the concept and the goal`

#### **Summary**

- **`TIMESTAMP WITH TIME ZONE`** stores date-time values with time zone awareness and converts them to UTC internally.
- Use **`SET TIME ZONE`** to change the session's time zone for displaying times.
- Use **`AT TIME ZONE`** to convert timestamps to different time zones.
- Storing times in **UTC** ensures consistency and avoids ambiguity when working with multiple time zones.

### **49. Introducing Default Column Values in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/49.Introducing-Default-Column-Values/notes.md)

`Add a short resume about the concept and the goal`

### **50. Deleting (Dropping) Tables & Inserting Data with Default Values in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/50.Deleting-Dropping-Tables&Inserting-Data-With-Default-Values/notes.md)

`Add a short resume about the concept and the goal`

#### **Summary**

- **`DROP TABLE`** deletes a table and its data. Use `IF EXISTS` to avoid errors.
- **Default values** simplify data insertion by automatically filling in predefined values.
- Use `DEFAULT` in `INSERT` statements to explicitly apply default values.
- Combine `DROP TABLE` and `CREATE TABLE` for table management during development.

### **51. Updating Tables & Columns in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/51.Updating-Tables&Columns/notes.md)

Find the commons commands used to `Alter`, `RENAME`, `SET`, `DROP`, TABLE AND COLUMN.

#### **Summary**

- Use **`UPDATE`** to modify existing rows in a table.
- Use **`ALTER TABLE`** to modify the table structure by adding, dropping, renaming, or altering columns.
- Be cautious with updates and structure changes, especially in production databases.

### **52. Dealing with "No Data" (`NULL`) vs "0" in PostgreSQL**

#### **Summary**

- **`NULL`** represents the absence of data; **`0`** is a numeric value.
- Use **`IS NULL`** and **`IS NOT NULL`** to filter `NULL` values.
- Use **`COALESCE`** to replace `NULL` with a default value.
- Use **`NULLIF`** to turn specific values (like `0`) into `NULL`.
- Aggregation functions like **`SUM`** and **`AVG`** ignore `NULL` values.

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/52.Dealing-With-No-Data-NULLvs-0/notes.md)

### **53. `NULL` Values, Inserting (No) Data & Default Values in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/53.NULL-Values-Inserting-No-Data&Default-Values/notes.md)

`Add a short resume about the concept and the goal`

### **54. Exploring the `NOT NULL` Constraint in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/54.Exploring-the-NOT%20NULL-Constraint/notes.md)

The **`NOT NULL`** constraint in PostgreSQL ensures that a column **cannot store `NULL` values**. This constraint is essential for maintaining data integrity by making sure that important columns always contain meaningful data.

#### **Summary**

- The **`NOT NULL`** constraint ensures that a column cannot store `NULL` values.
- When inserting data, omitting a `NOT NULL` column will result in an error.
- You can add or drop `NOT NULL` constraints using `ALTER TABLE`.
- Combine `NOT NULL` with **default values** to ensure columns always have meaningful data.

## **55. Exploring the `CHECK` Constraint in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/54.Exploring-the-NOT%20NULL-Constraint/notes.md)

The **`CHECK`** constraint in PostgreSQL is used to enforce rules on the values that can be stored in a column. It ensures that data meets specified conditions before it is inserted or updated. If the data violates the constraint, PostgreSQL raises an error.

### **Summary**

- The **`CHECK`** constraint enforces rules on column values to maintain data integrity.
- You can add `CHECK` constraints during table creation or using `ALTER TABLE`.
- Use **custom names** for constraints to improve readability.
- Remove constraints with the `DROP CONSTRAINT` command.
- `CHECK` constraints support **complex expressions** and **multiple conditions**.

### **56. We Need Unique Values & Identifiers in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/56.We-Need-Unique-Values&Identifiers!/notes.md)

`Add a short resume about the concept and the goal`

#### **Summary**

- **Primary Keys** uniquely identify rows and cannot contain `NULL` values.
- **Unique Constraints** enforce uniqueness but allow `NULL` unless combined with `NOT NULL`.
- **`SERIAL`** and **`IDENTITY`** columns provide auto-incrementing integers.
- **UUIDs** are ideal for globally unique identifiers.
- Combine constraints for robust data integrity.
-

##### Tips

The `EXTRACT` function in SQL is used to retrieve specific parts of a date or timestamp, such as the year, month, day, hour, minute, or second. It's particularly useful when you want to perform date manipulations or filter data based on a specific component of a date.

### **57. `SERIAL` in MySQL vs `SERIAL` in PostgreSQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/57.SERIAL-in-MySQLvsSERIAL-in-Postgresql/notes.md)

#### **Summary**

- **PostgreSQL `SERIAL`** creates an `INTEGER` auto-incrementing column.
- **MySQL `SERIAL`** creates a `BIGINT UNSIGNED AUTO_INCREMENT` column.
- Choose the appropriate data type based on **expected data volume** and **storage needs**.
- Ensure consistency between parent and child table data types for **foreign keys**.

Both MySQL and PostgreSQL support auto-incrementing numbers for primary keys and other unique identifiers. However, the implementation and behavior of `SERIAL` differ slightly between the two database systems.

### **58. Working with Auto-Incrementing IDs & Primary Keys in PostgreSQL and MySQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/58.Working-With-Auto-Incrementing-IDs&Primary-Keys/notes.md)

`Not particular thing to say - just some additional contents for the previous lesson`

## **59. Auto-IDs, Primary Keys & Inserting Data in PostgreSQL and MySQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/59.Auto-IDs,-Primary-Keys&Inserting-Data/notes.md)

`Not particular thing to say - just some additional contents for the previous lesson`

### **60. Constraints - Summary in PostgreSQL and MySQL**

[notes](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/60.Constraints-Summary/notes.md)

It's the summary of the part of constraints `short and precious`

### **Summary**

- Constraints ensure **data integrity** and **consistency**.
- Use **`PRIMARY KEY`**, **`FOREIGN KEY`**, **`NOT NULL`**, **`UNIQUE`**, **`CHECK`**, and **`DEFAULT`** constraints based on your data requirements.
- Combining constraints provides robust protection against invalid data.

### **61. Understanding Text Encoding & Collation in PostgreSQL and MySQL**

`Add a short resume about the concept and the goal`

### **Summary**

- **Text Encoding** defines how characters are stored (e.g., UTF-8).
- **Collation** determines how text is sorted and compared (e.g., case sensitivity).
- **PostgreSQL** and **MySQL** offer flexible options for specifying encoding and collation at the database, table, and column levels.
- Choose the appropriate encoding and collation based on your application's requirements.

### **62. Temporary Tables & Tables From Other Tables in PostgreSQL and MySQL**

`Add a short resume about the concept and the goal`

### **Summary**

- **Temporary Tables** are session-specific tables used for intermediate data storage.
- **Creating Tables from Other Tables** allows you to duplicate structures and data for backup or analysis.
- PostgreSQL and MySQL offer similar functionality with slight syntax differences.
- Temporary tables are automatically dropped at the end of a session or transaction.

## **63. Creating Generated Columns in PostgreSQL and MySQL**

**Generated Columns** (also known as computed or virtual columns) are columns in a table where the values are automatically computed based on expressions or other columns. They help simplify queries and maintain consistent derived values without manual updates.

#### **Summary**

- **Generated Columns** automatically compute values based on expressions.
- **PostgreSQL** supports only **stored** generated columns.
- **MySQL** supports both **virtual** and **stored** generated columns.
- Generated columns simplify data handling and ensure consistent derived values.

### **64. Module Summary: Tables, Constraints, and Generated Columns**

[📌 See the resume of this essential section](../05.Section4.Data-Definitions–Managing-Tables&Working-with-Data-Types/64.Module-Summary/notes.md)

### **Conclusion**

In this module, you gained essential skills for managing tables, constraints, and generated columns in PostgreSQL and MySQL. These tools help ensure your database remains **accurate**, **efficient**, and **easy to manage**.

---

# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚**Module 68: Introduction**📚

[notes](../06.Setion.5.Data-Manipulation&Querying-operations-With-SQL/68.Module-Introduction/notes.md)

`Add a short resume about the concept and the goal`

## 📚 **Module 69: What Are CRUD Operations?** 📚

[notes](../06.Setion.5.Data-Manipulation&Querying-operations-With-SQL/69.What-Are-CRUD-Operations/notes.md)

`Add a short resume about the concept and the goal`

### 📚 **Module 70: Inserting Data — Theory** 📚

### 📚 **Module 71: Selecting Data — Theory** 📚

### 📚 **Module 72: Updating Data — Theory** 📚

### 📚 **Module 73: Deleting Data — Theory** 📚

## 📚 **Module 74: Introducing The Section Example** 📚

## 📚 **Module 75: Setting Up an Example Database & Table** 📚

## 📚 **Module 76: Example — Inserting Data** 📚

## 📚 **Module 77. Inserting More (Dummy) Data** 📚

## 📚 **Module 78: Updating In Action** 📚

### 📚 **Module 79: Deleting In Action** 📚

### 📚 **Module 80: Selecting Data — The Basics** 📚

### 📚 **Module 82. Filtering with WHERE: Available Comparison Operators & Variations** 📚

### 📚 **Module 83: Filtering In Action (WHERE In Action)** 📚

### 📚 **Module 85: Greater, Smaller & Ranges** 📚

### 📚 **Module 86: Filtering Text Values** 📚

### 📚 **Module 87: Working with Dates & Date Differences** 📚

### 📚 **Module 88: Filtering Conditions Without Hard-Coded Values** 📚

### 📚 **Module 89: Introducing `ORDER BY` & `LIMIT`** 📚

### 📚 **Module 90: Ordering & Limiting Results In Action** 📚

### 📚 **Module 91: Looking for `DISTINCT` Values** 📚

### 📚 **Module 92: Subqueries & Views** 📚

### 📚 **Module 93: Module Summary** 📚

❗TODO : review the views

---

## **Section 6: Data Normalization & Relationships**

### What Are Relationships?

1. **What is Data Normalization?**

   - The process of organizing data in a database to reduce redundancy and improve data integrity.
   - It ensures that each piece of information is stored in one place only.

2. **Why Normalize Data?**

   - Eliminate redundancy.
   - Simplify database updates and deletions.
   - Reduce storage costs and improve query efficiency.

3. **What Are Relationships?**

   - Relationships connect tables that share related data.
   - Types of relationships:
     - **One-to-Many**: A single record in one table is linked to multiple records in another table.
     - **Many-to-Many**: Records in one table are linked to multiple records in another, and vice versa.
     - **One-to-One**: A single record in one table is linked to a single record in another.

4. **Real-World Example:**

   - **Scenario**: A library system.
     - **Books Table**: Stores book details.
     - **Authors Table**: Stores author details.
     - **Relationships**:
       - A book can have one author (**One-to-One**).
       - An author can have multiple books (**One-to-Many**).

5. **Normalization Rules (Forms)**

   - **First Normal Form (1NF)**:
     - Ensure each column has atomic (indivisible) values.
     - Eliminate duplicate rows.
   - **Second Normal Form (2NF)**:
     - Ensure all non-key columns depend on the entire primary key.
   - **Third Normal Form (3NF)**:
     - Ensure all non-key columns depend only on the primary key, not on other non-key columns.

---

### **Table of Contents: Section 7 - More on Primary & Foreign Keys**

---

#### **127. Module Introduction**

- Overview of the section’s goals and learning objectives.

#### **128. Remember: Primary Keys Don’t Have to Be Auto-Incrementing IDs**

- Explains that primary keys can be meaningful fields, not just auto-incrementing IDs.
- Examples of composite and non-incrementing primary keys.

#### **129. Primary Keys: When to Use Which Column**

- Guidelines on selecting the most appropriate column(s) as a primary key.
- Examples of real-world scenarios for choosing primary keys.

#### **130. Introducing Composite Primary Keys**

- The concept of composite keys, where more than one column is used to form a primary key.
- Scenarios where composite primary keys are useful.

#### **131. Defining Composite Primary Keys (Composite Keys in Action)**

- How to define composite primary keys in SQL syntax.
- Practical examples and exercises to create tables with composite keys.

#### **132. Composite Foreign Keys**

- Explains how composite keys can act as foreign keys in other tables.
- Use cases and implementation details.

#### **133. Composite Keys in Action**

- Hands-on examples demonstrating the creation and usage of composite primary and foreign keys.
- Querying data with composite relationships.

#### **134. Self-Referencing Relationships (Self-Referential Relationships)**

- Introduction to self-referential relationships in tables.
- Use cases such as hierarchical data or employee-manager relationships.

#### **135. Self-Referencing Many-to-Many Relationships**

- Explains how self-referencing relationships can extend to many-to-many associations.
- Example: Friends list in a social network.

---

### **Practice Exercises**

- Creating tables with composite primary keys.
  - 1st exercise ✅
  - 2nd exercise
  - 3rd exercise
- Adding composite foreign keys to related tables.
- Building self-referential relationships.
- Writing queries to extract data from self-referential and composite key relationships.

---

### **Summary**

- Recap of the importance of primary keys in relational databases.
- Key takeaways about composite and self-referencing relationships.

---

## **Section 8: Grouping & Aggregate Functions - Notes**

### Table of Contents

- [Module Overview](#module-overview)
- [Key Concepts and Syntax](#key-concepts-and-syntax)
  - [1. Aggregate Functions](#1-aggregate-functions)
  - [2. GROUP BY](#2-group-by)
  - [3. HAVING Clause](#3-having-clause)
  - [4. Window Functions](#4-window-functions)
  - [5. Ranking Functions](#5-ranking-functions)
- [Module Project: Restaurant Database](#module-project-restaurant-database)
  - [Database Schema](#database-schema)
  - [Example Queries](#example-queries)
- [Key Takeaways](#key-takeaways)
- [Practice Recommendations](#practice-recommendations)

---

### Module Overview

This section covered the concepts of grouping data, performing calculations, and utilizing aggregate functions in SQL. Key focus areas included:

- Understanding aggregate functions such as `COUNT`, `MIN`, `MAX`, `SUM`, and `AVG`.
- Grouping data using `GROUP BY`.
- Filtering grouped data using `HAVING`.
- Combining grouping with filtering and joins for advanced data analysis.
- Using window functions and ranking queries.

---

### Key Concepts and Syntax

#### 1. **Aggregate Functions**

- **COUNT()**: Counts rows in a group.
  ```sql
  SELECT COUNT(*) FROM bookings;
  ```
- **MIN() & MAX()**: Finds the minimum or maximum value.
  ```sql
  SELECT MIN(price), MAX(price) FROM tables;
  ```
- **SUM()**: Calculates the total.
  ```sql
  SELECT SUM(billed) FROM bookings;
  ```
- **AVG()**: Calculates the average.
  ```sql
  SELECT AVG(tipped) FROM bookings;
  ```

#### 2. **GROUP BY**

Groups rows with the same values in specified columns.

```sql
SELECT category, COUNT(*) FROM tables
GROUP BY category;
```

#### 3. **HAVING Clause**

Filters grouped data based on aggregate results (unlike `WHERE`, which filters rows before grouping).

```sql
SELECT category, COUNT(*)
FROM tables
GROUP BY category
HAVING COUNT(*) > 1;
```

#### 4. **Window Functions**

Applies calculations across a set of table rows related to the current row.

- **Syntax**:
  ```sql
  SELECT name, SUM(billed) OVER (PARTITION BY category) AS total_billed
  FROM tables;
  ```
- **Usage**:
  - `PARTITION BY`: Divides rows into groups.
  - `ORDER BY`: Specifies row ordering.

#### 5. **Ranking Functions**

Assigns ranks to rows based on a specified order.

- **RANK()**: Allows gaps in rank when there are ties.
  ```sql
  SELECT name, RANK() OVER (ORDER BY billed DESC) AS rank
  FROM bookings;
  ```
- **DENSE_RANK()**: No gaps in ranking.
  ```sql
  SELECT name, DENSE_RANK() OVER (ORDER BY billed DESC) AS rank
  FROM bookings;
  ```
- **ROW_NUMBER()**: Assigns a unique number to each row.

---

### Module Project: Restaurant Database

#### Database Schema

1. **Tables Table**:

   - `ID` (Primary Key): Unique table identifier.
   - `Seats`: Number of seats.
   - `Category`: Type of table (e.g., indoor, outdoor).

2. **Bookings Table**:

   - `ID` (Primary Key): Unique booking identifier.
   - `Booking Date`: Date of the booking.
   - `Guests`: Number of guests.
   - `Billed`: Total billed amount.
   - `Tipped`: Tip amount.
   - `Payment ID`: Foreign key to the `Payment Methods` table.
   - `Table ID`: Foreign key to the `Tables` table.

3. **Payment Methods Table**:
   - `ID` (Primary Key): Unique payment method identifier.
   - `Name`: Payment method (e.g., cash, card).

#### Example Queries

1. **Count Total Bookings**:

   ```sql
   SELECT COUNT(*) FROM bookings;
   ```

2. **Find Minimum and Maximum Billed Amounts**:

   ```sql
   SELECT MIN(billed), MAX(billed) FROM bookings;
   ```

3. **Calculate Total Tips by Payment Method**:

   ```sql
   SELECT pm.name, SUM(b.tipped) AS total_tips
   FROM bookings b
   JOIN payment_methods pm ON b.payment_id = pm.id
   GROUP BY pm.name;
   ```

4. **Rank Tables by Total Seats**:

   ```sql
   SELECT id, seats, RANK() OVER (ORDER BY seats DESC) AS rank
   FROM tables;
   ```

5. **Find Average Billing per Table Category**:
   ```sql
   SELECT t.category, AVG(b.billed) AS avg_billed
   FROM bookings b
   JOIN tables t ON b.table_id = t.id
   GROUP BY t.category;
   ```

---

### Key Takeaways

1. **Grouping & Aggregating**: Efficiently summarize and analyze large datasets.
2. **HAVING Clause**: Enables filtering grouped data based on aggregated results.
3. **Window Functions**: Offers flexibility for advanced analytics without collapsing rows.
4. **Ranking Queries**: Useful for ranking, filtering, and partitioned analysis.

---

### Practice Recommendations

1. Experiment with queries using `GROUP BY` and `HAVING` on the `restaurants` database.
2. Create your own scenarios involving window functions and ranking.
3. Try writing complex queries that combine aggregate functions, joins, and filtering.

---

### **Table of Contents for Section 9: Built-in Query Functions & Operators**

1. **151: Module Introduction**

   - Overview of the module's objectives and key topics.

2. **152: The Module Project**

   - Introduction to the Gym Club Membership Management System project.

3. **153: Working with Mathematical Functions & Arithmetic Operators**

   - Using functions like `SUM`, `AVG`, `ROUND`, and arithmetic calculations.

4. **154: Understanding String Functions with SELECT**

   - Extracting, transforming, and formatting text in queries.

5. **155: Using String Functions with INSERT**

   - Applying transformations during data insertion.

6. **156: Understanding Date/Time Functions**

   - Extracting year, month, day, and calculating age using date functions.

7. **157: Working with Weekdays**

   - Grouping and filtering data by days of the week.

8. **158: Calculating INTERVALS**

   - Performing date arithmetic and finding time differences.

9. **159: Adding INTERVALS to Dates**

   - Extending or scheduling dates with interval additions.

10. **160: Understanding LIKE & Pattern Matching**

    - Flexible searching using `LIKE` and `ILIKE`.

11. **161: Understanding EXISTS**

    - Filtering data with subqueries to check for existence.

12. **162: Working with Subquery Expressions and EXISTS**

    - Combining subqueries and `EXISTS` for advanced filtering.

13. **163: Working with Subquery Expressions and IN**

    - Using `IN` to simplify filtering with subqueries.

14. **164: Introducing Conditional Expressions**

    - Using `CASE` to apply logic and categorize data within queries.

15. **165: Challenge Solution**

    - Solution walkthrough for a complex query-based challenge.

16. **166: Database (SQL) vs Application Level**
    - Comparing the roles of SQL and application logic for data handling.

---

### **Table of Contents for Section 10: Database Transactions**

1. **Lesson 167: Module Introduction**

   - Overview of the module's objectives and the importance of transactions in SQL.

2. **Lesson 168: Understanding Transactions**

   - Explanation of transactions and the ACID properties (Atomicity, Consistency, Isolation, Durability).

3. **Lesson 169: A Note About This Module's Project**

   - Overview of how the project ties into the lesson concepts.

4. **Lesson 170: Applying Transactions & ROLLBACK**

   - Practical use of `ROLLBACK` to undo changes and maintain data integrity.

5. **Lesson 171: Committing Changes**

   - Using `COMMIT` to save changes permanently and understanding its significance.

6. **Lesson 172: Working with Savepoints**

   - Creating checkpoints within transactions using `SAVEPOINT` and rolling back to specific points.

7. **Lesson 173: Transactions in PostgreSQL**

   - PostgreSQL-specific features, including isolation levels, nested transactions, and error handling.

8. **Resume section**
   - [resume section](#summary-11).

---

### **Table of Contents: Section 11 - Using Indexes**

---

#### **Lesson 175: What Are Indexes?**

- Introduction to the purpose and benefits of indexes.
- Trade-offs: Faster reads, slower writes, and increased storage.

#### **Lesson 176: Don’t Use Too Many Indexes!**

- Balancing the benefits and costs of indexes.
- Best practices for deciding when to use indexes.

#### **Lesson 177: Index Types in PostgreSQL**

- Overview of PostgreSQL index types:
  - B-Tree
  - Hash
  - GIN
  - GiST
  - BRIN
  - SP-GiST
  - Partial and Composite Indexes

#### **Lesson 178: Setting Up Some Example Data**

- Creating a dataset for testing index types.
- Example: Products table with categories, prices, and descriptions.

#### **Lesson 179: EXPLAINing Queries & Query Planning**

- Using `EXPLAIN` and `EXPLAIN ANALYZE` to understand query execution plans.
- Analyzing query costs, row estimates, and scan types.

#### **Lesson 180: Creating & Using Single-Column Indexes**

- Introduction to single-column indexes.
- Examples and practical usage for optimized queries.

#### **Lesson 181: More on Creating & Dropping Indexes**

- Creating indexes during table creation (MySQL-specific).
- Dropping unused or redundant indexes.

#### **Lesson 182: Unique Indexes**

- Enforcing data integrity with unique indexes.
- Creating single-column and composite unique indexes.

#### **Lesson 183: Working with Multi-Column Indexes (Composite Indexes)**

- Using composite indexes for multi-column filtering and sorting.
- Importance of column order in composite indexes.

#### **Lesson 184: Partial Indexes**

- Indexing specific rows based on conditions.
- Optimizing queries with targeted subsets of data.

### **Summary**

- [summary section](../12.Section11.Using-Indexes/00.Summary/notes.md)

---

### **Appendix**

- Best practices for index management.
- Example queries and exercises for index creation, usage, and optimization.
- Tips for monitoring and maintaining indexes in PostgreSQL.

---
