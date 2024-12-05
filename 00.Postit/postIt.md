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
