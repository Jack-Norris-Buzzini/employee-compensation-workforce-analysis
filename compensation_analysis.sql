
-- Employee Compensation & Workforce Analysis
-- Dataset: 10,000 synthetic employee records
-- Platform: Google BigQuery
--
-- Analysis 1: Average salary by department
-- Business question:
-- How does compensation vary across departments?

SELECT
    Department,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    MIN(Salary) AS Minimum_Salary,
    MAX(Salary) AS Maximum_Salary
FROM
    `theproject-445202.employee_compensation.compensation_analysis`
GROUP BY
    Department
ORDER BY
    Average_Salary DESC;
