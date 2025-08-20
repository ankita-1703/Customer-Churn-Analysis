CREATE DATABASE CUSTOMER_CHURN;

USE CUSTOMER_CHURN;

CREATE TABLE CustomerChurn (
    customerID VARCHAR(20) PRIMARY KEY,
    gender VARCHAR(10),
    SeniorCitizen INT,
    Partner VARCHAR(5),
    Dependents VARCHAR(5),
    tenure INT,
    PhoneService VARCHAR(5),
    MultipleLines VARCHAR(20),
    InternetService VARCHAR(20),
    OnlineSecurity VARCHAR(20),
    TechSupport VARCHAR(20),
    StreamingTV VARCHAR(20),
    StreamingMovies VARCHAR(20),
    Contract VARCHAR(20),
    PaperlessBilling VARCHAR(5),
    PaymentMethod VARCHAR(50),
    MonthlyCharges DECIMAL(10,2),
    TotalCharges DECIMAL(10,2),
    Churn VARCHAR(5)
);


SELECT * FROM CustomerChurn;


-- 1. Overall churn rate
SELECT 
    ROUND(SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS churn_rate_percent
FROM CustomerChurn;


-- 2. Churned vs Retained customers
SELECT Churn, COUNT(*) AS Total_Customers
FROM CustomerChurn
GROUP BY Churn;



-- 3. Churn rate by gender
SELECT gender, Churn, COUNT(*) AS Count
FROM CustomerChurn
GROUP BY gender, Churn;



-- 4. Churn rate by contract type
SELECT Contract,
       COUNT(*) AS Total_Customers,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
       ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Churn_Rate
FROM CustomerChurn
GROUP BY Contract;


-- 5. Payment method with highest churn
SELECT PaymentMethod,
       COUNT(*) AS Total,
       SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END) AS Churned,
       ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Churn_Rate
FROM CustomerChurn
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;


-- 6. Effect of having a partner on churn
SELECT Partner, Churn , COUNT(*) AS count
FROM CustomerChurn
GROUP BY Partner, Churn ;

-- 7. Avg monthly charges for churned vs retained
SELECT Churn, ROUND(AVG(MonthlyCharges), 2) AS AvgMonthlyCharges
FROM CustomerChurn
GROUP BY Churn;


-- 8. Avg tenure of churned vs retained
SELECT Churn, ROUND(AVG(tenure), 2) AS AvgTenure
FROM CustomerChurn
GROUP BY Churn;


-- 9.Churn percentage among senior citizens
SELECT SeniorCitizen,
       ROUND(SUM(CASE WHEN Churn='Yes' THEN 1 ELSE 0 END)*100.0/COUNT(*),2) AS Churn_Rate
FROM CustomerChurn
GROUP BY SeniorCitizen;


-- 10. Tech support effect on churn
SELECT TechSupport, Churn, COUNT(*) AS Count
FROM CustomerChurn
GROUP BY TechSupport, Churn;


-- 11. Churn by internet service type
SELECT InternetService, Churn, COUNT(*) AS Count
FROM CustomerChurn
GROUP BY InternetService, Churn;


-- 12. Monthly revenue loss from churned customers
SELECT ROUND(SUM(MonthlyCharges), 2) AS MonthlyRevenueLoss
FROM CustomerChurn
WHERE Churn='Yes';


-- 13. Churned customers within first 6 months
SELECT COUNT(*) AS ChurnedInFirst6Months
FROM CustomerChurn
WHERE tenure <= 6 AND Churn='Yes';


-- 14. Churn by online security
SELECT OnlineSecurity, Churn, COUNT(*) AS Total
FROM CustomerChurn
GROUP BY OnlineSecurity, Churn;


-- High-risk churned customers (short tenure + high charges)
SELECT customerID, tenure, MonthlyCharges, TotalCharges
FROM CustomerChurn
WHERE Churn='Yes' AND MonthlyCharges > 80 AND tenure < 12;

