-- Leetcode 178: Rank Scores

SELECT 
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) as 'rank'
FROM
    Scores
    
-- EXPLANATION: 
-- We use the DENSE_RANK() window function to assign a rank to each row. Unlike RANK(), DENSE_RANK() handles ties by giving them consecutive rankings instead of leaving a gap