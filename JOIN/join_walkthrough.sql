-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students JOIN cohorts;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students JOIN cohorts ON cohort_id = cohorts.id;

-- Every JOIN must also have an ON.
-- The order does not matter here, so we could also write the exact same query like this:

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM cohorts JOIN students ON cohort_id = cohorts.id;
-- OR
-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students JOIN cohorts ON cohorts.id = cohort_id;

-- INNER JOIN
-- The kind of JOINing that we've done so far is called an INNER JOIN. 
-- In fact, we could rewrite the query to include the INNER keyword.

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students INNER JOIN cohorts ON cohorts.id = cohort_id;

-- An INNER JOIN will only give us rows where there is a match between the two tables. 
-- Any students with a cohort_id of NULL will not appear in the results of this kind of join.

-- OUTER JOIN
-- there are 3 different types of OUTER JOIN 
-- need to specify which one we want to perform: LEFT, RIGHT, or FULL.
-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- SELECT students.name as student_name, email, cohorts.name as cohort_name
-- FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;

-- An OUTER JOIN will join the tables similarly to an INNER JOIN but will return all results for one of the tables, even when the join condition is not met. For any row where the condition was not met, a row is added with NULL data.

-- This is where the LEFT, RIGHT, and FULL, come in. We use these to specify which table should have all of its rows returned, regardless of the condition being met.

-- 1. FROM students LEFT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 2. FROM students RIGHT OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- 3. FROM students FULL OUTER JOIN cohorts ON cohorts.id = cohort_id;
-- The first query will return all students because students is to the LEFT of the word JOIN.
-- The second query will return all of the cohorts because cohorts is to the RIGHT of the word JOIN.
-- The third query will return all rows from both tables, even when there is no match.

