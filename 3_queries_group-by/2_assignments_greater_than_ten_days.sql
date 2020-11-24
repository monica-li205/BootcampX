select day, count(day) as total_assignments 
from assignments
group by day
having count(day) >= 10
order by day

