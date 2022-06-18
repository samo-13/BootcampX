const { Pool } = require('pg');

// Using a Pool instead of Client is the preferred way to query with node-postgres. A Pool will manage multiple client connections for us which we don't really need to worry about right now. Just know that either could be used, but Pool is preferred.
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.connect();

const cohortName = process.argv[2];
const limit = process.argv[3] || 5;
// Store all potentially malicious values in an array.
const values = [`%${cohortName}%`, limit];
const query = `
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name LIKE $1
LIMIT $2;
`

pool.query(query, values)
.then(res => {
  res.rows.forEach(user => {
    console.log(`${user.name} has an id of ${user.student_id} and was in the ${user.cohort} cohort`);
  })
}).catch(err => console.error('query error', err.stack));