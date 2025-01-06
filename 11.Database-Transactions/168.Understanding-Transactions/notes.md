# Section 10 - Database Transactions

## **Lesson 168: Understanding Transactions**

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29340802#overview)
- [udemy - schema-what-are-transactions](img/schema-what-are-transactions.png)
- [postgresql - documentaion - transactions](https://www.postgresql.org/docs/8.3/tutorial-transactions.html)
- [mysql - documentaion - transactions](https://dev.mysql.com/doc/refman/8.0/en/commit.html)

### Key Points Covered:

1. **What is a Transaction?**

   - A transaction is a unit of work that is performed against a database.
   - It is a sequence of operations performed as a single logical unit of work.

2. **ACID Properties**:

   - **Atomicity**: All operations in a transaction are completed; if not, none are applied.
   - **Consistency**: Ensures data validity before and after a transaction.
   - **Isolation**: Concurrent transactions do not affect each other.
   - **Durability**: Changes made by a committed transaction persist even after a system failure.

3. **Common Commands**:
   - **BEGIN**: Starts a transaction.
   - **COMMIT**: Saves all the changes made during the transaction.
   - **ROLLBACK**: Reverts all changes made during the transaction.

---

#### Short Exercise:

1. Start a transaction.
2. Insert a new record into any table.
3. Rollback the transaction and verify the data.

```sql
-- Example:
BEGIN;
INSERT INTO members (firstname, lastname) VALUES ('Test', 'User');
ROLLBACK;
SELECT * FROM members; -- Verify the record was not saved.
```

Let me know when you’re ready for **Lesson 169: A Note About This Module's Project**!
