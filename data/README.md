data folder

Use these commands to download the csv's from Scott's dropbox, strip the column headers, create the hdfs folder structure, and move into hdfs

wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_business.csv
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_checkin.csv
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_review.csv
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_tip.csv
wget https://dl.dropboxusercontent.com/u/89189384/yelp_academic_dataset_user.csv

tail -n +2 yelp_academic_dataset_business.csv > business.csv
tail -n +2 yelp_academic_dataset_checkin.csv > checkin.csv
tail -n +2 yelp_academic_dataset_review.csv > review.csv
tail -n +2 yelp_academic_dataset_tip.csv > tip.csv
tail -n +2 yelp_academic_dataset_user.csv > user.csv

hdfs dfs -mkdir -p /user/w205/yelp/business
hdfs dfs -mkdir -p /user/w205/yelp/checkin
hdfs dfs -mkdir -p /user/w205/yelp/review
hdfs dfs -mkdir -p /user/w205/yelp/tip
hdfs dfs -mkdir -p /user/w205/yelp/user

hdfs dfs -put business.csv /user/w205/yelp/business
hdfs dfs -put checkin.csv /user/w205/yelp/checkin
hdfs dfs -put review.csv /user/w205/yelp/review
hdfs dfs -put tip.csv /user/w205/yelp/tip
hdfs dfs -put user.csv /user/w205/yelp/user









testing random things:
link to powerpoint slide, MS1 of project
https://docs.google.com/presentation/d/18GnMZIYzqHrgA1SAK0Vfm-5cxPFWHbPY21xTeIFRQt8/edit#slide=id.g180db330f1_3_557

