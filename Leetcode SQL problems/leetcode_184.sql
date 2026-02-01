-- Leetcode 184: Department Highest Salary 

WITH Rankings AS (
    SELECT 
        name, 
        salary, 
        departmentId, 
        RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM 
        Employee
        )

SELECT 
    department.name AS Department, 
    rankings.name AS Employee, 
    rankings.salary AS Salary
FROM 
    Rankings
JOIN 
    Department
    ON 
    rankings.departmentId = department.id
WHERE 
	rnk = 1
    
-- EXPLANATION: 
-- Create a CTE where we use RANK to find the highest salary by each department. We then join the department table to get the department names
