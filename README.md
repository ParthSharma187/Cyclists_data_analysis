# Google Data Analytics Capstone: Cyclistic Case Study
Course: [Google Data Analytics Capstone: Complete a Case Study](https://www.coursera.org/learn/google-data-analytics-capstone)
## Introduction
In this case study, I will perform many real-world tasks of a junior data analyst at a fictional company, Cyclistic. In order to answer the key business questions, I will follow the steps of the data analysis process: [Ask](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/README.md#ask), [Prepare](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/README.md#prepare), [Process](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/README.md#process), [Analyze](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/README.md#analyze-and-share), [Share](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study/blob/main/README.md#analyze-and-share), and [Act](https://github.com/SomiaNasir/Google-Data-Analytics-Capstone-Cyclistic-Case-Study#act).
### Quick links:
Data Source: [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html) [accessed on 04/03/23]  

## Background
### Cyclistic
A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.   
  
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.  
  
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno (the director of marketing and my manager) believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs.  

Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.  

### Scenario
I am assuming to be a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, my team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, my team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve our recommendations, so they must be backed up with compelling data insights and professional data visualizations.

## Ask
### Business Task
Devise marketing strategies to convert casual riders to members.
### Analysis Questions
Three questions will guide the future marketing program:  
1. How do annual members and casual riders use Cyclistic bikes differently?  
2. Why would casual riders buy Cyclistic annual memberships?  
3. How can Cyclistic use digital media to influence casual riders to become members?  

Moreno has assigned me the first question to answer: How do annual members and casual riders use Cyclistic bikes differently?

#### I will analyze how casual and member riders differ in terms of using Cyclistic bikes. This will involve exploring the following specific points:

Proportion of casual and member riders?<br/>
Number of rides by bike type?<br/>
Frequency of rides by month ?<br/>
Frequency of rides by day of the week?<br/>
Frequency of rides by hour within a day?<br/>
Average ride duration by day of the week?<br/>

Then, I will present recommendations for Cyclistic's marketing strategy.

## Prepare
### Data Source
I will use Cyclistic’s historical trip data to analyze and identify trends from Jan 2022 to Dec 2022 which can be downloaded from [divvy_tripdata](https://divvy-tripdata.s3.amazonaws.com/index.html). The data has been made available by Motivate International Inc. under this [license](https://www.divvybikes.com/data-license-agreement).  
  
This is public data that can be used to explore how different customer types are using Cyclistic bikes. But note that data-privacy issues prohibit from using riders’ personally identifiable information. This means that we won’t be able to connect pass purchases to credit card numbers to determine if casual riders live in the Cyclistic service area or if they have purchased multiple single passes.

● How am I addressing licensing, privacy, security, and accessibility?

Licensing: Verified that the dataset is under an Open Government License, allowing free use with attribution. Included a citation in my report.<br/>
Privacy: Ensured that any PII has been removed or anonymized. Aggregated data to avoid potential re-identification of individuals.<br/>
Security: Data is stored the dataset on a secure server with encryption and restrict access to authorized personnel only. Uses HTTPS for data transfers.<br/>
Accessibility: Data is provided in CSV format with detailed metadata. Ensuring that the website hosting the dataset meets WCAG standards and offer the data in alternative formats if necessary.<br/>

### Data Organization
Downloaded 12 files (1 GB in total) corresponding to the months of May 2023 to April 2024.<br/>
![image](https://i.postimg.cc/0jHh2skY/downloaded-Data.png)

<br/>Inspected the files in Microsoft Excel and found that all have the following attributes or headers:<br/><br/>
![image](https://i.postimg.cc/rFQvQ55d/table-Columns.png)


## Process
I. Cleaned the data with MS Escel <br/>

Checked for incomplete values in all columns using the COUNTBLANK function. 

Found a significant number of missing values in start_station_name, start_station_id, end_station_name, and end_station_id, making them unreliable for data analysis. Thus, decided to delete them from each table.


Observations:  
1. The table below shows the all column names and their data types. The __ride_id__ column is our primary key.  

   ![image](https://i.postimg.cc/28nG3BDX/Cyclists-data-visualization.png)
