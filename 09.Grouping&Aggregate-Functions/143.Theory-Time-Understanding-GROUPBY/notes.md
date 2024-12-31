# Section 8 : Grouping & Aggregate Functions

## 143. Theory Time - Understanding GROUP BY

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29257372#overview)

### GROUP BY

The GROUP BY clause in PostgreSQL is used to group rows that have the same values into summary rows. This is often used in conjunction with aggregate functions like SUM(), COUNT(), MAX(), MIN(), and AVG() to perform calculations on groups of data.

- example

```sql
SELECT BookingDate As date, SUM(guests) AS nr_guests
FROM BOOKINGS
GROUP BY BookingDate;
```
