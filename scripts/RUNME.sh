#!/bin/bash

printf "\033c"

echo ""
echo ""
echo "Welcome to the proof-of-concept test run of Yelpfilx!"
echo ""
echo "Brought to you by Lisa Minas, Nikki Lee, and Scott Marler"
echo ""
echo "Hadoop and the Hive Metastore must be running. Spark-sql must be installed."
echo ""
echo "If you continue, this script will perform the following actions:"
echo "1) Download Yelp-provided .csv files from a public Dropbox account"
echo "2) Rename those files, strip the headers, and load into HDFS"
echo "3) Create tables from the .csv files"
echo "4) Perform multiple SQL transformations"
echo ""
echo "BE AWARE: This takes a long time to run."
echo ""
echo "Seriously, on the order of 20 minutes or so. Why not go grab a beer? Maybe mow the lawn."
echo ""

function ask_yes_or_no() {
    read -p "$1 ([y]es or [N]o): "
    case $(echo $REPLY | tr '[A-Z]' '[a-z]') in
        y|yes) echo "yes" ;;
        *)     echo "no" ;;
    esac
}

if [[ "no" == $(ask_yes_or_no "Are you sure you're ready to prepare Yelpfilx for use?") ]]
then
    echo "Aborting!"
    exit 0
fi

bash 1-setup.sh

/data/spark15/bin/spark-sql -f 2-yelp_base_ddl.sql  # creates base tables from csv files

/data/spark15/bin/spark-sql -f 3-transform_tables.sql  # transforms base tables into usable schemas

/data/spark15/bin/spark-sql -f user_actions.sql  # finds every interaction a user has with a restaurant

/data/spark15/bin/spark-sql -f user_prefs.sql  # finds which restaurants each user 'positively interacts' with the most

/data/spark15/bin/spark-sql -f user_cats.sql  # finds which type of restaurant each user 'positively interacts' with the most

/data/spark15/bin/spark-sql -f review_loc.sql # finds each restaurant's location

/data/spark15/bin/spark-sql -f user_loc.sql # find's the usere's assumed location based on restuarant checkins
