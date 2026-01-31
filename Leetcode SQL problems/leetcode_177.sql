-- Leetcode 177: Nth Highest Salary

CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
SET N = N - 1;
  RETURN (=
      SELECT 
        DISTINCT salary AS getNthHighestSalary
      FROM 
        Employee
      ORDER BY 
        salary DESC
      LIMIT 1 OFFSET N
  );
END

-- EXPLANATION:
-- We sort the list by salaries in descending order, use LIMIT to only grab 1 result, and then use OFFSET to skip the first N-1 results to get the Nth row.