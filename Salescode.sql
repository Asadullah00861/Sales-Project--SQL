------ Q1:  Write an SQL Query to retreive all the sales made on “2022-11-05” ?
SELECT
    total_sale
FROM sales_transactions
WHERE sale_date = '2022-11-05';
------ Q2: Write an SQL Query to retrieve all the information where category is clothing?
SELECT
    *
FROM sales_transactions
where category = 'Clothing' 
------ Q3: Write an SQL query to calculate total sales for each category
select 
category, sum(total_sale) as Net_Sale
from sales_transactions
group by 1
------ Q4: Write an sql query to calculate average age of customers who purchase items from beauty category.
SELECT 
 AVG(age) AS average_age
FROM 
  sales_transactions
WHERE 
   category = 'Beauty';
------ Q5: Write an Sql query to find all transactions wehere total sale is greater than 1000?
select * 
from sales_transactions
where total_Sale > 1000
------ Q6: write an sql query to find total number of transactions made by each gender in each category.
select
gender,category, count(*)as total_transactions
from sales_transactions
group by gender, category
------ Q7: Write an SQL query to calculate the average sale for each month, find best selling month in each year?
SELECT 
    EXTRACT(MONTH FROM sale_date) AS month,
    AVG(total_sale) AS avg_sale
FROM 
    sales_transactions
GROUP BY 
   month
Order By
Month
--------------------------------------------------------------------------
SELECT
    year,
    month_name,
    avg_sale
FROM (
    SELECT
        EXTRACT(YEAR FROM sale_date) AS year,
        TO_CHAR(sale_date, 'Month') AS month_name,
        AVG(total_sale) AS avg_sale,
        RANK() OVER (PARTITION BY EXTRACT(YEAR FROM sale_date)
                     ORDER BY AVG(total_sale) DESC) AS rank
    FROM
        sales_transactions
    GROUP BY
        year, month_name
) ranked
WHERE rank = 1
ORDER BY year;
------ Q8: Write a query to find top 5 customers based on highest total sales.
SELECT 
customer_id, SUM(total_sale) AS total_sales 
FROM Sales_transaction 
GROUP BY customer_id 
ORDER BY total_sales DESC LIMIT 5;
------ Q9: Write an SQL Query to calculate total number of Unique customers in each category?
SELECT
   category, count( distinct customer_id) as customers
FROM sales_transactions
group by category
------ Q10: Write an SQL Query to calculate number of orders in each shift i.e. Morning, Afternoon, Evening?
SELECT
    shift,
    number_of_orders
FROM (
    SELECT
        CASE
            WHEN sale_time <= TIME '12:00:00' THEN 'Morning'
            WHEN sale_time > TIME '12:00:00' AND sale_time <= TIME '17:00:00' THEN 'Afternoon'
            ELSE 'Evening'
        END AS shift,
        COUNT(*) AS number_of_orders
    FROM sales_transactions
    GROUP BY
        CASE
            WHEN sale_time <= TIME '12:00:00' THEN 'Morning'
            WHEN sale_time > TIME '12:00:00' AND sale_time <= TIME '17:00:00' THEN 'Afternoon'
            ELSE 'Evening'
        END
) t
ORDER BY
    CASE WHEN shift = 'Morning' THEN 1
         WHEN shift = 'Afternoon' THEN 2
         WHEN shift = 'Evening' THEN 3
    END;
