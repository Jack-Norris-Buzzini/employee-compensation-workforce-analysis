
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

-- Analysis 2: Average salary by job title
-- Business question:
-- How does compensation differ across job roles?

SELECT
    Job_Title,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    ROUND(AVG(Experience_Years), 1) AS Average_Experience
FROM
    `theproject-445202.employee_compensation.compensation_analysis`
GROUP BY
    Job_Title
ORDER BY
    Average_Salary DESC;


-- Analysis 3: Average salary by experience level
-- Business question:
-- How does compensation change with experience?

SELECT
    Experience_Group,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(Salary), 2) AS Average_Salary
FROM
    `theproject-445202.employee_compensation.compensation_analysis`
GROUP BY
    Experience_Group
ORDER BY
    CASE Experience_Group
        WHEN '0-2 Years' THEN 1
        WHEN '3-5 Years' THEN 2
        WHEN '6-10 Years' THEN 3
        WHEN '11-20 Years' THEN 4
        WHEN '21+ Years' THEN 5
    END;
