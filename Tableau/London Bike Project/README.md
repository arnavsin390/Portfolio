# **London Bike Sharing Analysis**
### Technologies: Python (pandas, zipfile, kaggle), Excel, Tableau
#### Final Product: [London Bike Analysis](LondonBikeAnalysis.twb)
#### Description: In this project, data from the Kaggle London Bike Sharing dataset was used to determine trends in city bike use through dimensions including weather and time. This visualization aims to help predict future bike shares based on weather and time conditions in London.

#### Process
1. Data Exploration and Transformation with Python: Data was initially imported into python Jupyter Notebook (london_merged.csv) through installing the kaggle, zipfile, and pandas libraries. After converting data into a dataframe with pandas, exploratory functions were used to identify data size, column headers, data types, through functions such as .value_counts() and head(). Pandas was also used to remove unnecessary columns, rename columns, change data types, and modify data through mappings in dictionaries. Lastly, the modified dataframe was written to an excel filing using to_excel() for future visualization (london_bikes_final.xslx).
2. Data Modeling: This data set only had one table, so there was no need to create a relationship model between multiple tables.
3. Data Visualization: The Tableau dashboard utilizes user-defined parameters for an interactive Moving Average duration and period filter, as well as an overall filter for the Timeline. The filters and visualizations are built upon set actions (Moving Average Period Set) and calculated fields (Min Month, Max Month) that allow the user to select a specific area in the line chart to filter the rest visuals. A granular heatmap is provided for data by wind (kph) and temperature (C), and two other visuals are implemented as tooltips for the line chart and heatmap. Titles are dynamic based on the current user-defined parameters.

### Files:
1. Data Collection:
   - london-bike-sharing-dataset.zip
2. Data Cleaning and Exploratory Data Analysis:
   - london_bikes.ipynb
   - london_merged.csv
   - london_bikes_final.xlsx
3. **Final Tableau Visualization: LondonBikeAnalysis.twb**
