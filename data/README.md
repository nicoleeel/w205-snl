PRE-STEPS WE TOOK TO GET THE DATA FROM YELP

Initial steps we took to obtain and clean data files:  
1) Filled out the form here: https://www.yelp.com/dataset_challenge/dataset  
2) Used Yelp's python script to convert the JSON data files to .csv  
3) Loaded csvs in python (Jupyter notebook) locally and did the following:  
    a) Replace hard returns with a space (Business and Review files)  
    b) Remove double-quotes (Review file)  
    c) Export new .csv files with a pipe (|) delimiter (individual fields contain commas, but none contain a pipe)  
4) Uploaded to dropbox (Scott _very_ generously dedicated his dropbox space for this purpose. Capacity is juuuuust big enough.  

These steps created the initial csv files that we will then use in our project script as our raw data.  

Please return to the home folder of this repo and read the README in "scripts" to run the application.

HAVE FUN!
