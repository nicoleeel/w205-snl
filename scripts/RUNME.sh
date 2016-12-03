#!/bin/bash

bash 1-setup.sh

hive -f 2-yelp_base_ddl.sql  # creates base tables from csv files

hive -f 3-transform_tables.sql  # transforms base tables into usable schemas

hive -f user_actions.sql  # finds every interaction a user has with a restaurant

hive -f user_prefs.sql  # finds which restaurants each user 'positively interacts' with the most

hive -f user_cats.sql  # finds which type of restaurant each user 'positively interacts' with the most

hive -f review_loc.sql # finds each restaurant's location

hive -f user_loc.sql # find's the usere's assumed location based on restuarant checkins
