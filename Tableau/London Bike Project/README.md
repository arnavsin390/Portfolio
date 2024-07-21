# **London Bike Sharing Analysis**
### Technologies: Python (pandas, zipfile, kaggle), Excel, Tableau
#### Final Product: [London Bike Analysis](LondonBikeAnalysis.twb)
#### Description: 
The London bike-sharing scheme has been a significant initiative aimed at promoting sustainable transportation, reducing traffic congestion, and improving public health. Despite the availability of extensive data on bike usage, there is a need for effective analysis and visualization to better understand user patterns, peak usage times, and the factors influencing bike-sharing activity. The challenge is to analyze and create a comprehensive visualization of London bike-sharing data that can effectively communicate:

1. Temporal patterns in bike-sharing usage, including daily, weekly, and seasonal trends.
2. Identification of peak usage times.
3. The impact of weather, events, and other external factors on bike-sharing activity.

#### Objectives:

1. Data Collection: Gather comprehensive data on bike-sharing usage in London, including ride frequency, weather patterns, and user information from available sources such as Transport for London (TfL).
2. Data Cleaning and Preprocessing: Ensure the data is accurate, consistent, and formatted correctly for analysis. Handle missing values, inconsistencies, and potential errors.
3. Exploratory Data Analysis (EDA): Perform EDA to uncover initial insights, identify patterns, and understand the underlying structure of the data.
4. Visualization Creation: Develop a range of visualizations, including but not limited to:
- Time series plots showing moving average of bike trips over different time periods (daily, weekly, monthly).
- Heatmaps to ride frequency based on wind and temperature conditions.
- Bar charts and line graphs comparing usage patterns on weather and hour.
5. Interpretation and Insights: Provide clear interpretations of the visualizations, drawing attention to key trends, anomalies, and significant findings. Discuss potential reasons behind observed patterns and the implications for urban planning, transportation policy, and the promotion of sustainable transportation.
6. Accessibility and Usability: Ensure that the visualizations are user-friendly, interactive, and accessible to a broad audience, including policymakers, urban planners, researchers, and the general public.
  
#### Process
1. Data Exploration and Transformation with Python: Data was initially imported into python Jupyter Notebook (london_merged.csv) through installing the kaggle, zipfile, and pandas libraries. After converting data into a dataframe with pandas, exploratory functions were used to identify data size, column headers, data types, through functions such as .value_counts() and head(). Pandas was also used to remove unnecessary columns, rename columns, change data types, and modify data through mappings in dictionaries. Lastly, the modified dataframe was written to an excel filing using to_excel() for future visualization (london_bikes_final.xslx).
2. Data Modeling: This data set only had one table, so there was no need to create a relationship model between multiple tables.
3. Data Visualization: The Tableau dashboard utilizes user-defined parameters for an interactive Moving Average duration and period filter, as well as an overall filter for the Timeline. The filters and visualizations are built upon set actions (Moving Average Period Set) and calculated fields (Min Month, Max Month) that allow the user to select a specific area in the line chart to filter the rest visuals. A granular heatmap is provided for data by wind (kph) and temperature (C), and two other visuals are implemented as tooltips for the line chart and heatmap. Titles are dynamic based on the current user-defined parameters.

#### Files:
1. Data Collection:
   - london-bike-sharing-dataset.zip
2. Data Cleaning and Exploratory Data Analysis:
   - london_bikes.ipynb
   - london_merged.csv
   - london_bikes_final.xlsx
3. **Final Tableau Visualization: LondonBikeAnalysis.twb**
