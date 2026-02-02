-- Leetcode 2014: Last Person to Fit in the Bus
WITH RunningWeight AS (
    SELECT 
        person_name,
        SUM(weight) OVER (ORDER BY turn) AS running_weight
    FROM 
        Queue
)

SELECT 
    person_name
FROM
    RunningWeight
WHERE 
    running_weight <= 1000
ORDER BY
    running_weight DESC
LIMIT 1

-- EXPLANATION: 
-- We can use the SUM OVER window function to grab a running total of the weights ordered by turn.
-- We then simply grab the running totals <= 1000, ORDER BY the running total in descending order,
-- and grab the first result. 