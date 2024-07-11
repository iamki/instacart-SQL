# Data Analysis Using Instacart data From Kaggle
As one of the tutorial in [DataLemur](https://datalemur.com/sql-tutorial/instacart-sql-data-analytics-case-study), we are required to analyse Instacart data taken from [Kaggle](https://www.kaggle.com/competitions/instacart-market-basket-analysis/data).

## Introduction
Instacart is a grocery delivery and pickup service. Users can select items from local grocery stores through the Instacart app or website, and then either have them delivered to their doorstep by a personal shopper or prepared for pickup at the store.

We have 5 tables in the Instacart market data.
1. ic_order_products_curr
   this table contains the current order for all customers, collected in Q3.
3. ic_order_products_prior
   this table contains previous order contents for all customers, collected in Q2.
4. ic_products
   info about each item in the Instacart product catalog.
5. ic_departments
   info about each department.
6. ic_aisles
   info about each aisle in a grocery store.

## Table of Contents
These are the steps where I indulge myself into the data.

1. [Data Import](queries/import-data.sql)
Practicing on creating database using MySQL Workbench.
>[!NOTE]
>I figured out that the data is too big for my laptop. Therefore, I've run the analysis afterwards in Kaggle using [pandasql](https://pypi.org/project/pandasql/) python package which allows you to query pandas DataFrames using SQL syntax.
2. [Overview of the tables](queries/exploring.sql)
In this step, I just want to explore each tables and just to get the idea of the tables.
3. [Data Analysis](analysis.md)
To build the problem statement, let's understand and compare the two quarters by applying descriptive statistics.



>[!NOTE]
>I am also using this small project to get used to GitHub. :monocle_face:
