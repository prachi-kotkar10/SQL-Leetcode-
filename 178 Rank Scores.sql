-- Write your MySQL query statement below

-- appraoch 1
SELECT Score, DENSE_RANK() OVER(ORDER BY Score DESC) AS 'Rank' 
FROM Scores

-- Appraoch 2

-- SELECT
--   Score,
--   (SELECT count(distinct Score)
--   FROM Scores
--   WHERE Score >= s.Score)
-- `Rank`
-- FROM Scores s
-- ORDER BY Score desc;