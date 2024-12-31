# Section 8 : Grouping & Aggregate Functions

## Module overview

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29287582#overview)

**Section 8: Grouping & Aggregate Functions - Notes**

---

### Module Overview

This section covered the concepts of grouping data, performing calculations, and utilizing aggregate functions in SQL. Key focus areas included:

- 🔄 Understanding aggregate functions such as `COUNT`, `MIN`, `MAX`, `SUM`, and `AVG`.
- 🔄 Grouping data using `GROUP BY`.
- 🔄 Filtering grouped data using `HAVING`.
- 🔄 Combining grouping with filtering and joins for advanced data analysis.
- 🔄 Using window functions and ranking queries.

---

### Key Concepts and Syntax

#### 1. **Aggregate Functions**

- **COUNT()**: ✅ Counts rows in a group.
  ```sql
  SELECT COUNT(*) FROM bookings;
  ```
- **MIN() & MAX()**: ⬆️🔻 Finds the minimum or maximum value.
  ```sql
  SELECT MIN(price), MAX(price) FROM tables;
  ```
- **SUM()**: 💲 Calculates the total.
  ```sql
  SELECT SUM(billed) FROM bookings;
  ```
- **AVG()**: 🌟 Calculates the average.
  ```sql
  SELECT AVG(tipped) FROM bookings;
  ```

#### 2. **GROUP BY**

□ Groups rows with the same values in specified columns.

```sql
SELECT category, COUNT(*) FROM tables
GROUP BY category;
```

#### 3. **HAVING Clause**

❌ Filters grouped data based on aggregate results (unlike `WHERE`, which filters rows before grouping).

```sql
SELECT category, COUNT(*)
FROM tables
GROUP BY category
HAVING COUNT(*) > 1;
```

#### 4. **Window Functions**

⚙️ Applies calculations across a set of table rows related to the current row.

- **Syntax**:
  ```sql
  SELECT name, SUM(billed) OVER (PARTITION BY category) AS total_billed
  FROM tables;
  ```
- **Usage**:
  - `PARTITION BY`: Divides rows into groups.
  - `ORDER BY`: Specifies row ordering.

#### 5. **Ranking Functions**

▶️ Assigns ranks to rows based on a specified order.

- **RANK()**: ⬆️ Allows gaps in rank when there are ties.
  ```sql
  SELECT name, RANK() OVER (ORDER BY billed DESC) AS rank
  FROM bookings;
  ```
- **DENSE_RANK()**: ▶️ No gaps in ranking.
  ```sql
  SELECT name, DENSE_RANK() OVER (ORDER BY billed DESC) AS rank
  FROM bookings;
  ```
- **ROW_NUMBER()**: 🔢 Assigns a unique number to each row.

---

### Module Project: Restaurant Database

#### Database Schema

1. **Tables Table**:

   - 🆔 `ID` (Primary Key): Unique table identifier.
   - 📊 `Seats`: Number of seats.
   - 🔬 `Category`: Type of table (e.g., indoor, outdoor).

2. **Bookings Table**:

   - 🆔 `ID` (Primary Key): Unique booking identifier.
   - 🗓 `Booking Date`: Date of the booking.
   - 👥 `Guests`: Number of guests.
   - 💸 `Billed`: Total billed amount.
   - 💳 `Tipped`: Tip amount.
   - 🆔 `Payment ID`: Foreign key to the `Payment Methods` table.
   - 🆔 `Table ID`: Foreign key to the `Tables` table.

3. **Payment Methods Table**:
   - 🆔 `ID` (Primary Key): Unique payment method identifier.
   - 🔫 `Name`: Payment method (e.g., cash, card).

#### Example Queries

1. **Count Total Bookings**:

   ```sql
   SELECT COUNT(*) FROM bookings;
   ```

2. **Find Minimum and Maximum Billed Amounts**:

   ```sql
   SELECT MIN(billed), MAX(billed) FROM bookings;
   ```

3. **Calculate Total Tips by Payment Method**:

   ```sql
   SELECT pm.name, SUM(b.tipped) AS total_tips
   FROM bookings b
   JOIN payment_methods pm ON b.payment_id = pm.id
   GROUP BY pm.name;
   ```

4. **Rank Tables by Total Seats**:

   ```sql
   SELECT id, seats, RANK() OVER (ORDER BY seats DESC) AS rank
   FROM tables;
   ```

5. **Find Average Billing per Table Category**:
   ```sql
   SELECT t.category, AVG(b.billed) AS avg_billed
   FROM bookings b
   JOIN tables t ON b.table_id = t.id
   GROUP BY t.category;
   ```

---

### Key Takeaways

1. **Grouping & Aggregating**: ✔️ Efficiently summarize and analyze large datasets.
2. **HAVING Clause**: 🔍 Enables filtering grouped data based on aggregated results.
3. **Window Functions**: 🔬 Offers flexibility for advanced analytics without collapsing rows.
4. **Ranking Queries**: 🏋 Useful for ranking, filtering, and partitioned analysis.

---

### Practice Recommendations

1. 🔢 Experiment with queries using `GROUP BY` and `HAVING` on the `restaurants` database.
2. ⚙️ Create your own scenarios involving window functions and ranking.
3. ✔️ Try writing complex queries that combine aggregate functions, joins, and filtering.

---

This summary consolidates the section’s content and provides actionable steps for further practice. Let me know if you'd like additional exercises or explanations!
