/* Queries */

--Find the most popular event based on the number of tickets sold.

SELECT  
e.event_name as event,
b.tickets,
SUM(b.tickets) as total_tickets_event
FROM bookings as b
INNER JOIN 
events as e ON b.event_id = e.event_id
GROUP BY
event_name,
tickets
ORDER BY total_tickets_event DESC LIMIT 3;

-- The result is : Food fair 8 - Art exhibition 5 - Music festival 4

--Just for training
CREATE OR REPLACE VIEW Top_3_Events
AS
SELECT  
e.event_name as event,
b.tickets,
SUM(b.tickets) as total_tickets_event
FROM bookings as b
INNER JOIN 
events as e ON b.event_id = e.event_id
GROUP BY
event_name,
tickets
ORDER BY total_tickets_event DESC LIMIT 3;
