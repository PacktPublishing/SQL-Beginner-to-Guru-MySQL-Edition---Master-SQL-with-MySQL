use northwind;
-- Create a Weekly Sales Report per Employee
-- Report should list each employee and show zero if the employee had no sales
-- Should be values for each week company had sales
-- Use outer joins
-- Use ifnull function to provide zero values
-- Hint - you will need to use a subquery for order data


select first_name, last_name, week, format(ifnull(sales, 0), 2) as total_sales from employees
left outer join 
(select week(order_date) as week, employee_id, sum(shipping_fee + (quantity * list_price)) as sales
from orders, order_details, products
where orders.id = order_details.order_id
and order_details.product_id = products.id
group by 1, 2 ) as order_data on 
employees.id = order_data.employee_id
order by 3, 2;

SELECT 
    week_id AS 'Week',
    last_name AS 'Last Name',
    first_name AS 'First Name',
    FORMAT(IFNULL(sales, 0), 2) AS 'Total Sales'
FROM
    (SELECT 
        e.id AS employee_id, week_id, last_name, first_name
    FROM
        employees e
    CROSS JOIN (SELECT DISTINCT
        (WEEK(order_date)) AS week_id
    FROM
        orders) AS distict_weeks) AS order_weeks
        LEFT OUTER JOIN
    (SELECT 
        employee_id,
            WEEK(order_date) AS order_week,
            SUM(shipping_fee + (quantity * list_price)) AS sales
    FROM
        orders, order_details, products
    WHERE
        orders.id = order_details.order_id
            AND order_details.product_id = products.id
    GROUP BY 1 , 2) AS order_data ON order_weeks.employee_id = order_data.employee_id
        AND order_weeks.week_id = order_data.order_week
ORDER BY 1 , 2;   
        
        
        