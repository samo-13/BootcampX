-- We need to be able to see the total amount of time being spent on an assistance request for each cohort. This number will tell use how much time is being spent on assistance requests for each cohort.

-- Get the total duration of all assistance requests for each cohort.

-- Select the cohort's name and the total duration the assistance requests.
-- Order by total_duration.
-- Look at the ERD to see how to join the tables.

SELECT cohorts.name, SUM(completed_at - created_at) as total_duration
FROM students
  JOIN cohorts ON cohorts.id = cohort_id
    JOIN assistance_requests ON student_id = students.id
  GROUP BY cohorts.name
  ORDER BY cohorts.name;