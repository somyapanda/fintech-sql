# fintech-sql-homework

This repository contains the Jupyter notebook, an image file of ERD, .sql file of table schemata and .sql file of queries as part of the Fintech homework assignment Unit 7 -  Looking for Suspicious Transactions

## Background

Fraud is prevalent these days, whether you are a small taco shop or a large international business. While there are emerging technologies that employ machine learning and artificial intelligence to detect fraud, many instances of fraud detection still require strong data analytics to find abnormal charges.

In this homework assignment,we analyze the historical credit card transactions and consumption patterns in order to identify possible fraudulent transactions.

As part of this homework assignment, these are the tasks:

- Data Modeling: We create a database model to store the credit card transactions data and then create a new PostgreSQL database using this model.

- Data Engineering: We create a database schema on PostgreSQL and populate our database from the CSV files provided.

- Data Analysis: We analyze the data to identify possible fraudulent transactions trends data, and develop a report of our observations.


### PART-1

How can you isolate (or group) the transactions of each cardholder?
The answer is in the [query file](query.sql).

Count the transactions that are less than $2.00 per cardholder.
The answer is in the [query file](query.sql)

Is there any evidence to suggest that a credit card has been hacked? Explain your rationale.
No, there is no evidence that can suggest that a credit card has been hacked. But there are few high value transactions (>1000) that could be supicious.

After investigating a step futher by considering the time period in which potentially fraudulent transactions are made.

What are the top 100 highest transactions made between 7:00 am and 9:00 am?
The answer is in the [query2 file](query2.sql)

Do you see any anomalous transactions that could be fraudulent?
Yes, there are few high value transactions (>1000) that could be fraudulent.

Is there a higher number of fraudulent transactions made during this time frame versus the rest of the day?
Yes

If you answered yes to the previous question, explain why you think there might be fraudulent transactions during this time frame.
There are few high value transactions (>1000) that might be fradulent transactions during this time frame.

What are the top 5 merchants prone to being hacked using small transactions?
The answer is in the [query3 file](query3.sql).

Create a view for each of your queries.
The view for each of our queries are in the [view.sql](view.sql)

### Part-2

This section contains the [visual data analysis file](visual_data_anaysis.ipynb).