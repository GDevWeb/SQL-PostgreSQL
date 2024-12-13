/* ****Module 87: Working with Dates & Date Differences**** */

/* Practice Tasks */

-- 1.Calculate Fulfillment Time:
-- Retrieve all sales and calculate the number of days between date_created and date_fulfilled.
SELECT product_name, volume, date_created, date_fulfilled,
(date_fulfilled - date_created) AS number_of_days
FROM sales
ORDER BY number_of_days DESC;

-- 2.Filter Recent Sales:
-- Find all sales created within the last 10 days.
SELECT product_name, date_created,
CURRENT_TIMESTAMP as today
FROM sales
WHERE
date_created >= CURRENT_DATE - INTERVAL '10 days';

-- 3.Predict Fulfillment Date:
-- For sales where date_fulfilled is NULL, predict a fulfillment date by adding 5 days to date_created.
SELECT 
    product_name, 
    date_created,
    date_fulfilled,
    date_created + INTERVAL '5 days' AS predicted_fulfillment_date
FROM 
    sales
WHERE 
    date_fulfilled IS NULL;

-- 4.Extract Date Parts:
-- List all sales with the year, month, and day extracted from date_created.
SELECT 
product_name, 
volume,
EXTRACT(YEAR FROM date_created) AS year,
EXTRACT(MONTH FROM date_created) AS month,
EXTRACT(DAY FROM date_created) AS DAY
FROM sales;

-- 5.Filter by Fulfillment Time:
-- Find all sales where the fulfillment time is 3 days or fewer.
-- SELECT 
--     product_name, 
--     date_created,
--     date_fulfilled,
--     date_fulfilled - date_created AS fulfillment_duration
-- FROM 
--     sales
-- WHERE 
--     date_fulfilled - date_created <= INTERVAL '3 days';

