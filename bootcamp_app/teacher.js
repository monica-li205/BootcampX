const { Pool } = require('pg');

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = '${process.argv[2]}'
ORDER BY teacher;
`)
.then(res => {
    let i = 0;
    // console.log(`${res.rows.cohort}: ${res.rows.teacher}`);
    while (i < res.rows.length) {
      console.log(`${res.rows[0].cohort}: ${res.rows[i].teacher}`);
      i++;
    }
  })
.catch(err => console.error('query error', err.stack));

// .then(res => {
//   res.rows.forEach(row => {
//     console.log(`${row.cohort}: ${row.teacher}`);
//   })
// });