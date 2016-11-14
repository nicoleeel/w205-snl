drop table yelp_user_visits;

create table yelp_user_visits as
select visits.user_id, visits.business_id from ( 
	select u.user_id, r.business_id
	from yelp_user u
		left outer join
		yelp_review r
		on u.user_id = r.user_id
	union all
	select u.user_id, t.business_id
	from yelp_user u
		left outer join
		yelp_tip t
	on u.user_id = t.user_id
	) visits
order by visits.user_id, visits.business_id;

