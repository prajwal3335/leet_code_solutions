-- people who do not have any orders related to the company with the name "RED".

-- ppl who have sold to red 
with red_sales as (
    select o.sales_id 
    from Orders o
    left join Company c on c.com_id = o.com_id
    where c.name="RED")

select s.name
from SalesPerson s
where s.sales_id not in (
    Select sales_id
    from red_sales
)