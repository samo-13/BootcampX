-- Each assistance request is related to a bunch of data like a teacher, student, assignment, and more. We want to be able to see all important data about an assistance request.
-- Get important data about each assistance request.

-- Select the teacher's name, student's name, assignment's name, and the duration of each assistance request.
-- Subtract completed_at by started_at to find the duration.
-- Order by the duration of the request.

SELECT teachers.name, students.name, assignments.name, (completed_at - started_at) as duration
FROM assistance_requests
  JOIN students
  ON students.id = student_id
  JOIN teachers
  ON teachers.id = teacher_id
  JOIN assignments 
  ON assignments.id = assignment_id
  ORDER BY (completed_at - started_at) ASC;