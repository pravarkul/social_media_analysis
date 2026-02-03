Social Media User Behavior Analysis
Project Overview
This project analyzes large-scale social media user behavior data to understand engagement patterns, time spent dynamics, and differences between creators and consumers.
The goal is to move beyond vanity metrics like screen time and uncover what actually drives meaningful engagement.
The analysis covers data cleaning, feature engineering, SQL-based analytics, and interactive visualization using Power BI.
________________________________________
Problem Statement
Social media platforms often assume that higher time spent equals higher engagement.
This project tests that assumption by analyzing how engagement behaves across:
•	Different usage durations
•	User types (Creators vs Consumers)
•	Engagement segments (Low to Power users)
•	Lifestyle and behavioral factors
________________________________________
Tools & Technologies
•	Python (Pandas, NumPy) for data cleaning and feature engineering
•	SQL (MySQL) for analytical querying
•	Power BI for interactive dashboarding and visualization
________________________________________
Data Description
The dataset contains user-level behavioral and demographic data, including:
•	user_id
•	user_type (Creator, Consumer)
•	engagement_segment (Low, Medium, High, Power)
•	total_time_spent_per_day
•	user_engagement_score
•	daily_engagement_actions
•	content_type_preference
•	lifestyle and demographic attributes
Data Availability Notice
The original dataset is not included in this repository due to file size limitations.
This repository instead provides:
•	Python scripts for data cleaning and feature engineering
•	SQL scripts for analytical queries
•	Power BI dashboard screenshots for visualization reference
A small sample dataset or schema reference can be added if required for reproducibility.
________________________________________
Analysis Workflow
1. Data Cleaning & Feature Engineering (Python)
•	Removed inconsistencies and standardized categorical fields
•	Engineered new features such as:
o	Engagement segments
o	Time spent buckets
o	User type classification
o	Lifestyle indicators
2. Analytical Queries (SQL)
•	Calculated engagement metrics by user type, country, and segment
•	Compared creators vs consumers on time spent and engagement efficiency
•	Identified power users and high-value behavior patterns
3. Visualization (Power BI)
•	Built an interactive dashboard with:
o	KPI cards for key metrics
o	Time bucket analysis
o	Engagement comparisons across segments
o	Creator vs consumer behavior insights
•	Enabled slicers for dynamic filtering
________________________________________
Key Insights
Engagement Is Front-Loaded
Engagement peaks during early usage sessions and drops sharply as time spent increases, indicating content fatigue rather than deeper interaction.
Creators Spend More Time Without Proportional Engagement
Creators spend significantly more time on the platform compared to consumers, but their engagement scores are only marginally higher or sometimes lower.
Power Users Drive Disproportionate Value
A small percentage of users classified as Power contribute the highest engagement, despite not always spending the most time.
Lifestyle Has Minimal Impact
Healthy and unhealthy lifestyle categories show negligible differences in engagement, suggesting behavioral factors outweigh lifestyle attributes.
More Time ≠ Better Engagement
Across all segments, excessive usage does not translate into higher engagement, challenging common platform assumptions.
________________________________________
Dashboard Preview
<img width="1284" height="723" alt="image" src="https://github.com/user-attachments/assets/4a039d0b-4f03-44de-b2ec-6414678925f0" />
