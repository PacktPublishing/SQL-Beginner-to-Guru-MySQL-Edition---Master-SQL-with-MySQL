use northwind;
-- Create Sales Report by year, month, by state 
-- Show total revenue - List Price * order quantity
-- Limit to order lines invoiced

SELECT 
    DATE_FORMAT(order_date, '%Y - %m') AS 'Sales Month', 
    ord.ship_state_province as 'State',
    CONCAT('$',
            FORMAT((odt.quantity * products.list_price),
                2)) AS 'Total Sales'
FROM
    orders AS ord
        JOIN
    order_details odt ON ord.id = odt.order_id
        JOIN
    products ON odt.product_id = products.id
WHERE
    odt.status_id = 2
GROUP BY DATE_FORMAT(order_date, '%Y - %m'), ord.ship_state_province
ORDER BY 'Sales Month' ASC;