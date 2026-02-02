-- Leetcode 1174: Immediate Food Delivery II 
SELECT 
    ROUND(AVG(order_date = customer_pref_delivery_date)*100, 2) as immediate_percentage
FROM 
    Delivery
WHERE 
    (customer_id, order_date) IN (
    SELECT 
        customer_id, min(order_date) 
    FROM 
        Delivery
    GROUP BY 
        customer_id
    )
    
-- EXPLANATION: 
-- We can use the Where clause to check 2 columns at the same time, if it exists in the subquery of customer_ids and their minimum order dates. We then calculate the average of orders being on the prefered order date. 