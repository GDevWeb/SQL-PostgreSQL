/* Queries */
--6.Calculate the average ticket price for all events.

SELECT 
    ROUND(AVG(price)) AS avg_ticket_price 
FROM Events;

-- CREATE OR REPLACE VIEW  avg_ticket_price AS
-- SELECT 
--     ROUND(AVG(price)) AS avg_ticket_price 
-- FROM Events;

-- SELECT avg_ticket_price;