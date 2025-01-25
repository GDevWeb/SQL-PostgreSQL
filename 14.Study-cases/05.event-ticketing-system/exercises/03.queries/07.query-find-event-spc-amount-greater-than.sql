/* Queries */ 

--7.Find events with a revenue greater than a specific amount.

-- CREATE OR REPLACE VIEW greater_event AS  

-- CREATE OR REPLACE VIEW topEvent AS
SELECT
  e.event_id,
  e.event_name,
  e.price,
  SUM(b.tickets * e.price) AS total_revenue
FROM
  Bookings b
JOIN
  Events e ON b.event_id = e.event_id
  GROUP BY 
  e.event_id,
  e.event_name
  HAVING
  SUM(b.tickets * e.price) > 300 LIMIT 1; --Music Festival
