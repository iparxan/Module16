## Overview of the analysis: Explain the purpose of this analysis.

the project is analyzing Amazon reviews written by members of the paid Amazon Vine program. The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like SellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review. Among 50 databases, The Lawn and Garden was chosen for this specific analysis. (the link:amazon_reviews_us_Lawn_and_Garden_v1_00.tsv.gz). The method is PySpark/Colab and pgAdmin. The several tavles extracted from the databases including vine_tables.

## Results: Using bulleted lists and images of DataFrames as support, address the following questions:

### How many Vine reviews and non-Vine reviews were there?
Based on the vina table (unrevised), the number pairVine program and unpaied Vine pregram reviews as follow:

![Alt, text](C:/Users/Yakefu Mayila/Desktop/DataClass/Module16/totalreviewvineyesno.png)

If we consider the revised vine table where we removed null, collecting helpful data, the number of vine aand non vine as follow:

![Alt text](C:/Users/Yakefu Mayila/Desktop/DataClass/Module16/cleared total.png)


### How many Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?


In terms of unrevised data vine_table
 the number as show follow
![Alt, text](C:/Users/Yakefu Mayila/Desktop/DataClass/Module16/unrevisedtablefivestar)

however if we looked at the revised data
the table show teh number of vine and non vine -five star reviews
![Alt, text](C:/Users/Yakefu Mayila/Desktop/DataClass/Module16/revisedfive star)

### What percentage of Vine reviews were 5 stars? What percentage of non-Vine reviews were 5 stars?

![Alt, text](C:/Users/Yakefu Mayila/Desktop/DataClass/Module16/percentagepng)
## Summary: In your summary, state if there is any positivity bias for reviews in the Vine program. Use the results of your analysis to support your statement. Then, provide one additional analysis that you could do with the dataset to support your statement.


