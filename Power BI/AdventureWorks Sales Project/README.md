# **AdventureWorks Sales Analysis**
### Technologies: SQL Server, Microsoft Excel, Power BI
### Description: In this project, a request was received from a sales manager at AdventureWorks to provide a comprehensive visualization on their sales vs budget from 2021-2023. The AdventureWorks CRM system utilizes a SQL database to store sales and customer information, while monthly budgets were provided on an Excel spreadsheet. After necessary ETL steps, Power BI is used for the final visualizations.
### Steps:
1. Data Extraction and Transformation with SQL: SQL Queries were used to extract the relevant information from provided tables and clean it for later use.
2. Data Transformation with Power Query: Power Query was used to import cleaned tables from SQL Server (Fact_InternetSalesM, DIM_Customers, DIM_Products, DIM_Customers) and Excel (FACT_Budget). Power Query was also used to ensure all columns were of the right type (date, geography, text...) and double check for duplicates.
3. Data Modeling: After loading the data from Power Query, the Power BI Data Modeling feature was used to create appropriate relationships between the tables. For the InternetSales Fact table, the Order Date field was chosen to link with the Date table. A seperate table for visualization measures was also created.
4. Data Visualization: This visualization features an intial dashboard with two detailed sheets for additional product and customer information. Filters and hierarchies were used in conjunction with several visuals including geographic maps, heatmaps, cards, and clustered bar charts. Calculated measures and conditional formatting was also used to highlight the relationship between sales and budget for a specific period.


**AdventureWorks Sales Manager Request:** 

_Hi!
I hope you are doing well. We need to improve our internet sales reports and want to move from static reports to visual dashboards.
Essentially, we want to focus it on how much we have sold of what products, to which clients and how it has been over time.
Seeing as each sales person works on different products and customers it would be beneficial to be able to filter them also.
We measure our numbers against budget so I added that in a spreadsheet so we can compare our values against performance for 2021-2023.
Let me know if you need anything else!_

**Business Demand Overview:**
-	Reporter: Company Sales Manager
-	Value of Change: Visual dashboards, Improved sales reporting, Follow up for sales force
-	Necessary Systems: Power BI, CRM System
-	Other Relevant Info: Budgets have been delivered in Excel
  
**User Stories:**

| No # | As a (role)	| I want (request / demand) |	So that I (user value)| Acceptance Criteria |
|------|--------------|---------------------------|-----------------------|---------------------|
| 1 | Sales Manager | To get a dashboard overview of internet sales	| Can follow better which customers and products sells the best | A Power BI dashboard which updates data once a day |
| 2	| Sales Representative | A detailed overview of Internet Sales per Customers | Can follow up my customers that buys the most and who we can sell ore to | A Power BI dashboard which allows me to filter data for each customer |
| 3	| Sales Representative | A detailed overview of Internet Sales per Products	| Can follow up my Products that sells the most	| A Power BI dashboard which allows me to filter data for each Product |
| 4	| Sales Manager	| A dashboard overview of internet sales | Follow sales over time against budget | A Power Bi dashboard with graphs and KPIs comparing against budget |

