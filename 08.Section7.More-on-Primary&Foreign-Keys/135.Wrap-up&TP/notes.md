# **Course: Deep Dive into Primary & Foreign Keys**

---

## **Module Overview**

### **What You’ll Learn**:

- Understand the nuances of **Primary Keys** beyond auto-incrementing IDs.
- Learn to design **Composite Primary Keys** for real-world scenarios.
- Explore **Composite Foreign Keys** for linking complex relationships.
- Master **Self-Referencing Relationships** for hierarchical data modeling.

---

## **1. Primary Keys: Beyond Auto-Increment IDs**

- **What Are Primary Keys?**
  - Uniquely identify each row in a table.
  - Typically used to prevent duplicate records.

### **Concept**:

- Primary keys don't always need to be numeric or auto-incremented.
- Consider meaningful columns like email or national ID for unique identification.

### **Example**:

```sql
CREATE TABLE Students (
    StudentID CHAR(9) PRIMARY KEY, -- e.g., National ID
    Name VARCHAR(100),
    BirthDate DATE
);
```

---

## **2. Composite Primary Keys**

### **What Are Composite Primary Keys?**

- A primary key that consists of two or more columns.
- Useful for **many-to-many relationships** or when a single column isn't enough.

### **Example: Many-to-Many Relationships**

**Scenario**: A course can have multiple students, and a student can enroll in multiple courses.

```sql
CREATE TABLE CourseEnrollment (
    StudentID INT,
    CourseID INT,
    EnrollmentDate DATE,
    PRIMARY KEY (StudentID, CourseID)
);
```

---

## **3. Composite Foreign Keys**

### **What Are Composite Foreign Keys?**

- A foreign key that references multiple columns in another table.

### **Example**:

**Scenario**: `OrderDetails` references both `Orders` and `Products` tables.

```sql
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    Quantity INT,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);
```

---

## **4. Self-Referencing Relationships**

### **What Are Self-Referencing Relationships?**

- A table where a column references the primary key of the same table.
- Used for hierarchical data like employees and their managers.

### **Example: Employee Hierarchy**

```sql
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    Name VARCHAR(100),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Employees(EmployeeID)
);
```

---

## **5. Self-Referencing Many-to-Many Relationships**

### **What Are They?**

- When items in the same table relate to each other in a many-to-many relationship.

### **Example: Friendships**

**Scenario**: Each person can have many friends, and each friendship involves two people.

```sql
CREATE TABLE Friendships (
    PersonID1 INT,
    PersonID2 INT,
    PRIMARY KEY (PersonID1, PersonID2),
    FOREIGN KEY (PersonID1) REFERENCES People(PersonID),
    FOREIGN KEY (PersonID2) REFERENCES People(PersonID)
);
```

---

# **Exercises**

## **Exercise 1: Composite Primary Keys**

1. Create a database called `School`.
2. Create tables for `Students`, `Courses`, and `Enrollments`.
3. Use composite primary keys in the `Enrollments` table to manage many-to-many relationships.
4. Write queries to:
   - Add data.
   - Retrieve a student's courses.
   - Retrieve all students in a specific course.

---

## **Exercise 2: Composite Foreign Keys**

1. Create tables for `Orders`, `Products`, and `OrderDetails`.
2. Use composite foreign keys in the `OrderDetails` table.
3. Write queries to:
   - Insert orders and related products.
   - Retrieve total quantities of products ordered.

---

## **Exercise 3: Self-Referencing Relationships**

1. Create an `Employees` table with `ManagerID` as a foreign key referencing the same table.
2. Write queries to:
   - Find all employees under a specific manager.
   - Display the hierarchy of employees.

---

## **Exercise 4: Self-Referencing Many-to-Many Relationships**

1. Create a `People` table and a `Friendships` table.
2. Write queries to:
   - Add friends for a person.
   - Find all friends of a specific person.

---

## **Module Summary**

- Primary keys ensure uniqueness and can involve meaningful or multiple columns.
- Composite keys are vital for linking data in complex relationships.
- Self-referencing relationships model hierarchies and many-to-many relationships effectively.
- Proper design of keys is critical for scalability and data integrity.

---

Let me know if you’d like the exercises expanded with sample solutions! 😊
