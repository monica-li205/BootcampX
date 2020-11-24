select cohorts.name as cohort_name, count(submission_date) as total_submissions
from cohorts
join students on cohorts.id = cohort_id 
join assignment_submissions on students.id = student_id
group by cohorts.name
order by count(submission_date) DESC
