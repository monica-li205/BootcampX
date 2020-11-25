select distinct teachers.name as teacher, (select name from cohorts where name = 'JUL02') as cohort
from teachers
order by name
