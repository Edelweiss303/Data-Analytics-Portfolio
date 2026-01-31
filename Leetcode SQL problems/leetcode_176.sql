-- Leetcode 176: Second Highest Salary

SELECT 
    MAX(salary) as SecondHighestSalary 
FROM
    Employee
WHERE 
    salary < (SELECT MAX(salary) FROM Employee)
    
-- EXPLANATION: 
-- Using a subquery, we find the highest salary, then find the next highest salary immediately before it.