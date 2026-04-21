# 📊 Sales Trend Analysis Using SQL

## 📌 Objective

The objective of this project is to analyze **monthly revenue** and **order volume** using SQL aggregation techniques.

---

## 🛠 Tools Used

* MySQL Workbench
* SQL (Structured Query Language)

---

## 📂 Dataset Description

Table Name: `online_sales`

Columns:

* `order_id` → Unique order identifier
* `order_date` → Date of the order
* `amount` → Revenue generated from the order
* `product_id` → Product identifier

---

## 🔍 Steps Performed

1. Created a database `sales_db`
2. Created table `online_sales`
3. Inserted sample sales data
4. Grouped data by **year and month**
5. Calculated:

   * Total Revenue using `SUM()`
   * Total Orders using `COUNT(DISTINCT order_id)`
6. Sorted results using `ORDER BY`
7. Identified top 3 months using `LIMIT`

---

## 📈 SQL Queries Used

### 🔹 Monthly Revenue & Order Volume

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM online_sales
GROUP BY year, month
ORDER BY year, month;
```

---

### 🔹 Top 3 Months by Revenue

```sql
SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue
FROM online_sales
GROUP BY year, month
ORDER BY total_revenue DESC
LIMIT 3;
```

---

## 📊 Results & Insights

* Monthly sales trends were successfully analyzed
* Revenue increased over time
* March recorded the highest sales
* Order volume was consistent across months

---

## 📸 Output Screenshots

* `results.png` → Monthly revenue and order volume
* `top_months.png` → Top 3 months by revenue

---

## 🧠 Key Concepts Learned

* GROUP BY
* Aggregate Functions (`SUM`, `COUNT`)
* Data filtering and sorting
* Time-based analysis using SQL

---

## 🚀 Conclusion

This project demonstrates how SQL can be used to analyze sales trends and generate meaningful business insights from raw data.

---
