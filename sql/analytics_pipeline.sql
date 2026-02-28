CREATE OR REPLACE TABLE `uk_ecommerce.stg_transactions` AS
SELECT
  InvoiceNo AS invoice_no,
  StockCode AS stock_code,
  Description AS description,
  Quantity AS quantity,
  InvoiceDate AS invoice_datetime,
  UnitPrice AS unit_price,
  CustomerID AS customer_id,
  Country AS country,
  Quantity * UnitPrice AS order_value
FROM `uk_ecommerce.raw_transactions`
WHERE
  CustomerID IS NOT NULL
  AND Quantity > 0
  AND UnitPrice > 0;



SELECT
COUNT(*) AS total_rows,
COUNT(DISTINCT customer_id) AS unique_customers,
SUM(order_value) AS total_revenue
FROM `uk_ecommerce.stg_transactions`;


SELECT
COUNT(*) AS total_rows,
COUNT(DISTINCT CustomerID) AS unique_customers,
SUM(UnitPrice) AS total_revenue
FROM `uk_ecommerce.raw_transactions`;

