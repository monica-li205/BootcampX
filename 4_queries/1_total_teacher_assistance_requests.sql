select count(assistance_requests.*) as total_assistances, teachers.name as name
from teachers
join assistance_requests on teachers.id = teacher_id
where teachers.name = 'Waylon Boehm'
group by teachers.name

