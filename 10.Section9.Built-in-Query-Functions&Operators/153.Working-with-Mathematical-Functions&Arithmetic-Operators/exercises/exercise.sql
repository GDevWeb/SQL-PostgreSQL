/* 
### Exercise
 */

/* 
1. **Basic Arithmetic:**
   Write a query that calculates a 10% tax on all membership types and displays the original price alongside the tax and total price.
 */
SELECT price AS originalPrice, 
ROUND(price * 0.1,2) as tax,
ROUND(price + (price*0.1),2) as totalPrice

FROM MembershipTypes;

/* 
2. **Using Functions:**
   Calculate the square root of each price and round it to 2 decimal places.
 */
SELECT price AS originalPrice, 
SQRT(price) as square_root

FROM MembershipTypes;

/* 
3. **Revenue Calculation:**
   Use `SUM()` and `COUNT()` to calculate the total revenue generated for each membership type.
 */

SELECT 
    mt.membershipid, 
    mt.price * COUNT(mr.membershipid) AS total_revenue_mensual
FROM membershiptypes mt
JOIN membershiprecords mr ON mt.membershipid = mr.membershipid
GROUP BY mt.membershipid, mt.price;
 
