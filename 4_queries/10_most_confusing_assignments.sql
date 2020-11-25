select assignments.id, assignments.name, assignments.day, assignments.chapter,  count(assistance_requests.id) as total_requests
from assignments
join assistance_requests on assignment_id = assignments.id
group by assignments.id
order by total_requests desc
