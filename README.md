# Amazon_Vine_Analysis
Amazon reviews statistical analysis using PySpark, Pandas, SQL with Google Colab and AWS

## Overview of the analysis

The purpose of this analysis is to analyze Amazon reviews to determine if there are any biases. Reviews written by members of the paid Amazon Vine program, a service that allows manufacturers and publishers to receive reviews of their products. I peaked up one from approximately 50 datasets with Amazon Reviews to determine if there are any biases between Vine members and Non-Vine member's reviews.

Companies pay a fee to Amazon and may provide free products to Vine members who are then required to publish a review which could be biased. In order to determine if there is any bias towards favorable reviews from Vine members vs. non-members, we need to identify the percentage of 5 star ratings to total rating. 

Of the 50 datasets, I chose to analyze reviews that were made by users in the "Electronics" category.  
Dataset used for this analysis can be found <a href="https://">here</a>

**Used tools:**
PySpark
Pandas
S3 on AWS
PostgreSQL
pgAdmin
RDS on AWS
Google Colaboratory


## Results

The dataset had over 3 million reviews recorded. In order to focus on reviews that would be considered more likely to be helpful, we needed to filter the dataset by:

Count of Total Votes equal or greater than 20.
Percent of Helpful Votes to Total Votes equal or greater than 50%.
The results reduced the total number of reviews from 3M to 50.7K

![img1.png](/images/img1.png) 


### Determination Bias of Vine Reviews

To determine if here is bias between unpaid and paid program reviews, we should answer folloing questions:

_* How many Vine reviews and non-Vine reviews were there?_


_* How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?_

_* What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?_


## Summary

state if there is any positivity bias for reviews in the Vine program. Use the results of your analysis to support your statement. Then, provide one additional analysis that you could do with the dataset to support your statement.
The summary states whether or not there is bias, and the results support this statement
An additional analysis is recommended to support the statement 
