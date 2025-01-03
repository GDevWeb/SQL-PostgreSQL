# Section 9: Built-in Query Functions & Operators

## **Lesson 153: Working with Mathematical Functions & Arithmetic Operators**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29327488#overview)
- [postgres - documentation - Mathematical Functions and Operators ](https://www.postgresql.org/docs/9.5/functions-math.html)
- [mysql - documentation - Mathematical Functions and Operators ](https://dev.mysql.com/doc/refman/8.0/en/mathematical-functions.html)

### Overview

This lesson will cover:

1. Arithmetic operations in SQL (addition, subtraction, multiplication, division, modulo).
2. Using built-in mathematical functions like `ROUND()`, `CEIL()`, `FLOOR()`, and more.
3. Combining arithmetic operations with SQL queries.

---

### **Key Concepts**

#### 1. Arithmetic Operators

These operators can be used directly in SQL queries for calculations:

- **Addition (`+`)**
- **Subtraction (`-`)**
- **Multiplication (`*`)**
- **Division (`/`)**
- **Modulo (`%`)**: Returns the remainder of a division.

**Example:**

```sql
SELECT price, price * 0.9 AS discounted_price
FROM membership_types;
```

#### 2. Common Mathematical Functions

- **`ROUND(value, decimal_places)`**: Rounds a number to the specified decimal places.

  ```sql
  SELECT ROUND(price, 2) AS rounded_price
  FROM membership_types;
  ```

- **`CEIL(value)`**: Rounds a number up to the nearest integer.

  ```sql
  SELECT CEIL(price) AS rounded_up_price
  FROM membership_types;
  ```

- **`FLOOR(value)`**: Rounds a number down to the nearest integer.

  ```sql
  SELECT FLOOR(price) AS rounded_down_price
  FROM membership_types;
  ```

- **`POWER(base, exponent)`**: Raises a number to the power of another.

  ```sql
  SELECT POWER(2, 3) AS two_cubed;
  ```

- **`SQRT(value)`**: Calculates the square root of a number.

  ```sql
  SELECT SQRT(16) AS square_root;
  ```

- **`ABS(value)`**: Returns the absolute value of a number.
  ```sql
  SELECT ABS(-10) AS absolute_value;
  ```

#### 3. Using Arithmetic with Data

Combine arithmetic operators and mathematical functions with your table data to generate insights.

**Examples:**

1. Calculate the total revenue per membership:

   ```sql
   SELECT membership_id, price * COUNT(*) AS total_revenue
   FROM memberships
   GROUP BY membership_id;
   ```

2. Apply a 5% discount on all prices:

   ```sql
   SELECT membership_id, ROUND(price * 0.95, 2) AS discounted_price
   FROM membership_types;
   ```

3. Find out how much each customer has spent:
   ```sql
   SELECT m.first_name, m.last_name, SUM(mt.price) AS total_spent
   FROM members m
   JOIN memberships ms ON m.id = ms.member_id
   JOIN membership_types mt ON ms.type_id = mt.id
   GROUP BY m.first_name, m.last_name;
   ```

---

### Exercise

1. **Basic Arithmetic:**
   Write a query that calculates a 10% tax on all membership types and displays the original price alongside the tax and total price.

2. **Using Functions:**
   Calculate the square root of each price and round it to 2 decimal places.

3. **Revenue Calculation:**
   Use `SUM()` and `COUNT()` to calculate the total revenue generated for each membership type.

---

When you've practiced these, let me know your progress, and we can move to the next lesson or review your queries together!
