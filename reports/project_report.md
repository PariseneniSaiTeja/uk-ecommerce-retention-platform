# Customer Retention & Churn Analytics Platform – Project Report

## 1. Executive Summary

This project delivers an end-to-end customer analytics and machine learning solution to analyse retention, churn risk, and customer value using UK e-commerce transactional data.

The platform integrates cloud data modelling, business intelligence dashboards, and predictive modelling to support data-driven customer retention strategies.

---

## 2. Business Problem

Customer retention is critical for sustainable growth. The objective was to:

- Identify churn patterns
- Measure customer lifetime behaviour
- Segment customers by value
- Predict churn risk
- Translate insights into actionable strategies

---

## 3. Data Architecture

- Raw transaction data stored in BigQuery
- Cleaned and transformed into analytics-ready tables:
  - Fact Orders
  - Customer Dimension
  - Cohort Retention Table
  - ML Feature Table

The architecture follows a star-schema modelling approach.

---

## 4. Retention & Cohort Analysis

Cohort-based retention analysis was implemented to measure:

- Customer retention by acquisition month
- Retention decay over time
- Comparative lifecycle performance

This allowed identification of strong vs weak acquisition periods.

---

## 5. Churn Prediction Model

A logistic regression model was built using:

- Total orders
- Total revenue
- Average order value
- Tenure

Initial performance revealed feature leakage from recency-based features, which was identified and corrected.

Key insight:
Customers with low purchase frequency and short tenure are significantly more likely to churn.

---

## 6. Customer Segmentation

K-Means clustering identified three behavioural segments:

1. High-value loyal customers (low churn)
2. Occasional buyers (medium churn risk)
3. Low-engagement customers (high churn risk)

Segmentation enables targeted marketing and retention strategies.

---

## 7. Business Impact

The analytics framework enables:

- Targeted retention campaigns
- Revenue protection strategies
- High-value customer prioritisation
- Data-driven growth decisions

---

## 8. Technology Stack

- SQL (BigQuery)
- Python (pandas, scikit-learn)
- Looker Studio (Dashboards)
- Machine Learning (Logistic Regression, Clustering)