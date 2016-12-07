<<<<<<< HEAD
# Documentation for W205-SNL: Yelpflix


Link to [Final Write Up](https://docs.google.com/document/d/1__KCyO2YxckfI8kMvt0_RGtXWWHJaDltoKxJFplHPC4/edit?usp=sharing "Word Write Up")  
Link to [Final Presentation](https://docs.google.com/presentation/d/1BHJYVPpNwX8ufXJBnMHRVwLogR4tRKnJkwMF4CmcIQ0/edit#slide=id.g13cccf3cb9_0_67 "PPT Presentation")  

## Commands to run scripts:  
Running our program is really easy! Before starting our program, we assume you:  

1. Have attached your volume used throughout this course  
  * if not, run `mount -t ext4 /dev/xvdf /data` or edit xvdf to the appropriate folder  
2. Have started hadoop, postgres, and the metastore  
  * if not, in root run `/root/start-hadoop.sh` and `/data/start_postgres.sh`. Switch to w205 with `su - w205` then run `/data/start_metastore.sh`  
3. Are currently running as w205  
  * if not, run `su - w205`
4. Have pulled the latest updates from this projects repo
  * this project's repo is at `https://github.com/nicoleeel/w205-snl.git`

Once you've pulled the latest updates from github, follow these steps:

1. make sure you're working in /home/w205/w205-snl/scripts_  
2. run `RUNME.sh`  
  * Note this will take a little while to run as the processing layer computes  
3. You can now access the serving layer via **user_rec.py**. This python file takes 3 inputs: user_id, max distance in miles from user, and max number of restaurants to return. To supply these values, enter them after the call to **user_rec.py**.  
  * For example, to get the 5 closest restaurants within 2 miles of qL7Astun3i7qwr2IL5iowA, run the following command:  
  * `pyspark user_rec.py qL7Astun3i7qwr2IL5iowA 2 5`  
4. The resulting output shows you the ordered results.  

The user_ids are unintelligible codes. To help you test the program, below are 5 sample user_ids. To find others, run the SQL command 'select user_id from yelp_user'  

````
18kPq7GPye-YQ3LyKyAZPw  
rpOyqD_893cqmDAtJLbdog  
4U9kSBLuBDU391x6bxU-YA  
fHtTaujcyKvXglE33Z5yIw  
SIBCL7HBkrP4llolm4SC2A  
````
