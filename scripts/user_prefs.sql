create table yelp_user_prefs as
select user_id, business_id, count(business_id) count_of_business
from yelp_user_visits
where business_id is not null
group by user_id, business_id
order by user_id, count_of_business desc;
