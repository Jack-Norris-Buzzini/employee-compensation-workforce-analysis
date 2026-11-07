# Employee Compensation & Workforce Analysis

### SQL | Google BigQuery | Tableau | People Analytics

## Project Overview

This project analyzes compensation and workforce characteristics across 10,000 synthetic employee records to identify salary patterns related to departments, job titles, experience, gender, and geographic location.

The goal is to demonstrate how HR and People Analytics teams can use data to understand compensation structures, investigate pay differences, and support informed workforce decisions.

## Interactive Tableau Dashboard

**[View the Employee Compensation & Workforce Analysis Dashboard](https://public.tableau.com/app/profile/jack.norris.buzzini/viz/EmployeeCompensationWorkforceAnalysisHRAnalytics/Dashboard1)**

The dashboard includes:
- Average annual salary by department
- Average annual salary by job title
- Average salary by experience level
- Workforce composition by department
- Interactive Department and Location filters
- KPIs for employee count, average salary, and number of departments

## Tools & Skills

- **Google BigQuery:** SQL querying and data analysis
- **SQL:** Aggregations, GROUP BY, CASE WHEN, CTEs, window functions, and conditional analysis
- **Tableau Public:** Interactive dashboards, data visualization, filters, and KPIs
- **HR Analytics:** Compensation benchmarking, workforce segmentation, and exploratory pay analysis

## Dataset

**Source:** [Employee Salary Dataset — GitHub](https://github.com/RobStilson/Employee-Datasets/tree/main/Employee%20Salary%20Dataset)

- 10,000 synthetic employee records
- 6 departments
- 5 job titles
- 5 geographic locations
- Salary range: $25,000–$215,000

The dataset was validated for missing values and duplicate employee IDs. An experience-group variable was created to support compensation analysis.

## Key Findings

### 1. Departmental Salary Differences

Finance had the highest average annual salary at approximately **$130,376**, while Engineering had the lowest at approximately **$90,680**.

However, differences in job-title composition help explain this gap. Finance had a greater concentration of executives, while Engineering had a substantial intern population.

### 2. Job Title and Compensation

Average compensation differed considerably across job titles:

| Job Title | Average Annual Salary |
|---|---:|
| Executive | $183,415 |
| Manager | $135,260 |
| Engineer | $99,273 |
| Analyst | $69,478 |
| Intern | $35,802 |

These differences demonstrate the importance of comparing compensation among similar roles rather than relying solely on organization-wide averages.

### 3. Experience and Salary

Average salary increased across experience groups, from approximately **$55,942** for employees with 0–2 years of experience to **$172,429** for employees with 21+ years.

This relationship should be interpreted alongside job title and seniority.

### 4. Gender-Based Compensation Patterns

The unadjusted average salary difference between male and female employees was approximately **1.37%**.

Within individual job titles, observed differences were smaller, suggesting that workforce composition is an important consideration when interpreting aggregate salary comparisons.

These descriptive findings do not establish pay equity or discrimination.

### 5. Geographic Compensation Patterns

Average compensation varied relatively little across the five geographic locations when comparing employees within the same job title.

This suggests that job role may explain more of the observed salary variation than location within this synthetic dataset.

## HR Business Recommendations

1. **Compare compensation within comparable job roles.** Department-wide averages can be misleading when departments have different workforce structures.
2. **Monitor salary progression by experience and seniority.** Evaluate whether compensation growth aligns with documented pay structures.
3. **Conduct more detailed compensation reviews.** Consider job level, experience, location, and other relevant factors before drawing conclusions about pay equity.
4. **Use interactive workforce dashboards.** Provide HR stakeholders with tools to monitor compensation patterns and identify areas requiring further investigation.

## Limitations

This analysis uses synthetic employee data and does not represent actual company compensation practices.

The findings are descriptive and should not be interpreted as causal evidence or proof of compensation discrimination. Additional information about job responsibilities, performance, tenure, and compensation policies would be needed for a comprehensive pay-equity assessment.

## Project Files

- `compensation_analysis.sql` — SQL queries used to investigate compensation and workforce patterns
- `README.md` — Project documentation and business findings
- Tableau Public dashboard — Interactive visualization linked above

## Conclusion

This project demonstrates how SQL and Tableau can be combined to analyze workforce compensation, identify meaningful patterns, and translate technical findings into actionable HR recommendations.
