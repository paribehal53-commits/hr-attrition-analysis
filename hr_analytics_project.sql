-- total employees
SELECT COUNT(*) AS total_employees
FROM hr_analytics;
-- gender distribution
SELECT Gender, count(*) AS total
FROM hr_analytics
GROUP BY Gender; 
-- department distribution
SELECT Department, COUNT(*) AS total
FROM hr_analytics
GROUP BY Department;
-- attrition rate 
SELECT 
ROUND(SUM(Attrition='Yes')/COUNT(*)*100,2) 
AS attrition_rate_percent
FROM hr_analytics;
-- Attrition by Department
SELECT Department,
COUNT(*) AS attrition_count
FROM hr_analytics
WHERE Attrition='Yes'
GROUP BY Department
ORDER BY attrition_count DESC;

-- Attrition by Job Role
SELECT JobRole,
COUNT(*) AS attrition_count
FROM hr_analytics
WHERE Attrition='Yes'
GROUP BY JobRole
ORDER BY attrition_count DESC;
-- Average Salary
SELECT ROUND(AVG(MonthlyIncome),2) AS avg_salary
FROM hr_analytics;

-- Salary by Department
SELECT Department,
ROUND(AVG(MonthlyIncome),2) AS avg_salary
FROM hr_analytics
GROUP BY Department
ORDER BY avg_salary DESC;

-- Salary (Stayed vs Left)
SELECT Attrition,
ROUND(AVG(MonthlyIncome),2) AS avg_salary
FROM hr_analytics
GROUP BY Attrition;
-- Years at Company (Stay vs Leave)
SELECT Attrition,
ROUND(AVG(YearsAtCompany),2) AS avg_years
FROM hr_analytics
GROUP BY Attrition;