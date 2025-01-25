/* Queries */

--List all users who booked tickets for a specific event.

SELECT 
u.username as userName,
e.event_name as eventName
FROM bookings as b
INNER JOIN
events AS e ON b.event_id = e.event_id
INNER JOIN
users AS u ON b.user_id = u.user_id
GROUP BY 
username,
eventName
HAVING e.event_name = 'Food Fair';