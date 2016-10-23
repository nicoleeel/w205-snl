#!/bin/bash

# download Yelp files, strip headers, put into hdfs
# MAKE SURE: you have started hadoop, switched to su - w205
# all files will download into the parent directory of your github clone so as to not download files into our github

wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_business.csv -P ../../
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_checkin.csv -P ../../
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_review.csv -P ../../
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_tip.csv -P ../../
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_user.csv -P ../../

echo "renaming files, stripping headers"

tail -n +2 ../../yelp_academic_dataset_business.csv > ../../business.csv
tail -n +2 ../../yelp_academic_dataset_checkin.csv > ../../checkin.csv
tail -n +2 ../../yelp_academic_dataset_review.csv > ../../review.csv
tail -n +2 ../../yelp_academic_dataset_tip.csv > ../../tip.csv
tail -n +2 ../../yelp_academic_dataset_user.csv > ../../user.csv

echo "will hang here a bit while uploading into HDFS"

hdfs dfs -mkdir -p /user/w205/yelp/business
hdfs dfs -mkdir -p /user/w205/yelp/checkin
hdfs dfs -mkdir -p /user/w205/yelp/review
hdfs dfs -mkdir -p /user/w205/yelp/tip
hdfs dfs -mkdir -p /user/w205/yelp/user

hdfs dfs -put ../../business.csv /user/w205/yelp/business
hdfs dfs -put ../../checkin.csv /user/w205/yelp/checkin
hdfs dfs -put ../../review.csv /user/w205/yelp/review
hdfs dfs -put ../../tip.csv /user/w205/yelp/tip
hdfs dfs -put ../../user.csv /user/w205/yelp/user

echo "removing files from working directory for memory"

rm ../../yelp_academic_dataset_business.csv
rm ../../yelp_academic_dataset_checkin.csv
rm ../../yelp_academic_dataset_review.csv
rm ../../yelp_academic_dataset_tip.csv
rm ../../yelp_academic_dataset_user.csv

rm ../../business.csv
rm ../../checkin.csv
rm ../../review.csv
rm ../../tip.csv
rm ../../user.csv

echo "COMPLETE: Files in HDFS, removed from working directory"
