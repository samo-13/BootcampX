-- Get the cohort with the longest average duration of assistance requests.

-- The same requirements as the previous query, but only return the single row with the longest average.

SELECT cohorts.name as name, 
avg(completed_at - started_at) as average_assistance_time
FROM students
  JOIN cohorts ON cohorts.id = cohort_id
    JOIN assistance_requests ON student_id = students.id
  GROUP BY cohorts.name
  ORDER BY average_assistance_time DESC
  LIMIT 1;