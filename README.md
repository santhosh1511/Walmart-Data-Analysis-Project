# Walmart-Data-Analysis-Project


## Project Overview 


![Image Alt Text](https://github.com/santhosh1511/Walmart-Data-Analysis-Project/blob/main/WalMart_Project_Pipleline.jpeg) 

This project is an end-to-end data analysis solution designed to extract critical business insights from Walmart sales data. We utilize Python for data processing and analysis, SQL for advanced querying, and structured problem-solving techniques to solve key business questions. The project is ideal for data analysts looking to develop skills in data manipulation, SQL querying, and data pipeline creation. 


## Project Steps
### 1. Set Up the Environment

 &nbsp;&nbsp;&nbsp;&nbsp;**• Tools Used:** Visual Studio Code (VS Code) | Python | SQL (MySQL)  
&nbsp;&nbsp;&nbsp;&nbsp;**• Goal:** Create a structured workspace within VS Code and organize project folders for smooth development and data handling.

### 2. Set Up Kaggle API

&nbsp;&nbsp;&nbsp;&nbsp;**• API Setup:** Obtain your Kaggle API token from Kaggle by navigating to your profile settings and downloading the JSON file.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Configure Kaggle:**  
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Place the downloaded `kaggle.json` file in your local `.kaggle` folder.  
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Use the command: `kaggle datasets download -d <dataset-path>` to pull datasets directly into your project. 

### 3. Download Walmart Sales Data

&nbsp;&nbsp;&nbsp;&nbsp;**• Data Source:** Use the Kaggle API to download the Walmart sales datasets from Kaggle.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Dataset Link:** [Walmart Sales Dataset](https://www.kaggle.com/datasets/najir0123/walmart-10k-sales-datasets)  
&nbsp;&nbsp;&nbsp;&nbsp;**• Storage:** Save the data in the `data/` folder for easy reference and access.

### 4. Install Required Libraries and Load Data 

&nbsp;&nbsp;&nbsp;&nbsp;**• Libraries:** Install necessary Python libraries using:  

    pip install pandas numpy sqlalchemy mysql-connector-python 
&nbsp;&nbsp;&nbsp;&nbsp;**• Loading Data:** Read the data into a Pandas DataFrame for initial analysis and transformations. 

### 5. Explore the Data

&nbsp;&nbsp;&nbsp;&nbsp;**• Goal:** Conduct an initial data exploration to understand data distribution, check column names, types, and identify potential issues.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Analysis:** Use functions like `.info()`, `.describe()`, and `.head()` to get a quick overview of the data structure and statistics.

### 6. Data Cleaning

&nbsp;&nbsp;&nbsp;&nbsp;**• Remove Duplicates:** Identify and remove duplicate entries to avoid skewed results.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Handle Missing Values:** Drop rows or columns with missing values if they are insignificant; fill values where essential.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Fix Data Types:** Ensure all columns have consistent data types (e.g., dates as `datetime`, prices as `float`).  
&nbsp;&nbsp;&nbsp;&nbsp;**• Currency Formatting:** Use `.replace()` to handle and format currency values for analysis.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Validation:** Check for any remaining inconsistencies and verify the cleaned data. 

### 7. Feature Engineering

&nbsp;&nbsp;&nbsp;&nbsp;**• Create New Columns:** Calculate the Total Amount for each transaction by multiplying `unit_price` by `quantity` and adding this as a new column.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Enhance Dataset:** Adding this calculated field will streamline further SQL analysis and aggregation tasks.

### 8. Load Data into MySQL 

&nbsp;&nbsp;&nbsp;&nbsp;**• Set Up Connections:** Connect to MySQL using `sqlalchemy` and load the cleaned data into each database.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Table Creation:** Set up tables in MySQL using Python `SQLAlchemy` to automate table creation and data insertion.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Verification:** Run initial SQL queries to confirm that the data has been loaded accurately.  

### 9. SQL Analysis: Complex Queries and Business Problem Solving 

&nbsp;&nbsp;&nbsp;&nbsp;**• Business Problem-Solving:** Write and execute complex SQL queries to answer critical business questions, such as:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Revenue trends across branches and categories.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Identifying best-selling product categories.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Sales performance by time, city, and payment method.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Analyzing peak sales periods and customer buying patterns.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Profit margin analysis by branch and category.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Documentation:** Keep clear notes of each query's objective, approach, and results.  

### 10. Project Publishing and Documentation

&nbsp;&nbsp;&nbsp;&nbsp;**• Documentation:** Maintain well-structured documentation of the entire process in Markdown or a Jupyter Notebook.  

&nbsp;&nbsp;&nbsp;&nbsp;**• Project Publishing:** Publish the completed project on GitHub or any other version control platform, including:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤  The `README.md` file (this document).  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤  Jupyter Notebooks (if applicable).  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ SQL query scripts.  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;➤ Data files (if possible) or steps to access them.  


***
# Requirements

&nbsp;&nbsp;&nbsp;&nbsp;**• Python Version:** Python 3.8+  
&nbsp;&nbsp;&nbsp;&nbsp;**• SQL Databases:** MySQL  
&nbsp;&nbsp;&nbsp;&nbsp;**• Python Libraries:** pandas, numpy, sqlalchemy, mysql-connector-python  
&nbsp;&nbsp;&nbsp;&nbsp;**• Kaggle API Key:** Required for data downloading  

# Getting Started

&nbsp;&nbsp;&nbsp;&nbsp;**1. Clone the repository:** `git clone <repo-url>`  
&nbsp;&nbsp;&nbsp;&nbsp;**2. Install Python libraries:** `pip install -r requirements.txt`  
&nbsp;&nbsp;&nbsp;&nbsp;**3. Set up your Kaggle API, download the data, and follow the steps to load and analyze.**   

***
# Project Structure

    |-- data/                     # Raw data and transformed data
    |-- sql_queries/              # SQL scripts for analysis and queries
    |-- notebooks/                # Jupyter notebooks for Python analysis
    |-- README.md                 # Project documentation
    |-- requirements.txt          # List of required Python libraries
    |-- main.py                   # Main script for loading, cleaning, and processing data


# Results and Insights
&nbsp;&nbsp;&nbsp;&nbsp;**• Sales Insights:** Key categories, branches with highest sales, and preferred payment methods.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Profitability:** Insights into the most profitable product categories and locations.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Customer Behavior:** Trends in ratings, payment preferences, and peak shopping hours.   

# Future Enhancements
&nbsp;&nbsp;&nbsp;&nbsp;**• Integration:** Use a dashboard tool (e.g., Power BI or Tableau) for interactive visualization.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Data Enhancement:** Incorporate additional data sources to improve analysis depth.  
&nbsp;&nbsp;&nbsp;&nbsp;**• Automation:** Automate the data pipeline for real-time data ingestion and analysis.  














