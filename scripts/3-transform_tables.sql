drop table if exists yelp_restaurants;

create table yelp_restaurants as select
business_id,
name,
categories,
full_address,
city,
state,
latitude,
longitude
from yelp_business
where categories rlike 'Restaurants';



