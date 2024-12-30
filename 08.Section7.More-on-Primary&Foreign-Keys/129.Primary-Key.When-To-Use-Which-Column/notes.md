# More on Primary & Foreign keys

## 129. Primary Keys: When To Use Which Column

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/28916090#overview)

You learned that most tables should have a **PRIMARY KEY** and that often, an auto-incrementing ID will be used as a primary key. But you also learned that this is not a must-do—you can use any column as a primary key!

But when should you use which column? When should you use a user's email as a primary key, instead of an "artificially added" id column?

There are a couple of thoughts I want to share about this important question:

1. **Using an Auto-Incrementing ID Column**:

   - You can always use an auto-incrementing ID column if you want to or if you didn't find a better "real identification criteria" for a given table and its records.

2. **Using Another Column as a Primary Key**:

   - You could consider using another column (e.g., an email) if that is the "real identification criteria" of the table's records. For example, you could argue that users are uniquely identified via their email addresses—hence you could use the email column as a **PRIMARY KEY** column.

3. **Reasons for Adding an Artificial Primary Key (Surrogate Key)**:
   - **Unique IDs for Simplicity**: Even if users are uniquely identified by email addresses, you might still want unique IDs for users (e.g., to have a simpler and shorter unique value per user).
   - **Efficiency in Queries**: Some potential "real keys" might take up lots of memory and could therefore slow down queries. Auto-incrementing IDs might be more efficient, especially when working with lots of complex relationships.
   - **Avoiding Ambiguities**: Some columns might look unique at first but aren't when you think about them again. For example, the "street" of an address might be unique—but only per city. The same street name could exist in multiple cities or even countries.

Ultimately, it will always come down to a variety of factors:

- The exact use-case you have
- Experience
- Personal preferences

You should be open to looking for "real keys" instead of always automatically using auto-incrementing IDs, but you probably also shouldn't force it.
