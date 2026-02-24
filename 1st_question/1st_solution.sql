with cte as (select user_id, count(user_id) as users_num from tweets 
where YEAR(tweet_date)=2022 group by user_id)

select count(user_id) as tweet_bucket, users_num from cte group by 2 order by 1 ASC
