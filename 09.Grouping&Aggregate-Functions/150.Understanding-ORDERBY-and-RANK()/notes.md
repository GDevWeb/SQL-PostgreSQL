# Section 8 : Grouping & Aggregate Functions

## 150. Understanding ORDER BY and RANK()

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29289952#overview)

## Definitions

### ORDER BY

The ORDER BY clause in PostgreSQL is used to sort the result set of a query by one or more columns in either ascending or descending order. Here are some key points about using ORDER BY:

```sql
SELECT bookingDate, tipped, SUM(tipped)
FROM table_name
ORDER BY bookingDate ASC, tipped DESC;
```

### RANK

the RANK() function assigns a unique rank to each row within a partition of a result set. Rows that have the same value for the ranking criteria receive the same rank, but the next rank is skipped. For example, if two rows have the same rank, the next row will be ranked two positions lower.

```sql
SELECT *, RANK() OVER (PARTITION BY language ORDER BY id) AS rank
FROM programming_languages;
```
