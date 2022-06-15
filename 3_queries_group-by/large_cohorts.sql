-- SELECT *
-- FROM cohorts
-- JOIN students
-- ON cohorts.id
-- = students.cohort_id

-- Get all cohorts with 18 or more students.

-- dummy code
-- select the cohort name from the cohorts table and specify column title
-- select the total students in each cohort -- count all students 

SELECT cohorts.name as cohort, count(students.*) as student_count
FROM cohorts
JOIN students 
ON cohorts.id = cohort_id
GROUP BY cohort
HAVING count(students.*) >= 18
ORDER BY student_count;

