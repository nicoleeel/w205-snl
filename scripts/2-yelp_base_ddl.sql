drop table if exists yelp_business;
create external table if not exists yelp_business(
row_number string,
at_ambience_divey string,
at_dietary_restrictions_vegan string,
at_happy_hour string,
hours_thursday_open string,
at_order_at_counter string,
at_hair_types_specialized_in_africanamerican string,
at_hair_types_specialized_in_kids string,
at_byob string,
hours_friday_open string,
at_good_for_latenight string,
at_outdoor_seating string,
at_alcohol string,
at_ambience_classy string,
at_by_appointment_only string,
at_parking_lot string,
business_id string,
at_ambience_touristy string,
at_corkage string,
hours_tuesday_open string,
at_good_for_brunch string,
categories string,
at_waiter_service string,
hours_monday_open string,
name string,
at_parking_street string,
at_ambience_hipster string,
at_byob_corkage string,
at_hair_types_specialized_in_straightperms string,
at_music_live string,
at_dietary_restrictions_dairy string,
at_music_background_music string,
at_price_range string,
at_good_for_breakfast string,
at_parking_garage string,
at_music_karaoke string,
at_good_for_dancing string,
review_count string,
at_hair_types_specialized_in_asian string,
state string,
at_accepts_credit_cards string,
hours_friday_close string,
at_good_for_lunch string,
at_parking_valet string,
at_takeout string,
full_address string,
hours_thursday_close string,
at_hair_types_specialized_in_coloring string,
at_good_for_dessert string,
at_music_video string,
at_dietary_restrictions_halal string,
at_takes_reservations string,
hours_saturday_open string,
at_ages_allowed string,
at_ambience_trendy string,
at_delivery string,
hours_wednesday_close string,
at_wifi string,
open string,
city string,
at_wheelchair_accessible string,
at_dietary_restrictions_gluten string,
stars string,
at_dietary_restrictions_kosher string,
type string,
at_caters string,
at_ambience_intimate string,
latitude float,
at_good_for_dinner string,
at_coat_check string,
longitude float,
hours_monday_close string,
at_hair_types_specialized_in_extensions string,
hours_tuesday_close string,
hours_saturday_close string,
at_good_for_kids string,
at_parking_validated string,
hours_sunday_open string,
at_accepts_insurance string,
at_music_dj string,
at_dietary_restrictions_soy string,
at_has_tv string,
hours_sunday_close string,
at_ambience_casual string,
at_hair_types_specialized_in_perms string,
at_dogs_allowed string,
at_drivethru string,
at_dietary_restrictions_vegetarian string,
hours_wednesday_open string,
at_noise_level string,
at_smoking string,
at_attire string,
at_hair_types_specialized_in_curly string,
at_good_for_groups string,
neighborhoods string,
at_open_24_hours string,
at_ambience_romantic string,
at_music_jukebox string,
at_ambience_upscale string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "|",
"quoteChar" = '\"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/business';

drop table if exists yelp_checkin;
create external table if not exists yelp_checkin(
row_number string,
checkin90 int,
checkin91 int,
checkin92 int,
checkin93 int,
checkin94 int,
checkin95 int,
checkin96 int,
checkin202 int,
checkin203 int,
checkin200 int,
checkin201 int,
checkin206 int,
checkin204 int,
checkin205 int,
business_id string,
checkin121 int,
checkin120 int,
checkin123 int,
checkin122 int,
checkin125 int,
checkin124 int,
checkin126 int,
checkin21 int,
checkin156 int,
checkin154 int,
checkin155 int,
checkin152 int,
checkin153 int,
checkin150 int,
checkin151 int,
checkin171 int,
checkin11 int,
checkin224 int,
checkin225 int,
checkin226 int,
checkin220 int,
checkin221 int,
checkin222 int,
checkin223 int,
checkin20 int,
checkin112 int,
checkin113 int,
checkin110 int,
checkin111 int,
checkin116 int,
checkin114 int,
checkin115 int,
checkin165 int,
checkin164 int,
checkin166 int,
checkin161 int,
checkin160 int,
checkin163 int,
checkin162 int,
checkin10 int,
checkin72 int,
checkin12 int,
checkin13 int,
checkin14 int,
checkin15 int,
checkin16 int,
checkin73 int,
checkin70 int,
checkin41 int,
checkin40 int,
checkin43 int,
checkin42 int,
checkin45 int,
checkin44 int,
checkin25 int,
checkin46 int,
checkin26 int,
checkin52 int,
checkin53 int,
checkin192 int,
checkin193 int,
checkin190 int,
checkin191 int,
checkin196 int,
checkin194 int,
checkin195 int,
checkin23 int,
checkin22 int,
checkin65 int,
checkin24 int,
checkin54 int,
checkin55 int,
checkin56 int,
checkin71 int,
checkin76 int,
checkin51 int,
checkin74 int,
checkin75 int,
checkin32 int,
checkin62 int,
checkin216 int,
checkin215 int,
checkin214 int,
checkin213 int,
checkin212 int,
checkin211 int,
checkin210 int,
checkin85 int,
checkin84 int,
checkin86 int,
checkin_type string,
checkin80 int,
checkin83 int,
checkin82 int,
checkin50 int,
checkin170 int,
checkin81 int,
checkin172 int,
checkin173 int,
checkin174 int,
checkin175 int,
checkin176 int,
checkin143 int,
checkin142 int,
checkin141 int,
checkin140 int,
checkin146 int,
checkin145 int,
checkin144 int,
checkin134 int,
checkin135 int,
checkin136 int,
checkin130 int,
checkin131 int,
checkin132 int,
checkin133 int,
checkin106 int,
checkin105 int,
checkin104 int,
checkin103 int,
checkin102 int,
checkin101 int,
checkin100 int,
checkin35 int,
checkin231 int,
checkin230 int,
checkin233 int,
checkin232 int,
checkin235 int,
checkin234 int,
checkin236 int,
checkin30 int,
checkin05 int,
checkin04 int,
checkin06 int,
checkin01 int,
checkin00 int,
checkin03 int,
checkin02 int,
checkin36 int,
checkin66 int,
checkin34 int,
checkin64 int,
checkin63 int,
checkin33 int,
checkin61 int,
checkin60 int,
checkin31 int,
checkin186 int,
checkin185 int,
checkin184 int,
checkin183 int,
checkin182 int,
checkin181 int,
checkin180 int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "|",
"quoteChar" = '\"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/checkin';

drop table if exists yelp_review;
create external table if not exists yelp_review(
row_number string,
user_id string,
review_id string,
text string,
votes_cool int,
business_id string,
votes_funny int,
stars int,
date date,
type string,
votes_useful int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "|",
"quoteChar" = '\"',
"escapeChar" = "\\"
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/review';

drop table if exists yelp_tip;
create external table if not exists yelp_tip(
row_number string,
user_id string,
text string,
business_id string,
likes int,
tip_date date,
tip_type string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "|",
"quoteChar" = '\"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/tip';

drop table if exists yelp_user;
create external table if not exists yelp_user(
row_number string,
yelping_since date,
compliments_plain int,
review_count int,
friends string,
compliments_cute int,
compliments_writer int,
fans int,
compliments_note int,
user_type string,
compliments_hot int,
compliments_cool int,
compliments_profile int,
average_stars float,
compliments_more int,
elite string,
name string,
user_id string,
votes_cool int,
compliments_list int,
votes_funny int,
compliments_photos int,
compliments_funny int,
votes_useful int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = "|",
"quoteChar" = '\"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/user';
