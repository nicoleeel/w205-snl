#!/bin/bash

bash 1-setup.sh

/data/spark15/bin/spark-sql -f 2-yelp_base_ddl.sql  # creates base tables from csv files

/data/spark15/bin/spark-sql -f 3-transform_tables.sql  # transforms base tables into usable schemas

/data/spark15/bin/spark-sql -f user_actions.sql  # finds every interaction a user has with a restaurant

/data/spark15/bin/spark-sql -f user_prefs.sql  # finds which restaurants each user 'positively interacts' with the most

/data/spark15/bin/spark-sql -f user_cats.sql  # finds which type of restaurant each user 'positively interacts' with the most

/data/spark15/bin/spark-sql -f review_loc.sql # finds each restaurant's location

/data/spark15/bin/spark-sql -f user_loc.sql # find's the usere's assumed location based on restuarant checkins
