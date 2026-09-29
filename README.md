# Task 1: Exploratory Data Analysis and Visualization

## Project Overview

This project is part of the ApexPlanet Data Analytics Internship.

The objective of this task is to clean, analyze, and visualize a sales dataset using Python.

## Objectives

- Understand the dataset
- Handle missing values
- Check duplicate records
- Perform Exploratory Data Analysis
- Analyze sales and customer data
- Create data visualizations

## Tools and Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook

## Data Cleaning

- Missing values in the Age column were filled using the median.
- Missing values in the City column were filled using the mode.
- Duplicate records were checked.
- Order_Date was converted into datetime format.

## Exploratory Data Analysis

- Numerical summary
- Categorical summary
- Category-wise sales analysis
- Product-wise sales analysis
- City-wise sales analysis
- Gender-wise sales analysis
- Monthly sales analysis
- Total sales and quantity analysis

## Data Visualization

- Bar Chart
- Line Chart
- Pie Chart
- Histogram
- Scatter Plot

## Project Structure

```text
Task-1-EDA
├── data
│   ├── ApexPlanet_DataAnalytics_Raw_Dataset.xlsx
│   └── cleaned_dataset.csv
├── notebooks
│   └── Task-1-EDA.ipynb
├── outputs
│   └── figures
└── README.md

# Task 2: SQL and Python Integration

## 📌 Project Overview

This task focuses on using SQL for data extraction, analysis, and business insights, along with integrating SQL with Python.

The cleaned dataset from Task 1 was stored in a SQLite database and analyzed using SQL queries. Python and Pandas were then used to execute SQL queries and further analyze the results.

## 🎯 Objectives

- Perform SQL-based data analysis
- Work with SQLite database
- Practice basic and advanced SQL queries
- Use SQL JOINs, Subqueries, CTEs, and Window Functions
- Integrate SQL with Python
- Perform business-oriented data analysis

## 🛠️ Tools & Technologies

- Python
- SQL
- SQLite
- Pandas
- Jupyter Notebook
- Matplotlib

## 📂 Project Structure

```text
Task-2-SQL-Python/
│
├── database/
│   └── sales_analysis.db
│
├── sql/
│   └── business_queries.sql
│
├── notebooks/
│   └── Task-2-SQL-Python.ipynb
│
└── README.md
