drop table business_schema;

create table business_schema as select
business_id,
name,
type,
full_address,
city,
state,
latitude,
longitude
from yelp_business;

