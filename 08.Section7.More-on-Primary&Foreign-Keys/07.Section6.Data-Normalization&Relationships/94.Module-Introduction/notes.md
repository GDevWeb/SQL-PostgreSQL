# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28614070#overview)

Let's begin with **Module 94: Module Introduction** to set the stage for this section. I'll guide you through it step by step, including key concepts, examples, and progressive exercises.

---

### 📚 **94. Module Introduction**

---

#### **Goal of the Module**

This module introduces the fundamental concepts of **Data Normalization** and **Relationships** in relational databases. You'll understand why splitting data into multiple tables and defining relationships is critical for scalability, data integrity, and efficient querying.

---

### 🛠️ **Key Points**

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

---

### 🧩 **Exercise: Data Normalization and Relationships Overview**

#### **Scenario**

You are designing a database for a university system. The database should manage:

- Students
- Courses
- Enrollments (which link students and courses)

#### **Tasks**

1. Identify which tables are needed to organize the data.
2. Define the relationships between these tables.
3. Write down the columns for each table.

---

#### **Expected Output**

- **Students Table**:

  - `StudentID` (Primary Key)
  - `FirstName`
  - `LastName`
  - `Email`

- **Courses Table**:

  - `CourseID` (Primary Key)
  - `CourseName`
  - `Instructor`

- **Enrollments Table**:
  - `EnrollmentID` (Primary Key)
  - `StudentID` (Foreign Key)
  - `CourseID` (Foreign Key)
  - `EnrollmentDate`

---

Let me know when you've completed this, and I'll guide you to **Module 95: A First Look at Related Data**! 😊
