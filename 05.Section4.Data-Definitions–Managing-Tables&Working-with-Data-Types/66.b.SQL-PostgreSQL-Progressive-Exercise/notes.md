# 🚀 **SQL/PostgreSQL Progressive Exercise** 🚀

Let's start with a structured exercise to reinforce your SQL and PostgreSQL knowledge. We'll cover table creation, data insertion, queries, and constraints. The exercise will be broken into multiple steps, gradually increasing in complexity.

---

## 📝 **Exercise: Managing a Bookstore Database**

### 📚 **Step 1: Create Tables**

1. **Create a `books` table** with the following columns:

   - `BookID` (Primary Key, Auto-increment).
   - `Title` (Cannot be `NULL`, Unique).
   - `Author` (Cannot be `NULL`).
   - `Genre` (Use an `ENUM` type with values: `'Fiction'`, `'Non-Fiction'`, `'Fantasy'`, `'Science'`).
   - `Price` (Decimal with 2 decimal places, Must be greater than 0).
   - `Stock` (Integer, Default to 0, Cannot be negative).

2. **Create a `customers` table** with the following columns:
   - `CustomerID` (Primary Key, Auto-increment).
   - `FirstName` (Cannot be `NULL`).
   - `LastName` (Cannot be `NULL`).
   - `Email` (Unique).
   - `DateJoined` (Date, Default to the current date).

---

#### 🛒 **Step 2: Insert Data**

1. Insert **at least 5 books** into the `books` table with a mix of genres and prices.

2. Insert **at least 3 customers** into the `customers` table, ensuring each has a unique email.

3. Insert **one or two books** with `Stock` set to `0` to simulate out-of-stock books.

---

#### 🔍 **Step 3: Write Queries**

1. **Basic Query**:  
   Retrieve all books with their `Title`, `Author`, `Genre`, and `Price`.

2. **Filter by Genre**:  
   Select all books where the genre is `'Fiction'` or `'Fantasy'`.

3. **Out-of-Stock Books**:  
   List all books where the `Stock` is `0`.

4. **Search by Author**:  
   Find books written by a specific author (you choose the name).

5. **Sort by Price**:  
   Retrieve all books sorted by `Price` in **descending order**.

---

#### ⚠️ **Step 4: Constraints and Validation**

1. **Add a `CHECK` constraint** to ensure that the `Price` in the `books` table is always greater than `0`.

2. **Add a `CHECK` constraint** to ensure that the `Stock` cannot be negative.

3. **Update Constraint**:  
   Ensure that the `Email` in the `customers` table must contain `'@'`.

---

#### 🔄 **Step 5: Updates and Deletions**

1. **Update Stock**:  
   Increase the `Stock` of all books in the `'Science'` genre by `5`.

2. **Delete a Book**:  
   Delete a book with a specific `Title` (you choose the title).

---

### 📊 **Step 6: Reporting**

1. **Join Query**:  
   Create a query to display each customer and the books they have purchased (simulate this by imagining there's a `purchases` table).

2. **Count Query**:  
   Count the number of books in each genre.

---

### ✍️ **Tips and Hints**

1. **Think Step-by-Step**:

   - Start by creating the tables.
   - Insert data one row at a time to check for errors.

2. **Validate Constraints**:

   - Try inserting invalid data (e.g., negative prices) to ensure your constraints are working.

3. **Use `SELECT` Statements**:

   - Verify your data after each `INSERT`, `UPDATE`, or `DELETE`.

4. **Test Error Handling**:
   - Purposefully break constraints to see how PostgreSQL responds.

---

### 🌟 **Your English Feedback**

Your English is clear and understandable! Just a small correction:

- **"Correct my english if it need ..."**  
  **Correction**: "Correct my English if needed."

---

Enjoy your practice session! Let me know if you get stuck or need further clarification. 🚀💻😊
