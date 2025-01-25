/* Queries */

-- 2.Find all bookings made by a specific user.

SELECT 
u.username,
b.user_id,
b.event_id,
b.tickets,
b.booking_time
FROM bookings AS b
INNER JOIN
users as u ON b.user_id = u.user_id
WHERE u.username = 'michael123'; 
