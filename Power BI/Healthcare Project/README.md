# **Hospital Healthcare Analysis**
### Technologies: Microsoft Excel, Power BI
#### Final Product: [Healthcare Analysis](Healthcare%20Analysis.pbix)
### Description: 

A local hospital has accumulated extensive data on their patient wait list, categorized into inpatient (patients admitted to the hospital) and outpatient (patients receiving treatment without admission). Despite the availability of this data, there is a need for effective analysis and visualization to better understand and manage the wait lists. The challenge is to analyze and create comprehensive visualizations of the hospital’s patient wait list data, focusing on tracking current statuses, understanding historical trends, and performing detailed analyses by speciality and age profile.

### Project Goals: 
1. **Track Current Status of Patient Wait List:** Provide up-to-date information on the current number of patients on the wait list for both inpatients and outpatients.

2. **Analyze Historical Monthly Trend of Waiting List:** Analyze data from 2018-2021 to understand trends and patterns in the wait list over time.

3. **Detailed Specialty Level and Age Profile Analysis:** Perform in-depth analysis of the wait list data by medical specialty and patient age groups.

### Strategy:
**1. Identify Stakeholders:** Establish a point of contact for the project to clarify doubts and gather necessary explanations. Stakeholders include hospital administrators, department heads, and data analysts.

**2. Understand Business Objectives:** Conduct meetings and communicate effectively to understand how the data can help achieve the hospital’s business goals. Ask open-ended questions to gather comprehensive insights.

**3. High-Level Data Study:**
- Data Source: Identify where the data is stored (e.g., hospital database, cloud storage).
- Column Description: Document the columns in the dataset (e.g., patient ID, wait list category, date added, speciality, age).
- Data Type: Identify the data types for each column (e.g., integer, string, date).
- Volume/Frequency: Understand the volume of data and how frequently it is updated.
- Data Quality: Assess the data for missing values and anomalies to ensure reliability.

**4. Define Scope:**
- Discuss key metrics and KPIs, such as average and median wait times and current total wait list.
- Agree on deployment timelines and document all aspects to set clear expectations.
- Include a 20% buffer in the plan to ensure the project can overdeliver rather than underdeliver.

#### Data Scope
- Timeframe: 2018-2021
- Categories: Inpatient(including Day patients) and Outpatient wait lists
- Attributes: Patient ID, date added to the wait list, wait list category, speciality, age, and other relevant attributes.
    
#### Key Metrics
- Average Wait List: Calculate the average wait time for patients.
- Median Wait List: Calculate the median wait time for patients.
- Current Total Wait List: Track the current total number of patients on the wait list.

#### Views Required
- Summary Page:
  - Overview of key metrics such as current total wait list, average wait time, and median wait time.
  - High-level visualizations showing trends and comparisons.
- Detailed Page for Granular Analysis:
  - Detailed visualizations and data tables for in-depth analysis by speciality and age profile.
  - Drill-down capabilities to explore specific time periods, specialities, or patient demographics.

#### Actionable Insights:
1. _Reduce Bottlenecks in Specific Departments_
  - Insight: Identification of departments or specialties with long wait lists.
  - Action: Allocate additional resources, such as staff or equipment, to these departments to reduce wait times.
2. _Adjust Staffing Levels Based on Seasonal Patterns:_
  - Insight: Identification of seasonal peaks in patient wait times.
  - Action: Increase staffing levels or extend operating hours during peak seasons to manage higher patient volumes.
3. _Targeted Improvements for Specific Age Groups:_
  - Insight: Age groups with disproportionately long wait times.
  - Action: Develop targeted initiatives or dedicated programs to address the needs of these age groups, potentially improving overall patient satisfaction.
4. _Improve Resource Allocation Based on Specialty Demand:_
  - Insight: Specialties with the highest average wait times.
  - Action: Reallocate resources or hire additional specialists in high-demand areas to balance the load and reduce wait times.

#### Files:
1. Data Collection:
   - Inpatient
   - Outpatient
2. Data Cleaning and Transformation:
   - Mapping_Specialty.sql
4. **Final Power BI Visualization: Healthcare Analysis.pbix**
 
