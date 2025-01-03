# Section 9: Built-in Query Functions & Operators

## **155. Using String Functions with INSERT**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29327892#overview)
- [github - repo - statement-add-user#1](https://github.com/academind/sql-complete-guide-code/blob/09-built-in-query-functions/sql/create-project/03.01-add-user.sql)
- [github - repo - statement-add-user#2](https://github.com/academind/sql-complete-guide-code/blob/09-built-in-query-functions/sql/create-project/03.02-add-user.sql)

### **Lesson 155: Using String Functions with INSERT**

---

### **Overview**

This lesson builds on string functions and demonstrates how they can be used during data insertion. You will learn how to apply string transformations while inserting data into a table.

---

### **Key Concepts**

#### 1. **Using String Functions in INSERT Statements**

You can use string functions like `UPPER()`, `LOWER()`, `CONCAT()`, and others to modify or format data before it is stored in the table.

---

### **Example Table**

Consider the `members` table:

```sql
CREATE TABLE IF NOT EXISTS members (
    member_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    full_name VARCHAR(100),
    email VARCHAR(100)
);
```

---

### **Example Scenarios**

#### 1. **Concatenating Full Name During Insert**

Instead of storing separate first and last names, generate and insert a concatenated full name.

```sql
INSERT INTO members (first_name, last_name, full_name)
VALUES ('John', 'Doe', CONCAT('John', ' ', 'Doe'));
```

#### 2. **Inserting Data with Uppercased Names**

Automatically capitalize names during insertion.

```sql
INSERT INTO members (first_name, last_name, full_name)
VALUES (
    UPPER('john'),
    UPPER('doe'),
    UPPER(CONCAT('john', ' ', 'doe'))
);
```

#### 3. **Formatting Emails**

Ensure email addresses are stored in lowercase.

```sql
INSERT INTO members (first_name, last_name, email)
VALUES (
    'Jane',
    'Smith',
    LOWER('Jane.Smith@EXAMPLE.com')
);
```

#### 4. **Inserting Abbreviated Names**

Insert only the first letter of the first name followed by the last name.

```sql
INSERT INTO members (first_name, last_name, full_name)
VALUES (
    'Alice',
    'Brown',
    CONCAT(SUBSTRING('Alice' FROM 1 FOR 1), '. ', 'Brown')
);
```

---

### **Exercise**

Use the following requirements to insert data into the `members` table:

1. Insert a new member with:
   - First name: "Robert"
   - Last name: "Johnson"
   - Email: "Robert.Johnson@Example.COM" (stored in lowercase)
   - Full name automatically generated using concatenation.
2. Insert another member where:

   - First name: "Emma"
   - Last name: "Williams"
   - Email: Format to lowercase before inserting.
   - Full name stored in uppercase.

3. Create a query that checks if the transformations were applied correctly.

---
