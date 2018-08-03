# Transfer files from S3 to MongoDB on EC2

!/bin/bash

aws s3 cp s3://foodie-impression/business.json . 
aws s3 cp s3://foodie-impression/review.json .

mongoimport --db yelp --collection review --file review.json
mongoimport --db yelp --collection business --file business.json
