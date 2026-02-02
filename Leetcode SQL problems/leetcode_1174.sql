-- Leetcode 1174: Immediate Food Delivery II

With FirstOrders AS(
    SELECT 
        customer_id,
        MIN(order_date) as first_order
    FROM 
        Delivery
    GROUP BY
        customer_id  
)

SELECT
    ROUND(COUNT(DISTINCT d.customer_id) / (SELECT COUNT(DISTINCT customer_id) FROM Delivery) * 100, 2) as immediate_percentage
FROM
    Delivery d
JOIN
    FirstOrders f
    ON
    d.customer_id = f.customer_id
WHERE
    d.customer_pref_delivery_date = f.first_order
    
-- EXPLANATION: 
-- We use a CTE to group the table by customer_ids and find the earliest order_date. We then join the table with the CTE, and only grab the results where the prefered delivery date and first oder date are equal. And then We use a subquery to find the numbe rof unique ID's and calculate the percentage. 