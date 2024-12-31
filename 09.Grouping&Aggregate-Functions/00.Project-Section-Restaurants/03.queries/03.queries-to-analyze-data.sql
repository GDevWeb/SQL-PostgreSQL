/* 
Thursday:

Task: Write queries to analyze the data.
Deliverables:
  Queries to calculate:
 */

--  1.  Total revenue (Billed + Tipped).
SELECT SUM(billed) as sumBilled, 
SUM(tipped) as sumTipped,
SUM(billed + tipped) as totalRevenue
FROM bookings;
  
-- 2.  Average tip per guest.
SELECT SUM(billed) as sumBilled, 
SUM(tipped) as sumTipped,
SUM(billed + tipped) as totalRevenue,
ROUND(AVG(guests),2) as TipPerGuest
FROM bookings;

--  3.  Total number of guests for a specific date.
SELECT SUM(guests) AS totalGuests, bookingDate
from bookings 
GROUP BY bookingDate
HAVING bookingDate = '2024-12-25';

--  4.  Number of bookings by payment method.
SELECT 
p.PaymentType as payment_method,
COUNT(b.BookingsID) AS number_of_bookings
FROM
PaymentMethod as p
INNER JOIN
bookings AS b
ON
p.PaymentMethodID = b.paymentmethodid
GROUP BY
p.PaymentType;

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