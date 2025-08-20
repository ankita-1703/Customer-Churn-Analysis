📊 Customer Churn Analysis – EDA, SQL & Power BI
📌 Project Overview

This project analyzes customer churn patterns to identify key factors that contribute to customer attrition in a telecom dataset. The analysis is performed using Python (EDA), SQL (business queries), and Power BI (dashboard visualization) to provide actionable insights for reducing churn and improving customer retention strategies.

⚙️ Tech Stack

Python: Pandas, NumPy, Matplotlib, Seaborn (Exploratory Data Analysis)

SQL (MySQL / PostgreSQL): Data cleaning, transformation, and 15+ business queries

Power BI: Interactive dashboard creation with KPIs and visual insights

📂 Dataset

Source: Customer churn dataset (CSV format)

Key Columns:

CustomerID

Gender, SeniorCitizen, Partner, Dependents

Tenure, InternetService, Contract, PaymentMethod

MonthlyCharges, TotalCharges

Churn (Yes/No)

🔎 Project Workflow
1️⃣ Exploratory Data Analysis (EDA)

Performed data cleaning (missing values, type conversion, outliers).

Conducted univariate and bivariate analysis to study customer demographics, service usage, and churn distribution.

Key Insights:

Higher churn observed in customers with month-to-month contracts.

Customers with Fiber optic internet churn more than DSL users.

Customers with high monthly charges and low tenure are at higher risk.

2️⃣ SQL Business Analysis (15+ Queries)

Created a CustomerChurn table and performed advanced SQL queries to answer business questions such as:

Overall churn rate

Churn by gender, contract type, and payment method

Average tenure & charges of churned vs retained customers

Monthly revenue loss due to churn

Identifying high-risk customers (short tenure + high charges)

Churn by tech support, online security, and senior citizens

3️⃣ Power BI Dashboard

Developed an interactive dashboard with following features:

KPIs: Total Customers, Churned Customers, Churn Rate (%)

Visuals:

Churn by Gender

Churn by Contract Type

Churn by Payment Method

Average Tenure & Charges comparison

Revenue loss from churned customers

Filters/Slicers: Gender, Contract Type, Internet Service

📈 Key Business Insights

Customers on month-to-month contracts and electronic check payments are more likely to churn.

Senior citizens and customers without tech support or online security show higher churn.

Targeting new customers with high charges is crucial, as they are most at risk of leaving.

🚀 Impact

This project demonstrates how EDA + SQL + Power BI can be combined to provide end-to-end data analysis:

EDA for initial understanding

SQL for structured problem-solving and querying

Power BI for business-oriented decision-making via dashboards

📌 How to Run

Python EDA – Run the Jupyter Notebook (churn_eda.ipynb).

SQL Queries – Import churn.csv into MySQL/Postgres and execute queries from churn_queries.sql.

Power BI Dashboard – Open Customer_Churn.pbix file for interactive analysis.

📜 Project Highlights for Resume

Performed 15+ SQL queries for customer churn analysis.

Built interactive Power BI dashboard with KPIs & visuals.

Delivered insights on contract type, payment method, and internet service affecting churn.

Suggested data-driven retention strategies to reduce churn.
