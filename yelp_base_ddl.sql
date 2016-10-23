drop table yelp_business;
create external table if not exists yelp_business(
attributes_ambience_divey string,
attributes_dietary_restrictions_vegan string,
attributes_happy_hour string,
hours_thursday_open string,
attributes_order_at_counter string,
attributes_hair_types_specialized_in_africanamerican string,
attributes_hair_types_specialized_in_kids string,
attributes_byob string,
hours_friday_open string,
attributes_good_for_latenight string,
attributes_outdoor_seating string,
attributes_alcohol string,
attributes_ambience_classy string,
attributes_by_appointment_only string,
attributes_parking_lot string,
business_id string,
attributes_ambience_touristy string,
attributes_corkage string,
hours_tuesday_open string,
attributes_good_for_brunch string,
categories string,
attributes_waiter_service string,
hours_monday_open string,
name string,
attributes_parking_street string,
attributes_ambience_hipster string,
attributes_byob_corkage string,
attributes_hair_types_specialized_in_straightperms string,
attributes_music_live string,
attributes_dietary_restrictions_dairy string,
attributes_music_background_music string,
attributes_price_range string,
attributes_good_for_breakfast string,
attributes_parking_garage string,
attributes_music_karaoke string,
attributes_good_for_dancing string,
review_count string,
attributes_hair_types_specialized_in_asian string,
state string,
attributes_accepts_credit_cards string,
hours_friday_close string,
attributes_good_for_lunch string,
attributes_parking_valet string,
attributes_takeout string,
full_address string,
hours_thursday_close string,
attributes_hair_types_specialized_in_coloring string,
attributes_good_for_dessert string,
attributes_music_video string,
attributes_dietary_restrictions_halal string,
attributes_takes_reservations string,
hours_saturday_open string,
attributes_ages_allowed string,
attributes_ambience_trendy string,
attributes_delivery string,
hours_wednesday_close string,
attributes_wifi string,
open string,
city string,
attributes_wheelchair_accessible string,
attributes_dietary_restrictions_gluten string,
stars string,
attributes_dietary_restrictions_kosher string,
type string,
attributes_caters string,
attributes_ambience_intimate string,
latitude float,
attributes_good_for_dinner string,
attributes_coat_check string,
longitude float,
hours_monday_close string,
attributes_hair_types_specialized_in_extensions string,
hours_tuesday_close string,
hours_saturday_close string,
attributes_good_for_kids string,
attributes_parking_validated string,
hours_sunday_open string,
attributes_accepts_insurance string,
attributes_music_dj string,
attributes_dietary_restrictions_soy string,
attributes_has_tv string,
hours_sunday_close string,
attributes_ambience_casual string,
attributes_hair_types_specialized_in_perms string,
attributes_dogs_allowed string,
attributes_drivethru string,
attributes_dietary_restrictions_vegetarian string,
hours_wednesday_open string,
attributes_noise_level string,
attributes_smoking string,
attributes_attire string,
attributes_hair_types_specialized_in_curly string,
attributes_good_for_groups string,
neighborhoods string,
attributes_open_24_hours string,
attributes_ambience_romantic string,
attributes_music_jukebox string,
attributes_ambience_upscale string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/business';

drop table yelp_checkin;
create external table if not exists yelp_checkin(
checkin_info_90 int,
checkin_info_91 int,
checkin_info_92 int,
checkin_info_93 int,
checkin_info_94 int,
checkin_info_95 int,
checkin_info_96 int,
checkin_info_202 int,
checkin_info_203 int,
checkin_info_200 int,
checkin_info_201 int,
checkin_info_206 int,
checkin_info_204 int,
checkin_info_205 int,
business_id string,
checkin_info_121 int,
checkin_info_120 int,
checkin_info_123 int,
checkin_info_122 int,
checkin_info_125 int,
checkin_info_124 int,
checkin_info_126 int,
checkin_info_21 int,
checkin_info_156 int,
checkin_info_154 int,
checkin_info_155 int,
checkin_info_152 int,
checkin_info_153 int,
checkin_info_150 int,
checkin_info_151 int,
checkin_info_171 int,
checkin_info_11 int,
checkin_info_224 int,
checkin_info_225 int,
checkin_info_226 int,
checkin_info_220 int,
checkin_info_221 int,
checkin_info_222 int,
checkin_info_223 int,
checkin_info_20 int,
checkin_info_112 int,
checkin_info_113 int,
checkin_info_110 int,
checkin_info_111 int,
checkin_info_116 int,
checkin_info_114 int,
checkin_info_115 int,
checkin_info_165 int,
checkin_info_164 int,
checkin_info_166 int,
checkin_info_161 int,
checkin_info_160 int,
checkin_info_163 int,
checkin_info_162 int,
checkin_info_10 int,
checkin_info_72 int,
checkin_info_12 int,
checkin_info_13 int,
checkin_info_14 int,
checkin_info_15 int,
checkin_info_16 int,
checkin_info_73 int,
checkin_info_70 int,
checkin_info_41 int,
checkin_info_40 int,
checkin_info_43 int,
checkin_info_42 int,
checkin_info_45 int,
checkin_info_44 int,
checkin_info_25 int,
checkin_info_46 int,
checkin_info_26 int,
checkin_info_52 int,
checkin_info_53 int,
checkin_info_192 int,
checkin_info_193 int,
checkin_info_190 int,
checkin_info_191 int,
checkin_info_196 int,
checkin_info_194 int,
checkin_info_195 int,
checkin_info_23 int,
checkin_info_22 int,
checkin_info_65 int,
checkin_info_24 int,
checkin_info_54 int,
checkin_info_55 int,
checkin_info_56 int,
checkin_info_71 int,
checkin_info_76 int,
checkin_info_51 int,
checkin_info_74 int,
checkin_info_75 int,
checkin_info_32 int,
checkin_info_62 int,
checkin_info_216 int,
checkin_info_215 int,
checkin_info_214 int,
checkin_info_213 int,
checkin_info_212 int,
checkin_info_211 int,
checkin_info_210 int,
checkin_info_85 int,
checkin_info_84 int,
checkin_info_86 int,
checkin_type string,
checkin_info_80 int,
checkin_info_83 int,
checkin_info_82 int,
checkin_info_50 int,
checkin_info_170 int,
checkin_info_81 int,
checkin_info_172 int,
checkin_info_173 int,
checkin_info_174 int,
checkin_info_175 int,
checkin_info_176 int,
checkin_info_143 int,
checkin_info_142 int,
checkin_info_141 int,
checkin_info_140 int,
checkin_info_146 int,
checkin_info_145 int,
checkin_info_144 int,
checkin_info_134 int,
checkin_info_135 int,
checkin_info_136 int,
checkin_info_130 int,
checkin_info_131 int,
checkin_info_132 int,
checkin_info_133 int,
checkin_info_106 int,
checkin_info_105 int,
checkin_info_104 int,
checkin_info_103 int,
checkin_info_102 int,
checkin_info_101 int,
checkin_info_100 int,
checkin_info_35 int,
checkin_info_231 int,
checkin_info_230 int,
checkin_info_233 int,
checkin_info_232 int,
checkin_info_235 int,
checkin_info_234 int,
checkin_info_236 int,
checkin_info_30 int,
checkin_info_05 int,
checkin_info_04 int,
checkin_info_06 int,
checkin_info_01 int,
checkin_info_00 int,
checkin_info_03 int,
checkin_info_02 int,
checkin_info_36 int,
checkin_info_66 int,
checkin_info_34 int,
checkin_info_64 int,
checkin_info_63 int,
checkin_info_33 int,
checkin_info_61 int,
checkin_info_60 int,
checkin_info_31 int,
checkin_info_186 int,
checkin_info_185 int,
checkin_info_184 int,
checkin_info_183 int,
checkin_info_182 int,
checkin_info_181 int,
checkin_info_180 int
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/checkin';

drop table yelp_review;
create external table if not exists yelp_review(
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
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/review';

drop table yelp_tip;
create external table if not exists yelp_tip(
user_id string,
text string,
business_id string,
likes int,
tip_date date,
tip_type string
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/tip';

drop table yelp_user;
create external table if not exists yelp_user(
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
"separatorChar" = ",",
"quoteChar" = '"',
"escapeChar" = '\\'
)
STORED AS TEXTFILE
LOCATION '/user/w205/yelp/user';