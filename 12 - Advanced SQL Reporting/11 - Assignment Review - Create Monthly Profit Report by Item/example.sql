use northwind;
-- Create report by year, by month, by item
-- Show total sales, cost, and profit List Price * order quantity - standard cost * order quantity 
-- Limit to order lines invoiced 
-- Use Equi-Join Syntax for table joins

SELECT 
    DATE_FORMAT(ord.order_date, '%Y - %m') AS 'Order Month',
    p.product_code AS 'Product Code',
    p.product_name AS 'Description',
    CONCAT('$',
            FORMAT(SUM(quantity * p.list_price), 2)) AS 'Sales',
    CONCAT('$',
            FORMAT(SUM(odt.quantity * p.standard_cost),
                2)) AS 'Cost',
    CONCAT('$',
            FORMAT(SUM((p.list_price - p.standard_cost) * odt.quantity),
                2)) AS 'Profit'
FROM
    orders AS ord,
    order_details AS odt,
    products AS p
WHERE
    ord.id = odt.order_id
        AND odt.product_id = p.id
GROUP BY DATE_FORMAT(ord.order_date, '%Y - %m') , p.product_code
ORDER BY DATE_FORMAT(ord.order_date, '%Y - %m') , SUM((p.list_price - p.standard_cost) * odt.quantity) DESC;
