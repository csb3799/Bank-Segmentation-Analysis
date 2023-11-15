# Bank Segmentation Analysis

## Introduction
This project explores customer segmentation in banking using simulated Nigerian banking data. By analyzing transaction patterns and account activity, the aim is to identify valuable customer segments, detect dormant accounts, and support data-driven marketing strategies.  

By leveraging SQL queries on realistically simulated datasets, this analysis mimics real-world banking data environments and prepares for financial data roles requiring strong SQL and business understanding.

## Project Objectives
- Identify high-value customers based on transaction volume and frequency  
- Analyze salary payment trends and dormant accounts  
- Understand customer product usage and segmentation by account type  
- Perform regional analysis of customer activity and value across Nigerian cities  
- Provide actionable insights to support targeted banking strategies  

## Methodology

### Data Simulation  
Since access to real banking data is restricted, this project uses simulated datasets designed to mimic real-world Nigerian banking data. The data includes:  
- **Customers:** 200 customers with realistic Nigerian/African first and last names, randomly assigned genders, birthdates between 1970 and 1997, and cities representing Nigerian urban centers.  
- **Accounts:** Multiple accounts per customer, each with unique 10-digit account numbers and associated product types (Savings, Current, Fixed Deposit).  
- **Transactions:** Over 1000 transactions randomly distributed across accounts, including debit and credit types with carefully matched descriptions reflecting real banking activities (e.g., salary payments, POS purchases, transfers). Transaction dates span recent years, simulating ongoing customer activity.

### SQL Analysis  
The core of this project involves writing advanced SQL queries to extract business insights. Techniques applied include:  
- **Aggregations** (SUM, COUNT, AVG) to measure spending, transaction volumes, and frequency.  
- **Joins** to combine customer, account, and transaction data effectively.  
- **Window Functions** and **Grouping Sets** to enable detailed segmentation by time, city, and product type.  
- **Filtering and Date Functions** to analyze trends over months and years and identify dormant accounts.  

This methodology simulates the end-to-end process of banking data analysis, from raw data preparation to actionable business insights, reinforcing skills essential for financial data roles.

## Key Insights & Findings

This section summarizes the core insights derived from SQL analysis across customers, accounts, and transactions:

### 1. Total Spend per Customer  
Revealed the top spenders by summing all debit transactions, helping to identify high-value customers with strong transaction volumes.

### 2. Salary Trend Analysis  
Tracked monthly salary credit trends, showing consistency in salary disbursements and highlighting months where no salaries were paid — a red flag for economic or payroll anomalies.

### 3. Most Active Accounts by Number of Transactions  
Ranked accounts with the highest number of transactions, pointing to highly engaged users.

### 4. Most Active Accounts by Volume  
Identified accounts processing the largest transaction amounts, useful for recognizing premium banking clients.

### 5. Monthly Transaction Breakdown  
Offered a month-by-month analysis of transaction counts and volume, providing a clear view of seasonal banking behavior.

### 6. Yearly Transaction Breakdown  
Aggregated transaction trends over the years, helping understand long-term banking patterns and growth.

### 7. Top 20 High-Value Customers (Total Credit)  
Ranked customers who receive the most inflows — key for relationship management and upselling financial products.

### 8. Dormant Accounts  
Uncovered accounts with no transactions in the last 12 months — a strategic insight for reactivation campaigns.

### 9. Single Product Customers  
Found customers with only one account type — a valuable segment for cross-selling additional financial services.

### 10. Most Used Transaction Services  
Measured usage frequency of services (like POS, transfers, salary payments), indicating service adoption and preferred channels.

### 11. City-wise Performance  
Compared transaction volumes and activity across cities, helping prioritize branch or market expansion efforts.

### 12. Engagement by Region  
Segmented customers and accounts into active vs. dormant groups by region, highlighting geographical strengths and weak points.

> 🔹 **Bonus Insight:** Highest Spender Per City  
Identified the top spender in each Nigerian city — a hyper-localized view of high-value clients.

