-- Leetcode 550: Game Play Analysis IV 

WITH FirstLogin AS (
    SELECT 
        player_id, MIN(event_date) AS first_date
    FROM 
        Activity
    GROUP BY 
        player_id
)

SELECT 
    ROUND(COUNT(DISTINCT a.player_id) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2) AS fraction
FROM 
    Activity a
JOIN 
    FirstLogin f
    ON a.player_id = f.player_id
    AND a.event_date = DATE_ADD(F.first_date, INTERVAL 1 DAY);
    
-- EXPLANATION: 
-- We create a CTE to return the first login date for each player_id. We then the CTE to the Activity table based on player_id and if the first_date is 1 day after the event_date. Lastly, we count the number of results and divide it by the number of unique player_ids (found with a subquery). 