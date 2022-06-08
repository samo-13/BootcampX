SELECT name, email, phone
FROM students
WHERE github IS NULL
-- Because we are looking at only graduates
AND end_date IS NOT NULL;