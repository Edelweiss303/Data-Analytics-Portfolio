-- Leetcode 1193: Monthly Transactions I

SELECT 
    LEFT(trans_date, 7) AS month,
    country,
    COUNT(state) as trans_count,
    SUM(state = 'approved') as approved_count,
    SUM(amount) as trans_total_amount,
    SUM((state = 'approved') * amount) as approved_total_amount
FROM 
    Transactions
GROUP BY 
    month,
    country
    
-- EXPLANATION:
-- We can use the LEFT function to extract a number of characters from a string starting from the left. 
-- We then group by month and country, and use COUNT to count all transactions in each group.
-- The main takeway here is that we use SUM to leverage the fact that boolean expressions return 1 for true, and 0 for false.