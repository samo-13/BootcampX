-- SELECT day, count(*) as total_assignments 
-- FROM assignments
--   WHERE SUM(total_assignments) >= 10
-- GROUP BY day
-- ORDER BY day;

SELECT day, count(*) as total_assignments 
FROM assignments
GROUP BY day
HAVING count(*) >= 10
ORDER BY day;