#!/bin/bash

echo "Grabbing data"
bash 1-setup.sh

echo "Creating base DDL tables"
/data/spark15/bin/spark-sql -f 2-yelp_base_ddl.sql  # creates base tables from csv files

echo "Transforming some tables"
/data/spark15/bin/spark-sql -f 3-transform_tables.sql  # transforms base tables into usable schemas

echo "Finding every positive interaction between user & business"
/data/spark15/bin/spark-sql -f user_actions.sql  # finds every interaction a user has with a restaurant

echo "Finding user restaurant preferences"
/data/spark15/bin/spark-sql -f user_prefs.sql  # finds which restaurants each user 'positively interacts' with the most

echo "Finding user category preferences"
/data/spark15/bin/spark-sql -f user_cats.sql  # finds which type of restaurant each user 'positively interacts' with the most

echo "Restaurant locations"
/data/spark15/bin/spark-sql -f review_loc.sql # finds each restaurant's location

echo "User location"
/data/spark15/bin/spark-sql -f user_loc.sql # find's the usere's assumed location based on restuarant checkins
