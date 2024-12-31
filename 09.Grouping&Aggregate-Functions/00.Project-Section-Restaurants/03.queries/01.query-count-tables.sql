/* 
4. **139. Understanding COUNT()** (11 min)

   - Practice counting rows in tables.
   - **Task**: Write a query to count:
     - All rows in a table.
     - Rows that meet specific conditions.
 */

SELECT COUNT(*) FROM tables; --5
SELECT COUNT(bookingDate) FROM bookings; --10
SELECT COUNT(DISTINCT bookingDate) FROM bookings; --7
SELECT COUNT(bookingDate) FROM bookings  WHERE bookingDate = '2024-12-30'; --1