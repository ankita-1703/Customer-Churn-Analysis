# 📊 Customer Churn Analysis – EDA, SQL & Power BI

## 📌 Project Overview  
This project analyzes customer churn patterns to identify key factors behind customer attrition in a telecom dataset. The analysis is performed using **Python (EDA), SQL (business queries), and Power BI (dashboard visualization)** to provide actionable insights that help businesses improve retention strategies.

---

## ⚙️ Tech Stack  
- **Python**: Pandas, NumPy, Matplotlib, Seaborn (EDA)  
- **SQL (MySQL / PostgreSQL)**: Data cleaning & 15+ analytical queries  
- **Power BI**: Dashboard with KPIs and interactive insights  

---

## 📂 Dataset  
- **Source**: Customer Churn dataset (`churn.csv`)  
- **Key Columns**:  
  - `CustomerID`  
  - `Gender`, `SeniorCitizen`, `Partner`, `Dependents`  
  - `Tenure`, `InternetService`, `Contract`, `PaymentMethod`  
  - `MonthlyCharges`, `TotalCharges`  
  - `Churn (Yes/No)`  

---

## 🔎 Project Workflow  

### 1️⃣ Exploratory Data Analysis (EDA) – Python  
✔ Data cleaning: missing values, type conversion, outliers  
✔ Univariate & bivariate analysis for churn patterns  
✔ Key findings:  
- Higher churn in **month-to-month contracts**  
- Customers with **fiber optic internet** churn more than DSL  
- **High monthly charges + low tenure = high churn risk**

---

### 2️⃣ SQL Business Queries (15+)  
Created `CustomerChurn` table and wrote queries to solve business problems:  
- Overall churn rate (%)  
- Churn by **gender, contract type, payment method**  
- Avg. tenure & charges (churned vs retained)  
- Monthly **revenue loss due to churn**  
- Identify **high-risk customers** (low tenure + high charges)  
- Churn by **tech support, security, senior citizens**  

---

### 3️⃣ Power BI Dashboard  
Built an **interactive dashboard** with:  
- **KPIs**: Total Customers, Churned Customers, Churn Rate (%)  
- **Visuals**:  
  - Churn by Gender, Contract, Payment Method  
  - Tenure vs Monthly Charges comparison  
  - Revenue loss from churned customers  
- **Filters/Slicers**: Gender, Contract Type, Internet Service  

---

## 📈 Key Insights  
- **Month-to-month contracts** and **electronic check payments** have highest churn.  
- **Senior citizens** and customers without **tech support/security** are more likely to churn.  
- High-value customers with **high charges but short tenure** are at greatest risk.  

---

## 🚀 Impact  
This project demonstrates how combining **EDA + SQL + Power BI** provides **end-to-end analysis**:  
- **EDA** → Identify churn patterns  
- **SQL** → Solve structured business problems (15+ queries)  
- **Power BI** → Deliver interactive business dashboards  

---

## 📂 Folder Structure  
Customer-Churn-Analysis/
│── data/
│ └── churn.csv
│── notebooks/
│ └── churn_eda.ipynb
│── sql/
│ └── churn_queries.sql
│── dashboard/
│ └── Customer_Churn.pbix
│── README.md
