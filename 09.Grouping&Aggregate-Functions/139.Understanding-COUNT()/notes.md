# Section 8 : Grouping & Aggregate Functions

## 139. Understanding COUNT()

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29223980#overview)
- [udemy - git repo project](https://github.com/academind/sql-complete-guide-code/tree/08-grouping-aggregate-functions/sql/create-project)

- Creating DB and tables
- Practice COUNT()

### example

```sql
SELECT COUNT(*) FROM bookings; --global
SELECT COUNT(booking_date) FROM bookings; --specific
SELECT COUNT(DISTINCT booking_date) FROM bookings; --remove duplicated row
```

### new

- DISTINCT : is used to remove duplicate rows from a result set, ensuring that only unique rows are returned.
