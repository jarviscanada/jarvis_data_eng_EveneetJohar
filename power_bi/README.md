# Power BI Analytics

This project consists of an integrated suite of Power BI dashboards designed to provide a 360-degree view of commercial operations, professional workforce trends, and financial market dynamics. By combining internal sales data, global survey insights, and real-time API-driven financial metrics, this ecosystem enables data-driven decision-making across multiple business domains.

#  Beverages Sales Performance Dashboard
## Project Overview

This Power BI dashboard provides a comprehensive 360-degree view of Coca-Cola?s sales operations across the United States for the 2022 fiscal year. It is designed to empower stakeholders with actionable insights into regional performance, product profitability, and supply chain efficiency.


## High-Level Requirements
The dashboard was developed to satisfy the following core stakeholder needs:
- Executive Visibility: Instant access to core business health metrics.
- Profitability Analysis: Deep-dive into operating profit margins across brands and regions.
- Geographical Mapping: Visual representation of sales distribution by US State.
- Financial Transparency: Detailed breakdown of revenue, pricing, and margins.
- Temporal Control: Interactive filtering by date to analyze seasonal trends.

## Data Architecture
The analysis is built upon the Coca-Cola_Sales.xlsx dataset, containing the following key attributes:
- Dimensions: Retailer (Walmart, Target, CVS, Costco), Region, State, City, Beverage Brand, and Delivery Company.
- Metrics: Units Sold, Price per Unit, Total Sales, Operating - Profit, Operating Margin, and Days to Deliver.
Timeframe: January 2022 ? December 2022.

## Constraints & Limitations
- Historical Nature: The dataset is limited to 2022. It does not reflect real-time 2023?2026 market conditions or current inflationary impacts on pricing.
- External Factors: The data does not include external variables such as local weather patterns, competitor activity, or specific marketing spend, which may influence sales spikes.
- Static Logic: Operating margins are calculated based on provided transaction data and do not account for retroactive rebates or off-invoice trade spends.

## Future Enhancements
- Predictive Modeling: Integration of Power BI?s AI features to forecast 2023 sales based on 2022 seasonality.
- What-If Scenarios: Adding parameters to simulate the impact of rising logistics costs (Delivery Days/Company) on the final Operating Profit.
- Customer Sentiment: Incorporating social media or survey data to correlate brand sales with consumer sentiment.

#  Data Professionals Survey Report
## Project Overview
This report analyzes a 2022 global survey of 630 data professionals. It serves as a comprehensive look at the "human side" of the data industry, exploring the demographics, technical preferences, and economic realities of roles like Data Scientists, Analysts, and Engineers.

## High-Level Requirements
The stakeholders required a dashboard that could:
- Benchmark Compensation: Visualize salary distributions across different job titles and experience levels.
- Identify Tech Trends: Determine the most popular programming languages and BI tools used in the field.
- Evaluate Workplace Sentiment: Track self-reported satisfaction regarding work-life balance and salary.
- Map Global Talent: Show the geographic distribution of the data workforce.

## Data Architecture

The analysis is built upon the Data Professional Survey.xlsx dataset, containing 630 unique responses::
- Professional Attributes: Job Title, Years of Experience, and Tech Stack (Python, R, SQL, Power BI, Tableau).
- Demographics: Country of Residence, Age, and Ethnicity.
- Psychographic Data: 1-10 scales for Job Satisfaction, Salary Happiness, and Work-Life Balance.
- Financials: Yearly salary ranges (USD).

## Constraints & Limitations
- Self-Reporting: As the data is survey-based, it is subject to respondent bias and may not be verified against actual payroll or tax documents.
- Sample Size: 630 entries provide a strong trend but may not capture the nuances of smaller regional markets or niche sub-industries.
- Static Snapshot: The data represents a moment in time (2022) and does not reflect the massive industry shifts caused by the Generative AI boom of 2023?2024.

## Future Enhancements
- Career Pathing Logic: Adding a "Career Switcher" analysis to see how many professionals transitioned from non-technical roles.
- Skill-Gap Analysis: Correlation between specific tool proficiencies (e.g., Python vs. R) and higher salary tiers to guide aspiring professionals.

# Stocks Dashboard
##  Project Overview
The Stocks Dashboard is a sophisticated investment monitoring tool built in Power BI that connects directly to the Alpha Vantage API. It provides users with a professional-grade interface to track equity performance, analyze historical trends using Daily Adjusted data, and review fundamental company health via the Company Overview endpoint.
 
## High-Level Requirements
The dashboard was engineered to meet the following investor-centric requirements:
- Live Market Integration: Automated data ingestion from Alpha Vantage to ensure stock prices are current.
- Portfolio Valuation: Real-time calculation of total holdings, unrealized gains/losses, and asset distribution.
- Technical & Fundamental Analysis: A dual-view approach providing both price action (Time Series) and corporate health (P/E ratios, Market Cap, Dividend Yield).
- Interactive Ticker Search: The ability to filter the entire dashboard by entering a specific stock symbol (e.g., AAPL, MSFT)

## Data Architecture
The system utilizes Power Query (M) to interface with REST API endpoints:
- Time Series Daily: Fetches historical daily prices (Open, High, Low, Close, Volume) to populate trend lines.
- Company Overview: Provides fundamental data such as Sector, Industry, EPS, and Beta for risk assessment.
- Earnings Calendar: Ingests a scheduled feed of upcoming earnings announcement dates. This allows for a "Timeline View" that alerts users to potential high-volatility events for their watched tickers.

## Constraints & Limitations
- API Rate Limits: Free-tier Alpha Vantage keys are limited to 5 API requests per minute and 25 requests per day, which may cause refresh errors if too many tickers or endpoints are called simultaneously.
- Data Latency: While the API provides "real-time" quotes, there is often a 15-minute delay compared to exchange floors, consistent with most retail-grade data feeds.


## Future Enhancements
- Sentiment Analysis Integration: Incorporating Alpha Vantage?s "News & Sentiments" API to overlay news headlines onto price charts to explain sudden market movements.
- Portfolio Rebalancing Alerts: A DAX-based logic system that flags assets when they exceed a certain percentage of the total portfolio (e.g., "Tech sector is over 40%").
- Historical Earnings Performance: Correlating past earnings dates with price movement to calculate a "Volatility Score" for specific stocks during earnings week.
