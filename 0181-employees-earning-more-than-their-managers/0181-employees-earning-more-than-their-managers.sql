Select e.name as Employee
from Employee e 
join Employee m on m.id = e.managerID
where e.salary>m.salary
