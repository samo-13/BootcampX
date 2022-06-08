-- SELECT *
-- FROM students
-- WHERE NOT email LIKE '%gmail%'
-- AND phone IS NULL;

-- ASK WHY THE ABOVE AND BELOW BOTH WORK SEE LIKE 3 AND 10

SELECT *
FROM students
WHERE email NOT LIKE '%gmail%'
AND phone IS NULL;