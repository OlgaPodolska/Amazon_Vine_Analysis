# Amazon_Vine_Analysis
Amazon reviews statistical analysis using PySpark, Pandas, SQL with Google Colab and AWS

## Overview of the analysis

The purpose of this analysis is to analyze Amazon reviews to determine if there are any biases. Reviews written by members of the paid Amazon Vine program, a service that allows manufacturers and publishers to receive reviews of their products. I peaked up one from approximately 50 datasets with Amazon Reviews to determine if there are any biases between Vine members and Non-Vine member's reviews.

Companies pay a fee to Amazon and may provide free products to Vine members who are then required to publish a review which could be biased. In order to determine if there is any bias towards favorable reviews from Vine members vs. non-members, we need to identify the percentage of 5 star ratings to total rating. 

Of the 50 datasets, I picked to analyze reviews that were made by users in the "Grocery" category.  
Dataset used for this analysis can be found <a href="https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Grocery_v1_00.tsv.gz">here at S3 service on AWS</a>  
All the datasets have the same schemata, as shown in this image:

![img0.png](/images/img0.png) 

**Used tools:**
PySpark
Pandas
S3 on AWS
PostgreSQL
pgAdmin
RDS on AWS
Google Colaboratory


## Results

The dataset was successfuly loaded to pgAdmin as four DataFrames downloaded into their respective tables :

![img2.png](/images/img2.png) 

The dataset had about 2.5 million reviews recorded. In order to focus on reviews that would be considered more likely to be helpful, we needed to filter the dataset by:

* Count of Total Votes equal or greater than 20.  
* Percent of Helpful Votes to Total Votes equal or greater than 50%.  

The results reduced the total number of reviews from 3M to 28.3K  

![img1.png](/images/img1.png) 

I created a new DataFrame that retrieves all the rows where a review was written as part of the Vine program (paid)

![img3.png](/images/img3.png) 

Then I created a different DataFrame that retrieves all the rows where a review was not part of the Vine program (unpaid)

![img4.png](/images/img4.png) 


### Determination Bias of Vine Reviews

To determine if here is bias between unpaid and paid program reviews, we should answer folloing questions:

* How many Vine reviews and non-Vine reviews were there?
* How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
* What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?

![img5.png](/images/img5.png) 


## Summary

Based on the results, Vine members did not show bias when rating their products considering that the number of 5-star ratings was about 15% less than Non-Vine members (43.4% vs 57.6%). With this, we can assume that Vine customers are more critical when submitting their review. However, in order to support this assumption further, we should include all the data rather than filtering it to a percentage of helpful vs total votes as we did for this analysis. Reviewing the data as is would give us more information and allow us to further support our assumption as shown below.


