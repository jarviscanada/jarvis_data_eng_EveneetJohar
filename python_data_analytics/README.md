# Introduction

This project analyzes historical retail transaction data for LGS to better understand customer purchasing behavior and sales performance. In a competitive retail environment, insights into buying frequency, timing, and spending are essential for improving revenue, retention, and marketing effectiveness. The raw transaction data was cleaned and prepared prior to analysis.The results enable data-driven decision-making by revealing seasonal trends, customer segments, and purchasing patterns. Techniques such as RFM analysis were used to identify high-value and inactive customers, supporting targeted promotions, improved retention, and more effective inventory planning.

The project was implemented using accessible and flexible data tools, including Python for data processing, Pandas, NumPy, and Matplotlib for analysis and visualization, PostgreSQL for local data storage, and Jupyter Notebook to orchestrate the workflow and present interactive results. Docker was used to containerize and connect the PostgreSQL and Jupyter services, while Git handled version control. The project followed a data-warehousing approach, transforming transactional (OLTP) data into aggregated, analysis-ready (OLAP) datasets to facilitate trend analysis and customer segmentation.



# Implementation

## Project Architecture

This proof-of-concept (PoC) project examines customer shopping behavior for London Gift Shop (LGS) without accessing their production cloud environment. LGS runs a cloud-based online store where customer interactions occur through a web application supported by APIs and an OLTP database that records transactions.

For the PoC, LGS provided a sanitized SQL dump of historical transaction data, with all personal information removed. The Jarvis team conducted the entire analysis outside the LGS Azure environment.

The data was imported into a local PostgreSQL database serving as an analytical (OLAP) warehouse and analyzed using Python within Jupyter Notebook. The setup maintains a clear OLTP-to-OLAP separation, converting raw transactional records into aggregated, analysis-ready datasets to support trend analysis, customer segmentation, and marketing insights for the LGS team.

## Project Architecture Diagram





# Data Analytics and Wrangling

The data analytics and wrangling for this project were conducted using Python within a Jupyter Notebook. The notebook includes the complete workflow for data cleaning, transformation, exploratory analysis, and customer segmentation applied in this PoC.

Insights derived from this analysis provide LGS with actionable opportunities to drive revenue growth. For example, customer segmentation outcomes, such as RFM analysis, can help identify high-value and loyal customers, enabling targeted promotions, loyalty programs, and early-access offers.

Additionally, recognizing inactive or low-frequency customers allows LGS to implement re-engagement initiatives, such as personalized email campaigns or limited-time offers, to encourage repeat purchases. By integrating customer behavior insights with pricing and product-level trends, LGS can enhance marketing effectiveness, boost customer retention, and ultimately drive overall revenue growth.

 # Project Improvements

 If additional time were available, the project could be further enhanced with the following improvements:

- Automate data ingestion and transformation: Develop a scheduled ETL pipeline to replace the current manual SQL file import, ensuring more efficient and reliable data updates.

- Enhance contextual analysis: Incorporate information on the timing of sales and promotions in each country to better understand and explain regional variations in sales performance.

- Implement interactive dashboards: Build automated, interactive dashboards using a visualization tool, enabling the LGS marketing team to explore trends and customer segments directly. This would allow data to be refreshed and visualized automatically, reducing reliance on Jupyter notebooks.
