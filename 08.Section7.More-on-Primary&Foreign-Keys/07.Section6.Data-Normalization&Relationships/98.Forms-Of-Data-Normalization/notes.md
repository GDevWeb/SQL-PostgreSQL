# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## 📚 **98. Forms of Data Normalization**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877104#overview)
- [Udemy - screen - Simple and essential rule](img/dat-normalization-form-simple-rule.png)

---

### **Goal of the Module**

In this module, we’ll explore the different forms of **data normalization** and how they improve database design by eliminating redundancy, ensuring data integrity, and optimizing storage.

---

### 🛠️ **Key Points**

1. **What Are the Normal Forms?**

   - **First Normal Form (1NF)**:
     - Ensure that every column contains atomic (indivisible) values.
     - Remove duplicate rows.
     - Ensure each column has a unique purpose.
   - **Second Normal Form (2NF)**:
     - Build on 1NF by removing partial dependencies.
     - Ensure that every non-primary-key column is dependent on the entire primary key.
   - **Third Normal Form (3NF)**:
     - Build on 2NF by removing transitive dependencies.
     - Ensure that non-primary-key columns depend only on the primary key.

2. **Real-World Example: University Database**

   - Initial Table:
     | **StudentID** | **StudentName** | **CourseName** | **Instructor** | **Credits** |
     |---------------|-----------------|----------------|----------------|-------------|
     | 1 | Alice | Math 101 | Prof. Brown | 3 |
     | 2 | Bob | History 201 | Prof. Smith | 4 |
     | 3 | Alice | History 201 | Prof. Smith | 4 |

   - Issues:
     - Repetition of `StudentName`, `CourseName`, and `Instructor`.
     - If `Instructor` changes, updates need to happen across multiple rows.

3. **Steps to Normalize the Table**

   - **1NF**: Ensure atomic values and eliminate duplicate rows.
   - **2NF**: Separate data into `Students`, `Courses`, and `Enrollments` tables to remove partial dependencies.
   - **3NF**: Remove transitive dependencies, ensuring non-key columns depend only on the primary key.

4. **Resulting Tables**:
   - **Students Table**: `StudentID`, `StudentName`.
   - **Courses Table**: `CourseID`, `CourseName`, `Instructor`, `Credits`.
   - **Enrollments Table**: `EnrollmentID`, `StudentID`, `CourseID`.

---

### 🧩 **Exercise: Normalizing a Sales Database**

#### **Scenario**

You’re managing a sales database with a single table:

| **OrderID** | **CustomerName** | **ProductName** | **Category** | **Quantity** | **Price** | **OrderDate** |
| ----------- | ---------------- | --------------- | ------------ | ------------ | --------- | ------------- |
| 1           | John Doe         | Laptop          | Electronics  | 1            | 1200.00   | 2024-01-01    |
| 2           | Jane Smith       | Smartphone      | Electronics  | 2            | 800.00    | 2024-01-02    |
| 3           | John Doe         | Keyboard        | Accessories  | 3            | 50.00     | 2024-01-03    |

---

#### **Tasks**

1. **Analyze the Data**:

   - Identify columns that repeat and could lead to redundancy.
   - Suggest smaller tables that could reduce redundancy.

2. **Create a Normalized Structure**:

   - Split the data into at least three tables.
   - Define primary and foreign keys for these tables.

3. **Write Table Definitions**:

   - Create SQL statements to define the new tables.

4. **Insert Sample Data**:
   - Populate the new tables with the data from the original table.

---

Let me know when you're ready to proceed, and we’ll move to **Module 99: Our First Section Example** or review the exercise solution! 😊
