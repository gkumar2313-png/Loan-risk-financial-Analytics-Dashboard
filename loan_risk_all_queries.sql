-- ============================================
-- Financial Risk & Loan Analytics
-- SQL Business Queries
-- ============================================

-- Create Database
CREATE DATABASE financial_risk_analytics;

-- Use Database
USE financial_risk_analytics;

-- NOTE:
-- Import the cleaned dataset using MySQL Workbench.
-- Table Name: credit_risk

-- ============================================
-- 1. Total Loan Applications
-- ============================================

SELECT COUNT(*) AS Total_Applications
FROM credit_risk;

-- ============================================
-- 2. Total Loan Amount
-- ============================================

SELECT ROUND(SUM(loan_amnt),2) AS Total_Loan_Amount
FROM credit_risk;

-- ============================================
-- 3. Average Loan Amount
-- ============================================

SELECT ROUND(AVG(loan_amnt),2) AS Average_Loan_Amount
FROM credit_risk;

-- ============================================
-- 4. Average Applicant Income
-- ============================================

SELECT ROUND(AVG(person_income),2) AS Average_Income
FROM credit_risk;

-- ============================================
-- 5. Loan Default Rate
-- ============================================

SELECT
ROUND(
SUM(CASE WHEN loan_status = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
2
) AS Default_Rate_Percentage
FROM credit_risk;

-- ============================================
-- 6. Loan Status Distribution
-- ============================================

SELECT
loan_status,
COUNT(*) AS Total_Applications
FROM credit_risk
GROUP BY loan_status;

-- ============================================
-- 7. Average Loan Amount by Loan Intent
-- ============================================

SELECT
loan_intent,
ROUND(AVG(loan_amnt),2) AS Average_Loan
FROM credit_risk
GROUP BY loan_intent
ORDER BY Average_Loan DESC;

-- ============================================
-- 8. Total Loan Amount by Loan Intent
-- ============================================

SELECT
loan_intent,
ROUND(SUM(loan_amnt),2) AS Total_Loan
FROM credit_risk
GROUP BY loan_intent
ORDER BY Total_Loan DESC;

-- ============================================
-- 9. Average Income by Home Ownership
-- ============================================

SELECT
person_home_ownership,
ROUND(AVG(person_income),2) AS Average_Income
FROM credit_risk
GROUP BY person_home_ownership
ORDER BY Average_Income DESC;

-- ============================================
-- 10. Average Interest Rate by Loan Grade
-- ============================================

SELECT
loan_grade,
ROUND(AVG(loan_int_rate),2) AS Avg_Interest_Rate
FROM credit_risk
GROUP BY loan_grade
ORDER BY Avg_Interest_Rate;

-- ============================================
-- 11. Default Rate by Home Ownership
-- ============================================

SELECT
person_home_ownership,
ROUND(AVG(loan_status)*100,2) AS Default_Rate
FROM credit_risk
GROUP BY person_home_ownership
ORDER BY Default_Rate DESC;

-- ============================================
-- 12. Default Rate by Loan Intent
-- ============================================

SELECT
loan_intent,
ROUND(AVG(loan_status)*100,2) AS Default_Rate
FROM credit_risk
GROUP BY loan_intent
ORDER BY Default_Rate DESC;

-- ============================================
-- 13. Average Loan Amount by Loan Grade
-- ============================================

SELECT
loan_grade,
ROUND(AVG(loan_amnt),2) AS Average_Loan
FROM credit_risk
GROUP BY loan_grade
ORDER BY Average_Loan DESC;

-- ============================================
-- 14. Credit History Analysis
-- ============================================

SELECT
cb_person_default_on_file,
COUNT(*) AS Applicants,
ROUND(AVG(loan_status)*100,2) AS Default_Rate
FROM credit_risk
GROUP BY cb_person_default_on_file;

-- ============================================
-- 15. Average Employment Length
-- ============================================

SELECT
ROUND(AVG(person_emp_length),2) AS Avg_Employment_Length
FROM credit_risk;

-- ============================================
-- 16. Top 10 Highest Loan Amounts
-- ============================================

SELECT
person_income,
loan_amnt,
loan_intent
FROM credit_risk
ORDER BY loan_amnt DESC
LIMIT 10;

-- ============================================
-- 17. Loan Grade Ranking by Average Loan Amount
-- ============================================

SELECT
loan_grade,
ROUND(AVG(loan_amnt),2) AS Avg_Loan
FROM credit_risk
GROUP BY loan_grade
ORDER BY Avg_Loan DESC;

-- ============================================
-- 18. Income Group Analysis
-- ============================================

SELECT
CASE
WHEN person_income < 30000 THEN 'Low Income'
WHEN person_income BETWEEN 30000 AND 70000 THEN 'Middle Income'
ELSE 'High Income'
END AS Income_Group,
COUNT(*) AS Applicants
FROM credit_risk
GROUP BY Income_Group;

-- ============================================
-- 19. Top 5 Loan Purposes
-- ============================================

SELECT
loan_intent,
COUNT(*) AS Applications
FROM credit_risk
GROUP BY loan_intent
ORDER BY Applications DESC
LIMIT 5;

-- ============================================
-- 20. Applicants with Highest Income
-- ============================================

SELECT
person_income,
loan_amnt,
loan_grade
FROM credit_risk
ORDER BY person_income DESC
LIMIT 10;

-- ============================================
-- 21. Window Function - Rank by Income
-- ============================================

SELECT
person_income,
loan_amnt,
RANK() OVER(
ORDER BY person_income DESC
) AS Income_Rank
FROM credit_risk
LIMIT 20;

-- ============================================
-- 22. Window Function - Dense Rank by Loan Amount
-- ============================================

SELECT
loan_amnt,
loan_grade,
DENSE_RANK() OVER(
ORDER BY loan_amnt DESC
) AS Loan_Rank
FROM credit_risk
LIMIT 20;

-- ============================================
-- 23. Running Total of Loan Amount
-- ============================================

SELECT
loan_amnt,
SUM(loan_amnt) OVER(
ORDER BY loan_amnt
) AS Running_Total
FROM credit_risk;

-- ============================================
-- 24. Applicants Above Average Income
-- ============================================

SELECT
person_income,
loan_amnt,
loan_grade
FROM credit_risk
WHERE person_income >
(
SELECT AVG(person_income)
FROM credit_risk
);

-- ============================================
-- 25. Summary Statistics
-- ============================================

SELECT
COUNT(*) AS Total_Applications,
ROUND(AVG(person_income),2) AS Avg_Income,
ROUND(AVG(loan_amnt),2) AS Avg_Loan,
ROUND(AVG(loan_int_rate),2) AS Avg_Interest,
ROUND(AVG(loan_status)*100,2) AS Default_Rate
FROM credit_risk;

-- ============================================
-- 26. Average Loan Amount by Grade and Intent
-- ============================================

SELECT
loan_grade,
loan_intent,
ROUND(AVG(loan_amnt),2) AS Average_Loan
FROM credit_risk
GROUP BY loan_grade, loan_intent
ORDER BY loan_grade, Average_Loan DESC;