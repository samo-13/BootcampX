-- Get the total number of assignment submissions for each cohort.
-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions.

SELECT 
  cohorts.name AS cohort,
  COUNT(assignment_submissions.id) AS total_submissions
FROM students
  JOIN assignment_submissions
  ON students.id = assignment_submissions.student_id
  JOIN cohorts
  ON students.cohort_id = cohorts.id
  GROUP BY cohorts.name
  ORDER BY COUNT(assignment_submissions.id) DESC;

-- LHL's answer
-- SELECT cohorts.name as cohort, count(assignment_submissions.*) as total_submissions
-- FROM assignment_submissions
-- JOIN students ON students.id = student_id
-- JOIN cohorts ON cohorts.id = cohort_id
-- GROUP BY cohorts.name
-- ORDER BY total_submissions DESC;