select students.name, count(assistance_requests) as total_assistances
from students
join assistance_requests on students.id = student_id
where students.name = 'Elliot Dickinson'
group by students.name
