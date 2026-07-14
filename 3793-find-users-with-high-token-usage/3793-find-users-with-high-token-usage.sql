-- "Write a solution to analyze AI prompt usage patterns based on the following requirements:

-- For each user, calculate the total number of prompts they have submitted.
-- For each user, calculate the average tokens used per prompt (Rounded to 2 decimal places).
-- Only include users who have submitted at least 3 prompts.
-- Only include users who have submitted at least one prompt with tokens greater than their own average token usage.
-- Return the result table ordered by average tokens in descending order, and then by user_id in ascending order"

with avgs as (select user_id , round(avg(tokens),2) as avg_tokens 
from prompts
group by user_id)


select p.user_id , count(p.prompt) as prompt_count , a.avg_tokens
from prompts p
join avgs a on p.user_id=a.user_id
group by p.user_id
having count(p.prompt) >=3 and (max(p.tokens) > a.avg_tokens)
order by a.avg_tokens desc