-- this query creates a table with rows of users and every interaction they had with a restaurant, whether it was a review or a tip. If the interaction is from a review, only reviews with 4 or 5 stars are included because we only want to see "positive" interactions with restaurants. Tips are assumed to be positive.

-- Filters out reviews less than 4 stars
-- Combines reviews and tips by user
-- Filters on only categories that include 'Restaurants'
-- Joins everything on user_id
-- Results in table with every interaction as a user_id x business_id pairing

-- Purpose: middle-step table for another query to call on

drop table if exists yelp_user_actions;

create table yelp_user_actions as
select actions.user_id, actions.business_id, rest.categories from ( 
	select u.user_id, r.business_id
	from yelp_user u
		left outer join
		yelp_review r
		on (u.user_id = r.user_id and r.stars>3)
	union all
	select u.user_id, t.business_id
	from yelp_user u
		left outer join
		yelp_tip t
	on u.user_id = t.user_id
	) actions
	join
	yelp_restaurants rest
	on (actions.business_id = rest.business_id)
order by actions.user_id, actions.business_id;

