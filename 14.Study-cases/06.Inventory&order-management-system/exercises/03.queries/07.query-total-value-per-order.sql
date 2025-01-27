/* Queries */

--7.Calculate the total value of an order, including all products.

SELECT 
    o.order_id,
    o.customer_name,
    o.order_date,
    SUM(od.quantity * p.price) AS total_order_value
FROM 
    Orders AS o
INNER JOIN 
    OrderDetails AS od ON o.order_id = od.order_id
INNER JOIN 
    Products AS p ON od.product_id = p.product_id
GROUP BY 
    o.order_id, o.customer_name, o.order_date
ORDER BY 
    o.order_date DESC;
