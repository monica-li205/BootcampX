select day, count(day) as total_assignments 
from assignments
group by day
order by day
