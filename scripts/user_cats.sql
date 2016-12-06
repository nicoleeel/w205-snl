-- this query finds the number of interactions every user has with a category of restaurant
-- results in a table with user_id and category and the number of interactions from yelp_user_actions
-- can show which category each user likes the most

-- for example, one user has interacted with Mexican restaurants 40 times, which is his highest count, so we can assume we likes Mexican restaurants, which will help in finding similar users and making recommendations

-- parses and splits the 'category' string to grab each category associated with the restaurant the user interacted with
-- merges them all together
-- counts number of times each category shows up per user

drop table if exists yelp_user_cats;

create table yelp_user_cats as
select total.user_id, total.category, count(total.category) count_of_category from
(
select user_id, split(substr(categories,3,length(categories)-4),'\', \'')[0] category
from yelp_user_actions
union all
select user_id, split(substr(categories,3,length(categories)-4),'\', \'')[1] category
from yelp_user_actions
union all
select user_id, split(substr(categories,3,length(categories)-4),'\', \'')[2] category
from yelp_user_actions
union all
select user_id, split(substr(categories,3,length(categories)-4),'\', \'')[3] category
from yelp_user_actions
union all
select user_id, split(substr(categories,3,length(categories)-4),'\', \'')[4] category
from yelp_user_actions
union all
select user_id, split(substr(categories,3,length(categories)-4),'\', \'')[5] category
from yelp_user_actions
union all
select user_id, split(substr(categories,3,length(categories)-4),'\', \'')[6] category
from yelp_user_actions
) total
where (total.category is not null and total.category!= 'Restaurants')
group by total.user_id, total.category
order by total.user_id, count_of_category desc;
