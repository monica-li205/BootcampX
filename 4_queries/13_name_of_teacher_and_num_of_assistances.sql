select teachers.name as teacher, (select name from cohorts where name = 'JUL02') as cohort, count(assistance_requests.*) as total_assistances
from assistance_requests
join teachers on teachers.id = teacher_id
group by teacher
