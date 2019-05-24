use northwind;
-- Show Customer First Name, Last Name
-- Shipping Company Name
-- Order Date (formatted as January, 1, 2018), Shipping Address (street, city, state, zip, country)
-- Product Code, Product Name, List Price, quantity ordered, and total cost of line item
-- Provide friendly column names
-- Format numbers to have commas and limit decimals to two places

SELECT 
    cust.first_name AS 'First Name',
    cust.last_name AS 'Last Name',
    ord.ship_address AS 'Street',
    ord.ship_city AS 'City',
    ord.ship_state_province AS 'State',
    ord.ship_zip_postal_code AS 'Zip',
    ord.ship_country_region AS 'Country',
    shippers.company AS 'Shipper',
    DATE_FORMAT(ord.order_date, '%M %D %Y') AS 'Order Date',
    products.product_code AS 'Product Code',
    products.product_name AS 'Product Name',
    FORMAT(ord_det.quantity, 0) AS 'Qty Ordered',
    FORMAT(products.standard_cost, 2) AS 'Cost',
    FORMAT(ord_det.quantity * products.standard_cost,
        2) AS 'Total Cost'
FROM
    orders AS ord
        JOIN
    order_details AS ord_det ON ord.id = ord_det.order_id
        JOIN
    customers AS cust ON ord.customer_id = cust.id
        JOIN
    shippers ON shippers.id = ord.shipper_id
        JOIN
    products ON ord_det.product_id = products.id;