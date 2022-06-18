const { Pool } = require('pg');

// Using a Pool instead of Client is the preferred way to query with node-postgres. A Pool will manage multiple client connections for us which we don't really need to worry about right now. Just know that either could be used, but Pool is preferred.

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect();

const cohortName = process.argv[2] || 'JUL02'
const values = [cohortName];
const query = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = $1
ORDER BY teacher;
`

pool.query(query, values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${row.cohort}: ${row.teacher}`);
  })
});