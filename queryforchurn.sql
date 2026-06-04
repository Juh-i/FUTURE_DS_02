select count(*) as totalrows
from [Telecom_churn];
select top 10*
from [telecom_churn];

SELECT Churn, COUNT(*) AS Customers
FROM Telecom_churn
GROUP BY Churn;

SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END)/ COUNT(*),
        2
    ) AS Churn_Rate
FROM Telecom_Churn;

SELECT 
    Contract,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) AS Churn_Rate
FROM Telecom_Churn
GROUP BY Contract
ORDER BY Churn_Rate DESC;

SELECT 
    AVG(CASE WHEN Churn=1 THEN tenure END) AS Avg_Tenure_Churned,
    AVG(CASE WHEN Churn=0 THEN tenure END) AS Avg_Tenure_Retained
FROM Telecom_Churn;

SELECT
    AVG(CASE WHEN Churn=1 THEN MonthlyCharges END) AS AvgCharge_Churned,
    AVG(CASE WHEN Churn=0 THEN MonthlyCharges END) AS AvgCharge_Retained
FROM Telecom_Churn;

SELECT 
    PaymentMethod,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) AS Churn_Rate
FROM Telecom_Churn
GROUP BY PaymentMethod
ORDER BY Churn_Rate DESC;

SELECT 
    InternetService,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) AS Churn_Rate
FROM telecom_churn
GROUP BY InternetService
ORDER BY Churn_Rate DESC;

SELECT 
    SeniorCitizen,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) AS Churn_Rate
FROM telecom_churn
GROUP BY SeniorCitizen;

SELECT
    Contract,
    PaymentMethod,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) AS Churn_Rate
FROM Telecom_Churn
GROUP BY Contract, PaymentMethod
ORDER BY Churn_Rate DESC;

SELECT
    Dependents,
    COUNT(*) AS Customers,
    SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END) AS Churned,
    ROUND(
        100.0 * SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) AS Churn_Rate
FROM Telecom_Churn
GROUP BY Dependents;

SELECT 
    COUNT(*) AS Total_Customers,
    SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END) AS Churned_Customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn=1 THEN 1 ELSE 0 END)/COUNT(*),
        2
    ) AS Churn_Rate,
    AVG(MonthlyCharges) AS Avg_Monthly_Charges
FROM Telecom_Churn;