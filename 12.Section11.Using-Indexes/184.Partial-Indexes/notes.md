# Section 11 : Using indexes

## **Lesson 184: Partial Indexes**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28926796#overview)

---

#### **Key Concepts Covered**

1. **What is a Partial Index?**

   - An index that includes only rows meeting a specified condition.
   - Saves storage space and improves performance for queries targeting specific subsets of data.

2. **When to Use Partial Indexes**:

   - When a query consistently filters on a specific condition.
   - Example: Filtering only active memberships or high-value orders.

   ```sql
   SELECT * FROM membershiprecords WHERE EndDate > CURRENT_DATE;
   ```

3. **Partial Index Syntax**:

   - Create an index with a condition:
     ```sql
     CREATE INDEX idx_active_memberships
     ON membershiprecords(EndDate)
     WHERE EndDate > CURRENT_DATE;
     ```

4. **Advantages**:

   - Reduces index size by indexing only relevant rows.
   - Improves query performance for specific conditions.

5. **Limitations**:
   - Only beneficial for queries matching the condition in the index.
   - May not be used for general queries without the condition.

---

#### **Exercise: Creating and Using Partial Indexes**

1. **Create a Partial Index**:

   - Index only active memberships in the `membershiprecords` table.

   ```sql
   CREATE INDEX idx_active_memberships
   ON membershiprecords(EndDate)
   WHERE EndDate > CURRENT_DATE;
   ```

2. **Test the Partial Index**:

   - Run a query targeting active memberships and observe the query plan.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM membershiprecords WHERE EndDate > CURRENT_DATE;
   ```

3. **Query Without Matching the Condition**:

   - Test a query that doesn’t match the condition in the partial index.

   ```sql
   EXPLAIN ANALYZE SELECT * FROM membershiprecords WHERE EndDate <= CURRENT_DATE;
   ```

4. **Compare with a Full Index**:

   - Create a standard index on the `EndDate` column and compare performance.

   ```sql
   CREATE INDEX idx_enddate ON membershiprecords(EndDate);

   EXPLAIN ANALYZE SELECT * FROM membershiprecords WHERE EndDate > CURRENT_DATE;
   ```

5. **Drop Unused Indexes**:

   - Remove the standard index if it’s redundant.

   ```sql
   DROP INDEX idx_enddate;
   ```

---

### **Key Takeaways**

1. Partial indexes are powerful for queries targeting specific subsets of data.
2. Use conditions that align with frequent query patterns.
3. Avoid partial indexes for columns that require full coverage.

---

Let me know if you’re ready for **Lesson 185: Covering Indexes**! 🚀
