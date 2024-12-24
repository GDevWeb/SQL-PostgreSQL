# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

## 📚 **95. A First Look at Related Data**

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877000#overview)

---

### **Goal of the Module**

This module introduces how related data is stored across multiple tables in a relational database. You’ll learn why it's essential to split data into multiple tables and how relationships connect these tables to make data management efficient.

---

### 🛠️ **Key Points**

1. **Why Split Data?**

   - **Avoid Redundancy**: Prevent repeating the same data multiple times in one table.
   - **Improve Data Integrity**: Ensure consistent and accurate data across tables.
   - **Scalability**: Easier to update and maintain smaller, focused tables.

2. **What Are Related Tables?**

   - Related tables share **keys** (Primary and Foreign Keys) that connect them.
   - Example:
     - A `students` table and a `courses` table are related through the `enrollments` table.
     - The `enrollments` table links `StudentID` (from `students`) to `CourseID` (from `courses`).

3. **Real-World Example: E-Commerce**
   - Imagine a database for an online shop:
     - **Products Table**: Stores product information.
     - **Customers Table**: Stores customer information.
     - **Orders Table**: Links products and customers through order details.

---

### 🧩 **Exercise: Identifying Relationships**

#### **Scenario**

You are building a database for a library system. The library has:

- Books
- Authors
- Borrowers
- Borrowing Records

#### **Tasks**

1. Identify the tables you would need to organize this data.
2. Define the relationships between these tables.
3. Write a short description of the purpose of each table.

---

### **Example Solution**

1. **Tables**:

   - `Books`
   - `Authors`
   - `Borrowers`
   - `BorrowingRecords`

2. **Relationships**:

   - A book can have one author (**One-to-One**).
   - An author can write multiple books (**One-to-Many**).
   - A borrower can borrow multiple books (**One-to-Many**).
   - A book can be borrowed by multiple borrowers over time (**Many-to-Many**, requiring `BorrowingRecords`).

3. **Descriptions**:
   - `Books Table`: Stores book information.
   - `Authors Table`: Stores author information.
   - `Borrowers Table`: Stores borrower information.
   - `BorrowingRecords Table`: Tracks which borrower has borrowed which book and when.

---

When you’ve completed this, let me know so we can move to **Module 96: Data Normalization - First Steps**! 😊
