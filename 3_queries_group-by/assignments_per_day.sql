SELECT assignments.day, SUM(total_assignments)
FROM assignments
GROUP BY day
ORDER BY day;

-- LHL answer for REFERENCE
-- SELECT day, count(*) as total_assignments 
-- FROM assignments
-- GROUP BY day
-- ORDER BY day;