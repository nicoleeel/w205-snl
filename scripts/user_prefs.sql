-- this query tallies up the total number of interactions a user has with a restaurant. the primary key is a combination of the user and the restaurant.
-- can show us users who have a favorite restaurant they visit most frequently
-- most users will not have more than 1 interaction with a restaurant, but for those that do, it will make it easier to provide recommendations to similar users

create table yelp_user_prefs as
select user_id, business_id, count(business_id) count_of_business
from yelp_user_actions
where business_id is not null
group by user_id, business_id
order by user_id, count_of_business desc;

