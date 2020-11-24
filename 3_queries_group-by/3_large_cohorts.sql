select cohorts.name as cohort_name, count(cohorts.name) as student_count
from cohorts
join students on cohorts.id = cohort_id
group by cohorts.name
having count(cohorts.name) >= 18
