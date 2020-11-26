select students.name as student, count(assignment_submissions.*) as total_submissions
from assignment_submissions
join students on students.id = student_id
where students.end_date is null
group by students.name
having count(assignment_submissions.*) < 100;
