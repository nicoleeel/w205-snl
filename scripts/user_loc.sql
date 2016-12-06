drop table if exists user_loc;

create table user_loc as select
    u.user_id as user_id
    ,r.latitude as latitude
    ,r.latitude - 0.01 as min_latitude
    ,r.latitude + 0.01 as max_latitude
    ,r.longitude as longitude
    ,r.longitude - 0.01 as min_longitude
    ,r.longitude + 0.01 as max_longitude
    
from 
    yelp_user u 
    left join
    review_loc r

on u.user_id = r.user_id

where r.latitude is not null;
