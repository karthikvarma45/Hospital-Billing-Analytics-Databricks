# Hospital-Billing-Analytics-Databricks

## 📌 Project Overview

Hospital Billing Analytics is an end-to-end Data Engineering and Analytics project developed using **Databricks, Apache Spark, SQL, Delta Lake, and Power BI**.

The primary objective of this project is to transform raw hospital billing data into clean, structured, and analytics-ready datasets using the Medallion Architecture.

The project focuses on building a reliable data pipeline that processes hospital billing information, performs data quality validation, generates business-level summaries, and provides meaningful financial insights through interactive dashboards.

---

## 🎯 Business Problem

Hospitals generate large volumes of billing data across different departments, branches, and payment categories.

However, raw billing data can contain:
- Duplicate billing records.
- Missing department and payer information.
- Invalid quantities and prices.
- Inconsistent data formats.
- Difficulties in tracking revenue and pending payments.

These issues can affect financial reporting and business decision-making.

**Solution:** Build a structured data pipeline using Databricks to clean, validate, transform, and organize hospital billing data into business-ready datasets.

---

## 🏗️ Architecture – Medallion Architecture

The project follows the Bronze, Silver, and Gold architecture.

```text
              SOURCE DATA
            (CSV Files)
                  |
                  ▼
          BRONZE LAYER
          Raw Data Ingestion
                  |
                  ▼
          SILVER LAYER
       Data Cleaning & Validation
                  |
                  ▼
           GOLD LAYER
       Business Aggregations
                  |
                  ▼
          POWER BI DASHBOARD
         Visualization & Insights
```

### 1. Bronze Layer – Raw Data Ingestion

- Ingested raw hospital billing data into Databricks.
- Maintained the original source data.
- Established the initial data ingestion layer.

### 2. Silver Layer – Data Cleaning & Transformation

Performed data cleaning and validation to improve data reliability.

Key activities:
- Identified and handled duplicate records.
- Validated quantity and price fields.
- Identified missing department information.
- Checked missing payer and billing amount values.
- Separated clean and rejected records.

### 3. Gold Layer – Business-Level Transformation

Created aggregated datasets for business reporting and analysis.

Five Gold-layer tables were developed:

| Gold Table | Purpose |
|---|---|
| gold_monthly_revenue | Monthly revenue and visit analysis |
| gold_department_summary | Department-wise revenue performance |
| gold_branch_summary | Branch and regional performance |
| gold_payer_summary | Payer, insurance and pending amount analysis |
| gold_data_quality | Data quality and reconciliation metrics |

---

## ⚙️ Technology Stack

| Technology | Purpose |
|---|---|
| Databricks | Data engineering platform |
| Apache Spark | Distributed data processing engine |
| Lakeflow Spark Declarative Pipelines | Pipeline development and management |
| SQL | Data transformations and aggregations |
| Delta Lake | Reliable data storage |
| Medallion Architecture | Structured data processing |
| Power BI | Dashboard development and visualization |

---

## 🔄 Project Implementation – Step by Step

### Step 1: Understanding the Dataset

- Examined the hospital billing dataset.
- Identified important fields and data structures.
- Understood the business requirements and reporting objectives.
- Identified potential data quality problems.

### Step 2: Building the Data Pipeline

- Configured the Databricks environment.
- Created the Bronze, Silver, and Gold processing layers.
- Implemented the pipeline using Lakeflow Spark Declarative Pipelines.
- Organized transformations into structured processing stages.

### Step 3: Data Cleaning and Validation

- Identified duplicate records.
- Checked missing values.
- Validated quantity and price information.
- Separated valid and invalid records.
- Prepared clean datasets for further processing.

### Step 4: Business Data Transformation

Created five Gold-layer tables to support different analytical requirements.

Applied SQL aggregations to calculate:
- Monthly revenue.
- Department-wise revenue.
- Branch-wise revenue.
- Payer-wise financial performance.
- Data quality metrics.

### Step 5: Data Quality and Reconciliation

Implemented reconciliation checks to verify that the source records were accounted for.

**Data Processing Results:**

| Metric | Records |
|---|---:|
| Bronze Records | 1,010 |
| Clean Records | 968 |
| Rejected Records | 22 |
| Duplicate Records | 20 |

Reconciliation:

```text
Bronze = Clean + Rejected + Duplicate

1,010 = 968 + 22 + 20

Status: PASSED
```

### Step 6: Dashboard Development

Developed an interactive three-page Hospital Billing Analytics Dashboard.

**Page 1 – Hospital Billing Overview**
- Total Revenue
- Total Visits
- Insurance Covered
- Pending Amount
- Monthly Revenue Trend
- Revenue by Department

**Page 2 – Branch & Payer Analysis**
- Revenue by Branch
- Revenue vs Insurance by Payer
- Payer Financial Summary

**Page 3 – Data Quality & Reconciliation**
- Bronze Rows
- Clean Rows
- Rejected Rows
- Duplicate Rows
- Reconciliation Status
- Data Quality Problem Counts

Added interactive filters for month, region, city, branch, department, and payer type.

---

## 📊 Key Outcomes

- Implemented a complete Bronze-to-Silver-to-Gold data processing architecture.
- Processed 1,010 source records with 968 clean records.
- Identified and accounted for 22 rejected records and 20 duplicate records.
- Created five business-ready Gold-layer analytical tables.
- Achieved successful record reconciliation.
- Developed an interactive three-page dashboard for financial and data quality monitoring.

---

## 💡 Key Learnings

Through this project, I gained practical experience in:

- Databricks and Apache Spark ecosystem.
- Lakeflow Spark Declarative Pipelines.
- Medallion Architecture implementation.
- SQL-based ETL and ELT workflows.
- Data cleaning and validation techniques.
- Delta Lake concepts.
- Data aggregation and business reporting.
- Data quality monitoring and reconciliation.
- Connecting processed datasets to Power BI.

---

## 🚀 Conclusion

This project provided practical experience in building an end-to-end Data Engineering solution, starting from raw data ingestion to business-level reporting.

By implementing Medallion Architecture in Databricks, I learned how to organize data processing into structured layers, improve data quality, create analytical datasets, and deliver meaningful business insights through dashboards.

The project demonstrates how raw operational data can be transformed into reliable, decision-ready information using modern Data Engineering technologies.

---

**Technologies:** Databricks | Apache Spark | SQL | Delta Lake | Lakeflow Spark Declarative Pipelines | Power BI

**Project Domain:** Healthcare Analytics | Data Engineering | Business Intelligence
