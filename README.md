# City_Impression

Team Member: Guoqiang Liang, Bingyi Li, Fang Wang, Xiaowen Zhang

## Goal

Built models to summarize people’s impression of various regions using topic modeling.

## Brief Intro
Before trying a new restaurant or visiting to a new city, we frequently consult with review platforms like Yelp or TripAdvisor, where we can read comments from previous visitors. 
It is clear that reviews are influential, but how powerful can a single review be? What are the typical words that represent people’s impression about a place? That’s what we are going to find out for this project.

The model we used for our project is Latent Dirichlet Allocation (LDA). LDA is an unsupervised method that models documents and topics based on Dirichlet distribution, 
wherein each document is considered to be a distribution over various topics and each topic is modeled as a distribution over words. And in our case, we use LDA to find the most popular food and activities of one region through a collection of Yelp reviews.

Since the dataset is too large to run locally, we stored them in AWS S3, and created the data pipeline which automated data extraction from AWS S3 to MongoDB and connected to Spark environment for modeling. 

## Description of Data

The data we use is from the [Yelp Open Dataset](https://www.yelp.com/dataset). The dataset consists of a set of JSON files that include lots of information. Our project mainly focused on: <br/>
  - business.json: business data including location data, attributes, and categories
  - review.json: full review text data including the user_id that wrote the review and the business_id the review is written for

## Deliverable

The [presentation slide](https://github.com/bingyil/City_Impression/blob/master/SFO48_Final_Presentation.pdf) is a complete demonstration of the discussion and summary of the prediction.

