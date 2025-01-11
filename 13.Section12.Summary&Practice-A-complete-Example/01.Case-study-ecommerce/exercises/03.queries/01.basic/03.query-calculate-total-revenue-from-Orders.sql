--Calculate total revenue from all orders.

SELECT
SUM(totalprice) as total_revenue
FROM OrderDetails;