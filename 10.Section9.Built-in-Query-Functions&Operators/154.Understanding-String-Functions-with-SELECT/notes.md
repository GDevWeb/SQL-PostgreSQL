# Section 9: Built-in Query Functions & Operators

## **Lesson 154: Understanding String Functions with SELECT**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29327494#overview)
- [postgres - documentation - String Functions and Operators ](https://www.postgresql.org/docs/14/functions-string.html)
- [mysql - documentation - String Functions and Operators ](https://www.postgresql.org/docs/14/functions-string.html)

---

### **Overview**

This lesson introduces common string functions in SQL and demonstrates how to manipulate and process string data within queries. You will learn how to:

1. Modify string values.
2. Extract specific portions of strings.
3. Format and transform text data.

---

### **Key Concepts**

#### 1. **String Concatenation**

- Use `||` to combine strings.
  ```sql
  SELECT first_name || ' ' || last_name AS full_name
  FROM members;
  ```

#### 2. **UPPER() & LOWER()**

- Converts a string to uppercase or lowercase.
  ```sql
  SELECT UPPER(first_name) AS upper_name, LOWER(last_name) AS lower_name
  FROM members;
  ```

#### 3. **SUBSTRING()**

- Extracts a portion of a string.
  ```sql
  SELECT SUBSTRING(first_name FROM 1 FOR 3) AS name_abbreviation
  FROM members;
  ```

#### 4. **LENGTH()**

- Returns the length of a string.
  ```sql
  SELECT LENGTH(first_name) AS name_length
  FROM members;
  ```

#### 5. **TRIM(), LTRIM(), RTRIM()**

- Removes unwanted spaces or characters from strings.
  - `TRIM()` removes spaces from both ends.
  - `LTRIM()` removes spaces from the left.
  - `RTRIM()` removes spaces from the right.
  ```sql
  SELECT TRIM('  John Doe  ') AS trimmed_name;
  ```

#### 6. **REPLACE()**

- Replaces occurrences of a substring within a string.
  ```sql
  SELECT REPLACE(first_name, 'a', 'o') AS replaced_name
  FROM members;
  ```

#### 7. **POSITION()**

- Finds the position of a substring within a string.
  ```sql
  SELECT POSITION('o' IN first_name) AS position_of_o
  FROM members;
  ```

#### 8. **CONCAT()**

- Combines multiple strings.
  ```sql
  SELECT CONCAT(first_name, ' ', last_name) AS full_name
  FROM members;
  ```

---

### **Example Queries**

1. **Creating Full Names:**
   Combine the first and last names of members into a single column.

   ```sql
   SELECT CONCAT(first_name, ' ', last_name) AS full_name
   FROM members;
   ```

2. **Extracting Initials:**
   Create a column with the first initial and last name.

   ```sql
   SELECT CONCAT(SUBSTRING(first_name FROM 1 FOR 1), '. ', last_name) AS name_with_initial
   FROM members;
   ```

3. **Formatting Names:**
   Display names in uppercase and lowercase for comparison.

   ```sql
   SELECT UPPER(first_name) AS upper_name, LOWER(last_name) AS lower_name
   FROM members;
   ```

4. **Replacing Characters:**
   Replace spaces with underscores in a member’s full name.
   ```sql
   SELECT REPLACE(CONCAT(first_name, ' ', last_name), ' ', '_') AS underscored_name
   FROM members;
   ```

---

### **Exercise**

1. Extract the first three letters of each member’s first name and display them alongside the full name.
2. Find the position of the letter `a` in each member’s first name.
3. Trim all unnecessary spaces from the `membership_type` column and convert it to uppercase.

---

Let me know when you’re ready to proceed to the next lesson or if you need assistance with the exercises!
