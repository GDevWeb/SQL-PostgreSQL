# **Section 3: Course Setup - Installing MySQL & PostgreSQL**

## 16. What We Need To Install

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28611976#overview)
- [schema](pdf/course-setup.png)

To set up a complete SQL environment for this course, you'll need to install a combination of database servers and client tools. Here's a breakdown of what you need:

---

### **1. Database System Server**

#### **MySQL**

- A popular relational database management system widely used in web applications.
- Required to practice SQL syntax and commands specific to MySQL.

#### **PostgreSQL**

- A powerful relational database system known for its advanced features like JSON support and window functions.
- Helps you understand advanced SQL concepts.

---

### **2. Client Software (For Sending Queries)**

**Client software is used to communicate with the database server to send queries and retrieve results.**

#### **Options for MySQL**:

- **MySQL Workbench** (Recommended): A GUI tool for managing and querying MySQL databases.
- **MySQL Command-Line Tool**: Allows you to execute SQL queries directly via the terminal.
- **Third-Party Tools**: Tools like DBeaver can also be used to connect to MySQL servers.

#### **Options for PostgreSQL**:

- **pgAdmin** (Recommended): A GUI tool for managing and querying PostgreSQL databases.
- **psql Command-Line Tool**: A command-line interface for executing PostgreSQL queries.
- **VS Code Extension**: Extensions like "SQL Tools" in Visual Studio Code can connect to PostgreSQL databases.

---

### **How Client Software Works**

- The client software acts as the middleman between you and the database server.
- It sends SQL queries to the server and displays the results after processing.
- Example Workflow:
  - You type an SQL query in MySQL Workbench or pgAdmin.
  - The query is sent to the MySQL or PostgreSQL server.
  - The server processes the query and sends the result back to the client software.

---

### **What to Install**

#### **Step 1: MySQL**

- Download MySQL Server and Workbench from the [official MySQL website](https://dev.mysql.com/downloads/).
- Install both the server and the GUI client (Workbench).

#### **Step 2: PostgreSQL**

- Download PostgreSQL and pgAdmin from the [official PostgreSQL website](https://www.postgresql.org/download/).
- Install the server and the pgAdmin GUI client.

#### **Optional: Third-Party Tools**

- **DBeaver**: A versatile SQL client that supports both MySQL and PostgreSQL.
- **VS Code Extensions**: Install "SQL Tools" or "Database Client" for a lightweight SQL querying experience within VS Code.

---

### **Important Keywords & Definitions**

1. **Database System Server**: The backend service that processes SQL queries and stores data.
2. **Client Software**: Applications that allow users to interact with the database server.
3. **GUI Tool**: A graphical interface for managing databases, such as MySQL Workbench or pgAdmin.
4. **Command-Line Tool**: A text-based interface for executing SQL commands, such as `mysql` or `psql`.

---

### **Exercises**

#### **Exercise 1: Install MySQL**

- Download and install MySQL Server and Workbench.
- Verify installation by launching MySQL Workbench and connecting to the MySQL server.

---

#### **Exercise 2: Install PostgreSQL**

- Download and install PostgreSQL and pgAdmin.
- Verify installation by launching pgAdmin and connecting to the PostgreSQL server.

---

#### **Exercise 3: Test Communication**

1. Open MySQL Workbench or pgAdmin.
2. Create a test database:
   - For MySQL:
     ```sql
     CREATE DATABASE TestDB;
     ```
   - For PostgreSQL:
     ```sql
     CREATE DATABASE TestDB;
     ```
3. Verify that the database appears in your client software.

---

Let me know if you'd like step-by-step installation guidance or help configuring your tools!
