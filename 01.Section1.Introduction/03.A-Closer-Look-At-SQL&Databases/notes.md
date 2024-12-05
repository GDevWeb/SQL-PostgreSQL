# **3. A Closer Look At SQL & Databases**

## **What is a Database?**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29188570#overview)
- [schema - why do you use a database system ?](pdf/why-using-SQL.png)

A **database** is a structured collection of data that can be stored, retrieved, and managed efficiently. It is used to organize and persist data for various applications, from small personal projects to large-scale enterprise systems.

- **Relational Database**: A type of database where data is organized into **tables**. Each table consists of rows (**records**) and columns (**fields**). Relational databases rely on **relationships** between tables to structure data logically.
- **Non-Relational Databases**: These include NoSQL databases, which store data in formats like JSON, key-value pairs, or documents, but they do not use SQL.

---

#### **The Role of SQL in Databases**

SQL acts as the interface between you and a relational database. It provides commands to:

- Define the structure of your data (e.g., create tables).
- Manipulate the data (e.g., insert, update, delete).
- Query the data (e.g., filter and retrieve specific information).
- Control access to the data (e.g., manage permissions).

---

#### **Key Concepts in SQL and Databases**

1. **Tables**:

   - A table is a collection of related data.
   - Example: A `Customers` table might include columns for `CustomerID`, `Name`, `Email`, and `Phone`.

2. **Rows and Columns**:

   - Rows represent individual records.
   - Columns define the attributes or fields of the data.
   - Example:
     | CustomerID | Name | Email | Phone |
     |------------|-----------|-------------------|-------------|
     | 1 | John Doe | john@example.com | 123-456-7890 |
     | 2 | Jane Smith| jane@example.com | 987-654-3210 |

3. **Primary Keys**:

   - A **primary key** is a unique identifier for each record in a table. It ensures no two rows have the same value in this column.
   - Example: `CustomerID` in the `Customers` table.

4. **Foreign Keys**:

   - A **foreign key** establishes a relationship between two tables.
   - Example: An `Orders` table might reference the `CustomerID` from the `Customers` table to link orders to customers.

5. **Relationships**:
   - **One-to-One**: A row in one table is related to exactly one row in another table.
   - **One-to-Many**: A row in one table is related to multiple rows in another table.
   - **Many-to-Many**: Many rows in one table are related to many rows in another table.

---

#### **Benefits of Using Databases**

1. **Data Organization**: Keep data structured and accessible.
2. **Data Integrity**: Ensure accuracy and consistency through constraints (e.g., primary keys).
3. **Efficiency**: Retrieve data quickly using indexes and optimized queries.
4. **Scalability**: Handle increasing amounts of data with ease.
5. **Security**: Protect data with permissions and encryption.

---

#### **Example of a Simple Database**

Imagine a **Bookstore Database** with two tables: `Books` and `Authors`.

- **Books Table**:
  | BookID | Title | AuthorID | Price |
  |--------|------------------|----------|-------|
  | 1 | SQL Mastery | 101 | 25.00 |
  | 2 | Learn PostgreSQL | 102 | 30.00 |

- **Authors Table**:
  | AuthorID | Name |
  |----------|-----------------|
  | 101 | Alice Johnson |
  | 102 | Bob Smith |

Relationship: The `AuthorID` in `Books` references the `AuthorID` in `Authors`. This is a **one-to-many relationship** because one author can write many books.

---

#### **How SQL Works With Databases**

1. **Defining the Structure**:

   - Create tables using `CREATE TABLE`.
   - Define relationships and constraints (e.g., primary and foreign keys).

2. **Manipulating Data**:

   - Add data with `INSERT`.
   - Modify existing data with `UPDATE`.
   - Remove data with `DELETE`.

3. **Querying Data**:
   - Fetch data with `SELECT`.
   - Filter results with `WHERE`.
   - Combine data from multiple tables with `JOIN`.

---

#### **Key Definitions**

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

---

#### **What’s Next?**

You will:

- Explore database management systems (MySQL and PostgreSQL).
- Learn how to set up databases and execute SQL commands to interact with your data.
- Get hands-on practice with basic SQL operations to build confidence in querying and managing databases.
