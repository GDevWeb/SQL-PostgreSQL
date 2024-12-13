# 📚 **Section 5: Data Manipulation & Querying Operations With SQL** 📚

## 📚 **Module 86: Filtering Text Values** 📚

- [Udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28763142#overview)

---

### 🚀 **Goal of This Module**

In this module, you'll learn how to filter text values in SQL using the `WHERE` clause with various operators and techniques. This includes exact matches, pattern matching with wildcards, and case sensitivity considerations.

---

### 🛠️ **Basic Syntax for Filtering Text**

```sql
SELECT column1, column2
FROM table_name
WHERE text_column operator 'value';
```

- **`text_column`**: The column containing text data.
- **`operator`**: The comparison operator (`=`, `LIKE`, `ILIKE`, etc.).
- **`value`**: The text value to match or search for.

---

### ✅ **1. Exact Text Matching with `=`**

The `=` operator is used for exact text matches.

**Example**: Find all sales where the `customer_name` is **“Alice Johnson”**.

```sql
SELECT * FROM sales
WHERE customer_name = 'Alice Johnson';
```

---

### ✅ **2. Not Equal Matching with `<>` or `!=`**

Use `<>` or `!=` to filter rows where the text value does **not** match.

**Example**: Find all sales where the `product_name` is **not** “Laptop”.

```sql
SELECT * FROM sales
WHERE product_name != 'Laptop';
```

---

### 🔍 **3. Pattern Matching with `LIKE`**

The `LIKE` operator allows you to search for patterns in text using **wildcards**:

- **`%`**: Represents zero or more characters.
- **`_`**: Represents a single character.

#### Examples:

1. **Find Names Starting with a Specific Letter**  
   Find customers whose names start with **“A”**.

   ```sql
   SELECT * FROM sales
   WHERE customer_name LIKE 'A%';
   ```

2. **Find Names Ending with a Specific String**  
   Find product names that end with **“Card”**.

   ```sql
   SELECT * FROM sales
   WHERE product_name LIKE '%Card';
   ```

3. **Find Names Containing a Specific Word**  
   Find customers whose names contain **“son”**.

   ```sql
   SELECT * FROM sales
   WHERE customer_name LIKE '%son%';
   ```

4. **Find Names with a Specific Character Pattern**  
   Find customer names where the second character is **“l”**.

   ```sql
   SELECT * FROM sales
   WHERE customer_name LIKE '_l%';
   ```

---

### 🔄 **4. Case-Insensitive Matching with `ILIKE` (PostgreSQL)**

In PostgreSQL, use `ILIKE` for case-insensitive pattern matching.

**Example**: Find customers whose names contain **“john”** (case-insensitive).

```sql
SELECT * FROM sales
WHERE customer_name ILIKE '%john%';
```

✅ **Matches**:

- **“John Smith”**
- **“Alice Johnson”**

---

### ❗ **Special Considerations**

1. **Case Sensitivity**:

   - In many databases, `LIKE` is case-sensitive by default.
   - Use `ILIKE` in PostgreSQL for case-insensitive matching.

2. **Escaping Wildcards**:

   - If you need to search for literal `%` or `_`, use the **`ESCAPE`** clause.

   **Example**: Find product names containing **“50%”**.

   ```sql
   SELECT * FROM sales
   WHERE product_name LIKE '%50\%%' ESCAPE '\';
   ```

---

### 📝 **Combining Conditions**

You can combine text filters with **`AND`** and **`OR`** for more complex queries.

**Example**: Find sales where the `customer_name` starts with **“A”** or the `product_name` contains **“Card”**.

```sql
SELECT * FROM sales
WHERE customer_name LIKE 'A%' OR product_name LIKE '%Card%';
```

---

### 🧩 **Practice Tasks**

1. **Find Specific Customers**:  
   Retrieve all sales where the `customer_name` is **“Jane Doe”**.

2. **Find Products Containing “Phone”**:  
   Find all sales where the `product_name` contains the word **“Phone”**.

3. **Find Names Starting with “D”**:  
   Retrieve sales where the `customer_name` starts with the letter **“D”**.

4. **Case-Insensitive Search**:  
   Find sales where the `customer_name` contains **“smith”** (case-insensitive).

5. **Filter by Pattern**:  
   Retrieve sales where the `product_name` ends with **“er”**.

---

### 🌟 **Summary**

- **`=`** and **`!=`** for exact text matches.
- **`LIKE`** for pattern matching with wildcards `%` (multiple characters) and `_` (single character).
- **`ILIKE`** (PostgreSQL) for case-insensitive pattern matching.
- Combine conditions with **`AND`** and **`OR`** for more precise queries.
- Escape wildcards when searching for literal `%` or `_`.

Now go ahead and practice filtering text values with these techniques! 🚀😊
