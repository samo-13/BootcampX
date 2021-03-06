-- Get all cohorts with 18 or more students.
SELECT cohorts.name as cohort, count(students.*) as student_count
FROM cohorts
JOIN students 
ON cohorts.id = cohort_id
GROUP BY cohort
HAVING count(students.*) >= 18
ORDER BY student_count;

