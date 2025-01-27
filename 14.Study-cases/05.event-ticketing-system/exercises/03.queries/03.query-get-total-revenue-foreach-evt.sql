/* Queries */

--3.Get the total revenue generated for each event.

SELECT 
    e.event_id,
    e.event_name,
    SUM(b.tickets * e.price) AS total_revenue
FROM bookings AS b
INNER JOIN events AS e ON b.event_id = e.event_id
GROUP BY e.event_id, e.event_name;
