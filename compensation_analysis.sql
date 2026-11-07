
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

-- Analysis 4: Workforce composition by department
-- Business question:
-- How does the distribution of job titles explain
-- differences in average departmental salaries?

WITH Job_Counts AS (
    SELECT
        Department,
        Job_Title,
        COUNT(*) AS Employee_Count
    FROM
        `theproject-445202.employee_compensation.compensation_analysis`
    GROUP BY
        Department,
        Job_Title
)

SELECT
    Department,
    Job_Title,
    Employee_Count,
    ROUND(
        100.0 * Employee_Count /
        SUM(Employee_Count) OVER (
            PARTITION BY Department
        ),
        2
    ) AS Percentage_of_Department
FROM
    Job_Counts
ORDER BY
    Department,
    Percentage_of_Department DESC;

-- Analysis 5: Compensation by gender and job title
-- Business question:
-- Are there observable salary differences between
-- genders within the same job title?

SELECT
    Job_Title,
    Gender,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    ROUND(AVG(Experience_Years), 1) AS Average_Experience
FROM
    `theproject-445202.employee_compensation.compensation_analysis`
GROUP BY
    Job_Title,
    Gender
ORDER BY
    Job_Title,
    Gender;


-- Analysis 6: Compensation by location and job title
-- Business question:
-- How does average compensation vary across
-- geographic locations within the same job title?

SELECT
    Location,
    Job_Title,
    COUNT(*) AS Employee_Count,
    ROUND(AVG(Salary), 2) AS Average_Salary,
    ROUND(AVG(Experience_Years), 1) AS Average_Experience
FROM
    `theproject-445202.employee_compensation.compensation_analysis`
GROUP BY
    Location,
    Job_Title
ORDER BY
    Job_Title,
    Average_Salary DESC;
