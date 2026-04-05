# 🏠 Real Estate Data Analysis (PostgreSQL)

## 📌 Project Overview
This project analyzes real estate sales data using PostgreSQL.

## 📊 Dataset
- 100 real estate records
- Columns: City, Price, Bedrooms, Property Type, etc.

## 🛠 Tools Used
- PostgreSQL
- pgAdmin
- Excel

## 🔍 Key Analysis
- Average price by city
- Property type distribution
- Profit calculation
- Top expensive properties

## 📈 Sample Query
```sql
SELECT City, AVG(SalePrice) AS avg_price
FROM real_estate
GROUP BY City;