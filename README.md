# 📊 Sales Performance & Decision Intelligence

## 🔍 Overview

This project presents an end-to-end **Business Intelligence solution** built to analyse sales performance and support data-driven decision-making. The workflow includes data cleaning, feature engineering, dimensional modeling, and interactive dashboard development.

A dataset of **9,789+ transactions generating ~$2.25M revenue** was transformed into a structured format and analysed to uncover key business insights across regions, categories, and customer segments.

---

## 🎯 Business Objectives

* Evaluate **regional sales performance**
* Identify **high and low-performing segments**
* Analyse **category-level contribution**
* Track **monthly sales trends**
* Support **data-driven sales optimization decisions**

---

## 🛠️ Tools & Technologies

* **Python (Pandas, NumPy)** – Data cleaning & transformation
* **SQL** – Analytical queries on structured data
* **Power BI** – Interactive dashboards & visualization
* **Excel/CSV** – Data storage and intermediate handling

---

## ⚙️ Project Workflow

### 1. Data Cleaning & Feature Engineering

* Removed missing values and cleaned dataset
* Converted date columns into proper datetime format
* Created new features: **Year, Month, Month Name, Day**

### 2. Data Modeling (Star Schema)

The dataset was transformed into a structured **star schema**:

* **Fact Table**

  * `fact_sales` – transaction-level sales data

* **Dimension Tables**

  * `dim_customer` – customer details
  * `dim_product` – product and category info
  * `dim_region` – geographic data
  * `dim_date` – time-based attributes

This structure improves query efficiency and enables scalable analysis.

### 3. SQL Analysis

Analytical SQL queries were written on top of the structured tables to:

* Calculate total revenue and transactions
* Analyse regional and category performance
* Identify top customers and segments
* Track monthly trends
* Detect underperforming segments

### 4. Dashboard Development

Built interactive dashboards in **Power BI** featuring:

* Regional performance comparison
* Category contribution breakdown
* Sales trends over time
* Segment-level performance insights
* Dynamic filters and slicers

---

## 📈 Key Insights

* **31% of total revenue** is concentrated in top-performing segments
* **17% of segments** are underperforming and require optimization
* Significant variation in sales across regions and categories
* Identified top customers contributing disproportionately to revenue
* Seasonal trends observed in monthly sales performance

---
