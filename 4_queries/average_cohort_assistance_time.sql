-- We need to be able to see the average duration of a single assistance request for each cohort.

-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.

SELECT cohorts.name as name, 
avg(completed_at - started_at) as average_assistance_time
FROM students
  JOIN cohorts ON cohorts.id = cohort_id
    JOIN assistance_requests ON student_id = students.id
  GROUP BY cohorts.name
  ORDER BY average_assistance_time ASC;