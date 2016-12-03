create table review_loc as select 
    max(r.date) as date
    ,r.user_id as user_id
    ,first(r.business_id) as business_id
    ,first(b.latitude) as latitude
    ,first(b.longitude) as longitude

from
    (select * from yelp_review order by date desc) r
    left join 
    yelp_business b

on r.business_id = b.business_id

group by r.user_id;
