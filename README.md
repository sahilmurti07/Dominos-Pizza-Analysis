🍕 Domino’s Pizza Store Analysis — SQL Project
📌 Project Overview

Project Title: Domino’s Pizza Store Analysis
Level: Beginner to Intermediate
Database: Dominos_Pizza_db
Tools Used: MySQL 

This project demonstrates practical SQL data analysis techniques used by data analysts to explore, clean, and analyze pizza sales and customer data.
The analysis focuses on order patterns, revenue trends, customer behavior, and menu performance to support data-driven business decisions.

🎯 Objectives

Design and set up a Domino’s Pizza relational database

Perform data cleaning to ensure accuracy and consistency

Conduct Exploratory Data Analysis (EDA)

Answer business-driven analytical questions

Generate actionable insights for sales, marketing, and operations teams

🗂️ Database Structure
Tables Included:

orders

order_id, custId, order_date, order_time

order_details

order_detail_id, order_id, pizza_id, quantity

pizzas

pizza_id, pizza_type_id, size, price

pizza_types

pizza_type_id, name, category

customers

custId, first_name, last_name

🧹 Data Cleaning & Exploration

Verified total records across all tables

Checked for NULL and missing values

Removed inconsistent or incomplete records

Ensured referential integrity between tables

📊 Analysis & SQL Queries
1️⃣ Orders Volume Analysis

Total unique orders

Orders by month and weekday

Repeat customer analysis

Average orders per customer

Cumulative order trend over time

2️⃣ Revenue Analysis

Total revenue from pizza sales

Monthly and cumulative revenue trends

Revenue contribution by pizza, size, and category

3️⃣ Menu Performance

Highest-priced pizza

Most common pizza size ordered

Top 5 most ordered pizza types

Top 3 pizzas by revenue (overall & category-wise)

4️⃣ Time-Based Analysis

Orders by hour of the day

Peak ordering hours

Busiest weekdays

Seasonal sales trends

5️⃣ Customer Analysis

Top 10 customers by total spending

Customer segmentation (High Value vs Regular)

Repeat customer rate

Average order size per customer

🔍 Key Business Questions Answered

Which pizzas generate the most revenue?

What are the peak ordering hours and days?

Which pizza sizes and categories are most popular?

Who are the highest-spending customers?

How consistent is daily pizza demand?

📈 Key Findings

Customer Behavior: Repeat and high-value customers identified

Order Trends: Peak hours, weekends, and seasonal demand patterns observed

Menu Insights: Best-selling pizzas and high-revenue items highlighted

Revenue Growth: Monthly and cumulative revenue trends analyzed

Operational Insights: Staffing and inventory optimization opportunities identified

💡 Business Recommendations

Focus promotions on top-performing pizzas

Optimize staffing during peak hours and weekends

Create loyalty programs for high-value customers

Introduce targeted offers during low-demand periods

🚀 Skills Demonstrated

SQL Joins & Subqueries

Aggregate Functions

Window Functions

Time-Series Analysis

Data Cleaning

Business-Oriented Data Analysis

📁 How to Use This Project

Clone the repository

Import SQL files into your database

Execute queries step-by-step

Modify queries to explore additional insights

👨‍💻 Author

Sahil Murti
Aspiring Data Analyst
📧 Email: sahilmurti18@gmail.com

🔗 GitHub: github.com/sahilmurti07
