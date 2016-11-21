from pyspark import SparkContext
from pyspark.sql import SQLContext
from pyspark.sql.types import *
sc = SparkContext()
restaurants = sc.textFile("hdfs://root@ec2-52-91-74-56.compute-1.amazonaws.com:/data/user/w205/yelp/business/business.csv")
print restaurants.count()




