# 📊 SQL - Sales Dashboard Project  

This project demonstrates the use of **SQL queries for sales data analysis**. It focuses on extracting meaningful business insights from a fictional `sales_transactions` dataset — including sales performance, customer behavior, and product category analysis.  

Each query answers a specific analytical question, showcasing key SQL concepts such as filtering, aggregation, grouping, ranking, and time-based analysis.  

---

## 🚀 Project Overview  

The dataset `sales_transactions` includes fields such as:  
- `sale_date`, `sale_time`  
- `category`, `total_sale`  
- `customer_id`, `age`, `gender`  

The goal of this project is to explore sales trends, customer demographics, and product performance using SQL.  

---

## 🧠 Key SQL Tasks & Queries  

| # | Objective | SQL Concept Used |
|---|------------|------------------|
| Q1 | Retrieve all sales made on `2022-11-05` | Filtering with `WHERE` |
| Q2 | Retrieve all transactions where category = ‘Clothing’ | Filtering by category |
| Q3 | Calculate total sales for each category | `GROUP BY`, `SUM()` |
| Q4 | Calculate average age of customers in Beauty category | `AVG()` with condition |
| Q5 | Find transactions with total sale > 1000 | Conditional filtering |
| Q6 | Count total transactions by gender and category | Multi-column `GROUP BY` |
| Q7 | Calculate average monthly sales and find best-selling month per year | `EXTRACT()`, `RANK()`, window functions |
| Q8 | Find top 5 customers with highest total sales | Aggregation + sorting + `LIMIT` |
| Q9 | Count unique customers in each category | `COUNT(DISTINCT)` |
| Q10 | Determine number of orders by shift (Morning, Afternoon, Evening) | Conditional logic with `CASE` |

---

## 🛠️ Tools & Skills Used  
- **SQL (PostgreSQL / MySQL compatible)**  
- Data Aggregation & Summarization  
- Date & Time Functions  
- Ranking and Window Functions  
- Query Optimization & Readability  

---

## 📈 Outcome  
This project provides a foundation for building a **Sales Analytics Dashboard**.  
The insights derived from these SQL queries can be visualized using BI tools such as **Power BI**, **Tableau**, or **Excel** to support data-driven decision-making.  

---

## 📂 Repository Contents  
