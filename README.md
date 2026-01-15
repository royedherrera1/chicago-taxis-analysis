# chicago-taxis-analysis
Exploratory data analysis of Chicago taxi trips using SQL (BigQuery) and Tableau Public.

**Author:** Royed Alberto Herrera Cano  

---

## Executive Summary

Using SQL in Google BigQuery and Tableau Public, I analyzed more than **200 million taxi trips** in the city of Chicago to understand how ride volume, revenue, pricing, and trip duration have evolved over time. The analysis focuses on long-term trends, structural changes, and the impact of major external events on taxi demand.

The results show strong growth in taxi usage between **2013 and 2018**, followed by a **sharp decline in 2020**, and a **partial recovery** in subsequent years that has not returned to pre-pandemic levels. Despite lower ride volumes, **average trip cost and average trip duration have increased steadily**, suggesting a shift toward fewer but longer and more expensive trips.

Based on this, I recommend:

- Monitoring whether higher average ticket prices are driven by longer distances, longer durations, or pricing changes  
- Focusing analysis on post-2020 structural changes rather than short-term fluctuations  
- Segmenting trips by company or payment type to identify behavioral differences  
- Using aggregated historical data as a baseline for future demand forecasting  

---

## Dashboard Preview

![Chicago Taxi Dashboard](https://github.com/royedherrera1/chicago-taxis-analysis/blob/809855e55b8f3aeea891ff9c3e0fb95b0f803343/Tableau%20chicago%20taxis.png)

---

## Business Problem

Taxi trip data contains valuable information about urban mobility and transportation demand. However, without a centralized and aggregated view, it is difficult for stakeholders to answer key questions such as:

- How has taxi demand changed over time?
- How closely are revenue trends tied to trip volume?
- Have customer travel patterns shifted in terms of cost and duration?
- What long-term structural changes occurred after major external disruptions?

**How can historical taxi trip data be analyzed and visualized to identify long-term trends, structural shifts, and actionable insights?**

---

## Dataset

- **Source:** Chicago Taxi Trips — BigQuery Public Dataset  
- **BigQuery dataset:** `bigquery-public-data.chicago_taxi_trips.taxi_trips`  
- **Period Covered:** 2013–2023  
- **Records:** 200+ million taxi trips  
- **Granularity:** Individual trip-level data  

This dataset is publicly available via Google BigQuery. This project is for educational purposes only.


---

## Methodology

- Queried and explored the dataset using **SQL in Google BigQuery**
- Performed data quality checks:
  - Null value analysis
  - Validation of `trip_total` against fare components
  - Filtering invalid records (e.g., zero-distance trips)
- Aggregated data by **year and month** to analyze long-term trends
- Exported aggregated datasets for visualization
- Built an interactive dashboard in **Tableau Public** to present key insights

---

## Analysis Performed

- Total number of trips by year and month  
- Total revenue trends over time  
- Average trip cost (ticket promedio)  
- Average trip duration (minutes)  
- Pre- and post-2020 structural comparison  
- Data consistency validation of fare calculations  

---

## Key Insights

- Taxi trips increased steadily until **2018**, then declined sharply in **2020**
- Post-2020 recovery remains **below historical peak levels**
- Average trip cost shows a **consistent upward trend**
- Average trip duration has also **increased over time**
- The system appears to be shifting toward **lower volume but higher-value trips**

---

## Results & Business Implications

This analysis provides a consolidated view of how Chicago’s taxi system has evolved over the past decade. While total trip volume has not fully recovered, higher ticket values and longer trip durations suggest changes in customer behavior and service usage.

These findings can support:
- Urban mobility analysis  
- Transportation demand planning  
- Revenue and pricing strategy evaluation  
- Long-term trend monitoring  

---

## Recommended Actions

- Track whether increases in average ticket price are sustainable or demand-driven  
- Compare taxi trends against alternative transportation modes (ride-hailing, public transit)  
- Segment trips by company, payment type, or geography to uncover hidden patterns  
- Use historical trends as a baseline for predictive modeling  

---

## Next Steps

- Incorporate geographic analysis using pickup and dropoff locations  
- Perform deeper segmentation by company and payment type  
- Adjust pricing metrics for inflation  
- Extend analysis with forecasting or predictive models  

---

## Dashboard and Data Access

- **Tableau Public Dashboard:**  
  https://public.tableau.com/app/profile/royed.alberto.herrera.cano/viz/AnlisisdelsistemadetaxisdeChicago20132023/Dashboard1

- **SQL Queries & Aggregated Data:**  
  Available in this repository under the `sql/` and `data/` folders  

---

## Skills Used

- **SQL:** Aggregations, filtering, data validation, time-based analysis  
- **BigQuery:** Querying and processing large-scale datasets  
- **Tableau Public:** Dashboard design, trend visualization, storytelling  
- **Data Analysis:** Exploratory analysis, business insights, data storytelling  

---

## Contact Me

- **Email:** royed.123@outlook.com  
- **LinkedIn:** https://www.linkedin.com/in/royed-alberto-herrera-cano/

