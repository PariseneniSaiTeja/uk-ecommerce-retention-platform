# UK E-Commerce Retention & Churn Analytics Platform

## Overview

This project delivers an end-to-end customer analytics and machine learning platform designed to analyse revenue performance, customer retention, churn risk, and behavioural segmentation using UK e-commerce transactional data.

The objective was to simulate a real-world commercial analytics workflow — from cloud data modelling to executive dashboards and predictive modelling — demonstrating how data-driven insights support strategic business decisions.

---

## Business Objectives

- Analyse customer purchasing behaviour and revenue trends
- Measure customer retention using cohort-based lifecycle analysis
- Identify key drivers of churn
- Segment customers based on behavioural and value metrics
- Translate analytical findings into actionable retention strategies

---

## Data Architecture

### Cloud Data Layer (BigQuery)

Transactional data was ingested and modelled using structured analytics engineering principles:

- Raw transaction staging
- Fact Orders table
- Customer Dimension table
- Cohort Retention table
- ML-ready Customer Feature table

A star-schema design was implemented to support scalable reporting and downstream modelling.

---

## Business Intelligence & Reporting

Interactive dashboards were developed using Looker Studio to provide:

- Executive KPI overview (Revenue, Orders, Customers, AOV)
- Cohort-based retention heatmaps
- Customer retention curves
- Revenue concentration analysis
- Customer value and segmentation insights

Dashboards are included in the `/dashboards` folder.

---

## Machine Learning

### Churn Prediction

A churn prediction model was built using behavioural and RFM-style features:

- Total Orders
- Total Revenue
- Average Order Value
- Tenure

Churn was defined using a dataset-anchored time reference to ensure realistic labelling.

During modelling, feature leakage from recency-based variables was identified and corrected to ensure model integrity and generalisability.

Model evaluation included:
- Train/Test split with stratification
- Feature scaling
- Logistic Regression baseline
- ROC-AUC performance assessment

---

### Customer Segmentation

K-Means clustering was applied to behavioural features to identify distinct customer groups:

1. High-value loyal customers (low churn risk)
2. Medium-frequency buyers (moderate churn risk)
3. Low-engagement customers (high churn risk)

Segmentation enables targeted retention and marketing strategies.

---

## Key Insights

- Purchase frequency and tenure are the strongest predictors of churn.
- High-value repeat customers demonstrate significantly lower churn rates.
- A large portion of revenue is concentrated within a loyal customer segment.
- Behavioural segmentation provides clear targeting opportunities for retention campaigns.

---

## Business Impact

This platform demonstrates how organisations can:

- Detect churn risk early
- Prioritise high-value customers
- Improve retention through targeted interventions
- Support growth with data-driven lifecycle analysis


