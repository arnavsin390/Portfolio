# **COVID Spread Analysis**
### Technologies: SQL Server, Microsoft Excel, Tableau
#### Final Product: COVIDAnalysis.twb
#### Description: 
The COVID-19 pandemic has had a profound impact on global health, economies, and daily life. Despite the availability of vast amounts of data on COVID-19 infection rates, hospitalizations, recoveries, and deaths, there remains a need for clear, accessible, and informative visualizations that can help policymakers, healthcare professionals, researchers, and the general public understand the trends and patterns of the virus's spread. The challenge is to analyze and create a comprehensive visualization of global COVID-19 rates that can effectively communicate:

 1. The spatial distribution of COVID-19 cases.
 2. Trends in infection, recovery, and mortality rates across different regions.
 3. Differences in COVID-19 dynamics between countries and regions, accounting for factors such as healthcare infrastructure, government policies, and population demographics.

**Objectives:**

1. Data Collection: Gather comprehensive and up-to-date data on COVID-19 cases, recoveries, and deaths from reliable sources such as the World Health Organization (WHO), Johns Hopkins University, and national health agencies.
2. Data Cleaning and Preprocessing: Ensure the data is accurate, consistent, and formatted correctly for analysis. Handle missing values, inconsistencies, and potential errors.
3. Exploratory Data Analysis (EDA): Perform EDA to uncover initial insights, identify patterns, and understand the underlying structure of the data.
4. Visualization Creation: Develop a range of visualizations, including but not limited to:
- Overall statistics of COVID-19 cases and deaths over time.
- Geographic maps illustrating the spatial distribution of COVID-19 rates at global and national levels.
- Heatmaps to show the intensity of COVID-19 spread in different regions.
- Comparative bar charts and line graphs to highlight differences between regions.

5. Interpretation and Insights: Provide clear interpretations of the visualizations, drawing attention to key trends, anomalies, and significant findings. Discuss potential reasons behind observed patterns and the implications for public health policy and response strategies.
6. Accessibility and Usability: Ensure that the visualizations are user-friendly and accessible to a broad audience, including non-experts.

### Files:
1. Data Collection:
   - CovidDeaths.xslx
   - CovidVaccinations.xslx
2. Data Cleaning and Exploratory Data Analysis:
   - DataExploration.sql
   - TableauChartQueries.sql
3. SQL Query Results for Visualization
   - Chart1Query.xslx
   - Chart2Query.xslx
   - Chart3Query.xslx
   - Chart4Query.xslx
4. **Final Tableau Visualization: COVIDAnalysis.twb**
 

### Process:
1. Data Collection: Data was imported into SQL from [Our World in Data](https://ourworldindata.org/coronavirus) collected from the reputed sources of John Hopkins, WHO, and national health agencies.
2. Data Cleaning and EDA with SQL and Excel: Utilized exploratory select statements to discover trends and inconsistencies in data, including NUll values, data types, and non-country locations that would affect visuals. Created four seperate queries for specific data corresponding to later visuals, utilizing tools including aggregations, joins, subqueries, partitions, casting, CTE (Common Table Expressions), and temp tables to form a view. Results of quering this view were stored in excel worksheets allow importation into Tableau.
3. Data Visualization: Imported four Excel sheets of SQL query results into Tableau to create a card of overall statistics highlighting COVID stats as of March 2021. A geographic map with conditional coloring shows the countries with the highest infection percentage, with an accompanying line chart forecasting 6 month infection rates for key countries. A treemap highlights countries with the highest infection count along with a bar chart focusing on total deaths per continent.

#### _Result: This SQL EDA and corresponding Tableau visuals provide immediate and easily accessible insights for global covid trends, allowing for many use cases including serving health professionals to in identifying high risk areas for implementation of public health response strategies._
