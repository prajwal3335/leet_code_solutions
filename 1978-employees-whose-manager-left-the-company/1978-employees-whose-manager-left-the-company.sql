# employees whose salary is strictly less than $30000
-- whose manager left the company
-- ordered by employee_id

select e.employee_id
from Employees e
left join Employees m on e.manager_id = m.employee_id
where (e.salary < 30000)
  AND e.manager_id IS NOT NULL 
  AND m.employee_id IS NULL
order by e.employee_id