# Write a solution to report the ids and the names of all managers number of reportees and avg age of reportees to nearest int
-- order by employee_id.

-- e | employee_id | name    | reports_to | age |   to   m | employee_id | name    | reports_to | age |
select m.employee_id, m.name, count(e.employee_id) as reports_count , round(avg(e.age)) as average_age 
from Employees e
join Employees m on m.employee_id = e.reports_to
group by m.employee_id
order by m.employee_id