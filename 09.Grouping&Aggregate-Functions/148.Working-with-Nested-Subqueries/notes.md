# Section 8 : Grouping & Aggregate Functions

## chapter title

- [udemy](https://www.udemy.com/course/sql-the-complete-developers-guide-mysql-postgresql/learn/lecture/29287588#overview)

- examples

```sql
--  5.  Percentage of tables booked (capacity utilization).
SELECT
b.bookingDate AS booking_Date,
COUNT(b.tableID) AS tables_booked,
COUNT(t.tableID) AS total_tables,
(COUNT(b.tableID)*100/COUNT(t.tableID)) AS utilization_percentage
FROM
tables AS t
LEFT JOIN
bookings AS b
ON
t.tableid = b.tableid
WHERE
b.bookingdate = '2024-12-25'
GROUP BY
b.bookingdate;
```
