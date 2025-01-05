# Section 6 : Data Normalization & Relationships: Splitting & Joining Data

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28877098#overview)

### 📚 **97. Splitting Data Into Tables**

---

#### **Goal of the Module**

This module focuses on the practical steps to **split data into normalized tables**, ensuring a clean and efficient database design. You'll learn how to:

- Identify repeating data.
- Divide it into smaller tables.
- Establish relationships between the tables using keys.

---

### 🛠️ **Key Points**

1. **Why Split Data?**

   - **Eliminate Redundancy**: Avoid storing the same data multiple times.
   - **Improve Integrity**: Changes to one table automatically reflect in related tables.
   - **Scalability**: Smaller tables are easier to maintain and query.

2. **Steps to Split Data**

   - **Step 1**: Analyze the dataset to identify groups of related data.
   - **Step 2**: Separate data into distinct tables based on their purpose.
   - **Step 3**: Assign a **Primary Key** to each table for unique identification.
   - **Step 4**: Use **Foreign Keys** to link related tables.

3. **Example Scenario**

   - Original Table:  
     A single table storing student, course, and enrollment information:
     | StudentName | CourseName | EnrollmentDate |
     |-------------|-------------|----------------|
     | John Doe | Math 101 | 2024-01-10 |
     | Jane Smith | History 201 | 2024-01-12 |
     | John Doe | Physics 101 | 2024-01-15 |

   - Issues:
     - Repeated `StudentName` for each enrollment.
     - Repeated `CourseName` for each enrollment.

---

### 🧩 **Exercise: Splitting Tables**

#### **Scenario**

You are building a database for an e-commerce platform. Initially, all data is stored in one large `Orders` table:

| **OrderID** | **CustomerName** | **ProductName** | **OrderDate** | **Quantity** | **Price** |
| ----------- | ---------------- | --------------- | ------------- | ------------ | --------- |
| 1           | John Doe         | Laptop          | 2024-01-10    | 1            | 999.99    |
| 2           | Jane Smith       | Smartphone      | 2024-01-12    | 2            | 699.99    |
| 3           | John Doe         | Keyboard        | 2024-01-15    | 1            | 49.99     |

---

#### **Tasks**

1. **Analyze the Data**:

   - Identify repeating data.
   - Highlight what can be separated into distinct tables.

2. **Create New Tables**:

   - Split the data into:
     - `Customers Table`: Stores unique customer information.
     - `Products Table`: Stores unique product information.
     - `Orders Table`: Stores order-specific details.

3. **Define Relationships**:
   - Describe how these tables are related (e.g., `Orders` links to `Customers` and `Products`).

---

### **Expected Output**

1. **New Tables**:

   - **Customers Table**:
     | **CustomerID** | **CustomerName** |
     |----------------|------------------|
     | 1 | John Doe |
     | 2 | Jane Smith |

   - **Products Table**:
     | **ProductID** | **ProductName** | **Price** |
     |---------------|-----------------|-----------|
     | 1 | Laptop | 999.99 |
     | 2 | Smartphone | 699.99 |
     | 3 | Keyboard | 49.99 |

   - **Orders Table**:
     | **OrderID** | **CustomerID** | **ProductID** | **OrderDate** | **Quantity** |
     |-------------|----------------|---------------|---------------|--------------|
     | 1 | 1 | 1 | 2024-01-10 | 1 |
     | 2 | 2 | 2 | 2024-01-12 | 2 |
     | 3 | 1 | 3 | 2024-01-15 | 1 |

2. **Relationships**:
   - `Orders.CustomerID` → `Customers.CustomerID` (One-to-Many).
   - `Orders.ProductID` → `Products.ProductID` (One-to-Many).

---

Let me know when you're ready to move to **Module 98: Forms Of Data Normalization**! 😊
