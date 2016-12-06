from pyspark.sql import HiveContext
from pyspark import SparkContext
from math import cos
import sys

# set up sqlContext
sc = SparkContext()
sqlContext = HiveContext(sc)

def error_checking(args):
    # make sure a userID, distance, and max returns is entered
    if len(args) < 3:
        sys.exit("Usage: You must pass a user ID, a distance (int), \
    and a max number of restaurants to return (int). \
    Please try again.")
    
    # make sure distance is an int
    if not args[1].isdigit():
        sys.exit("Distance is rough, integer max number of miles. \
    Please enter an int.")
    
    dist = float(args[1])
    
    # make sure max number of restaurants to return is an int
    if not args[2].isdigit():
        sys.exit("Max number of restaurants to return is a counting number. \
    Please enter an int.")
    
    max_return = int(args[2])
    
    if max_return < 1:
        sys.exit("Invalid number of restaurants to return. \
    Please enter an int > 0.")
    
    # check that user_id is in our process
    user = args[0]
    sqlquery = 'SELECT 1 FROM user_loc WHERE user_id = "{}"'.format(user)
    if not sqlContext.sql(sqlquery).collect():
        sys.exit("User_id not found in dataset. Please enter a valid ID.")
    
    return user, dist, max_return

def user_rec(user, dist, maxrec):
    
    # make sure everything is the right style
    user = str(user)
    dist = float(dist) / 69  # assume 1 degree latitude is roughtly 69 miles
    maxrec = int(maxrec)
    
    #####
    # get user history
    #####
    
    # get user's current location
    sqlquery = 'SELECT latitude, longitude \
    FROM user_loc \
    WHERE user_id = "{}"'.format(user)
    
    latitude, longitude = sqlContext.sql(sqlquery).collect()[0]
    latitude, longitude = float(latitude), float(longitude)
    
    # get list of user categories
    sqlquery = 'SELECT category \
    FROM yelp_user_cats \
    WHERE user_id = "{}"'.format(user)
    
    catresults = sqlContext.sql(sqlquery).collect()
    user_cat = [cat.category for cat in catresults]
    
    # get list of businesses a user has visited
    sqlquery = 'SELECT  business_id, business_category \
    FROM yelp_user_prefs \
    WHERE user_id = "{}"'.format(user)
    
    bizresults = sqlContext.sql(sqlquery).collect()
    # format business category to turn into a list
    user_biz = {biz.business_id: biz.business_category[1:-1].replace("'", "").split(",") for biz in bizresults}
    # create a string list of businesses
    biz_list= ",".join(["'{}'".format(i) for i in user_biz.keys()])
    
    #####
    # find new restaurants that are close enough and of interest 
    #####
    
    # get list of restaurants a user hasn't visited
    sqlquery = 'SELECT business_id, categories, latitude, longitude, \
    abs(latitude - {ulat}) + abs(longitude - {ulong}) as distance \
    FROM yelp_restaurants \
    WHERE business_id not in ({biz_list}) \
    AND latitude between {min_lat} and {max_lat} \
    AND longitude between {min_long} and {max_long}'.format(biz_list= biz_list,
                                                            ulat= latitude,
                                                            ulong= longitude,
                                                            max_lat= latitude + dist,
                                                            max_long= longitude + cos(dist)+dist,
                                                            min_lat= latitude - dist,
                                                            min_long= longitude - cos(dist)+dist)
    newbizresults = sqlContext.sql(sqlquery).collect()
    
    # format business category to turn into a list
    newbiz = {biz.business_id:{'categories':biz.categories[1:-1].replace("'", "").split(","),
                               'latitude':biz.latitude,
                               'longitude':biz.longitude,
                               'distance':biz.distance} for biz in newbizresults}
    
    # filter businesses to only include those in categories the user likes
    newbiz_pref = {k:v for k,v in newbiz.items() \
                   if any(set(user_cat) & set(v['categories']))}
    
    #####
    # return the closest maxrec restaurants
    #####
    
    # sort businesses by distance to user
    sorted_id = sorted(newbiz_pref.keys(), key=lambda x: newbiz_pref[x]['distance'])
    
    # return the desired number of results
    maxrec = min(maxrec, len(sorted_id)) # in case fewer results returned than suggested restaurants
    user_rec = {i+1:{'id': sorted_id[i],
                     'categories': newbiz_pref[sorted_id[i]]['categories'],
                     'location':"({},{})".format(newbiz_pref[sorted_id[i]]['latitude'],
                                                 newbiz_pref[sorted_id[i]]['longitude']),
                     'distance': newbiz_pref[sorted_id[i]]['distance']} \
                for i in range(maxrec)}
    
    return user_rec

# get arguments from command line
args = sys.argv[1:]

# check that args are correct format
user, dist, maxrec = error_checking(args)

# find the top recommended restaurants and some of their information
results = user_rec(user, dist, maxrec)
print results

