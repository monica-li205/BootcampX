select cohorts.name, avg(completed_at- started_at)
from assistance_requests
join students on students.id = student_id
join cohorts on cohorts.id = cohort_id 
group by cohorts.name
order by avg(completed_at- started_at)
