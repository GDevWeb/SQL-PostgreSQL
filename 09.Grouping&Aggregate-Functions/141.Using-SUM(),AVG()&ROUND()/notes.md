# Section 8 : Grouping & Aggregate Functions

## 141. Using SUM(), AVG() & ROUND()

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29224426#overview)

## SUM()

SUM() function calculates the total of a set of numeric values

- example :

```sql
SELECT SUM(billed) FROM bookings;
```

## AVG()

AVG function calculates the arithmetic mean of a set of numeric values.

- example :

```sql
SELECT AVG(guest) FROM bookings;
```

## ROUND()

The ROUND function in SQL is used to round the result of an AVG function to a specified number of decimal places.

- example :

```sql
SELECT ROUND(AVG(guest)) FROM bookings;
SELECT ROUND(AVG(guest),2) FROM bookings; --we can specific a delimiter
```
