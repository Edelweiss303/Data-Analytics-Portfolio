-- Leetcode 180: Consecutive Numbers

SELECT DISTINCT 
	l1.num as ConsecutiveNums
FROM 
	Logs l1
JOIN 
	Logs l2
	ON l1.id + 1 = l2.id
JOIN 
	Logs l3
	ON l2.id + 1 = l3.id
WHERE 
	l1.num = l2.num and l2.num = l3.num
    
-- EXPLANATION: 
-- Join the table on to itself twice by comparing consecutive ids. Grab only the rows where the 3 'num' columns are the same.
