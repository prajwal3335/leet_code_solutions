select id ,
sum( case when month = 'Jan' then revenue else Null end) as Jan_revenue,
sum( case when month = 'Feb' then revenue else Null end) as Feb_revenue,
sum( case when month = 'Mar' then revenue else Null end) as Mar_revenue,
sum( case when month = 'Apr' then revenue else Null end) as Apr_revenue,
sum( case when month = 'May' then revenue else Null end) as May_revenue,
sum( case when month = 'Jun' then revenue else Null end) as Jun_revenue,
sum( case when month = 'Jul' then revenue else Null end) as Jul_revenue,
sum( case when month = 'Aug' then revenue else Null end) as Aug_revenue,
sum( case when month = 'Sep' then revenue else Null end) as Sep_revenue,
sum( case when month = 'Oct' then revenue else Null end) as Oct_revenue,
sum( case when month = 'Nov' then revenue else Null end) as Nov_revenue,
sum( case when month = 'Dec' then revenue else Null end) as Dec_revenue
from Department
group by id