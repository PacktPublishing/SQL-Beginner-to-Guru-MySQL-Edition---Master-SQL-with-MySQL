use northwind;
-- Create a view for order data
-- Show: Employee first name, last name, customer first name and last name
-- Show: shipper name, product code, product name, order status name, order detail status name
-- Show Tax Status Name
-- Select Data from View
-- Drop view


SELECT 
    employees.first_name as employee_first_name, employees.last_name as employee_last_name, 
    customers.first_name as customer_first_name, customers.last_name as customer_last_name,
    shippers.company as shipper_name, products.product_code, products.product_name, 
    orders_status.status_name as order_status, order_details_status.status_name as order_detail_status,
    orders_tax_status.tax_status_name
FROM
    orders
        JOIN
    order_details ON orders.id = order_details.id
        JOIN
    customers ON orders.customer_id = customers.id
        JOIN
    employees ON orders.employee_id = employees.id
        JOIN
    products ON order_details.product_id = products.id
        JOIN
    orders_tax_status ON ifnull(orders.tax_status_id, 1) = orders_tax_status.id
        JOIN
    orders_status ON orders.status_id = orders_status.id
        JOIN
    order_details_status ON order_details.status_id = order_details_status.id
		JOIN
    shippers ON orders.shipper_id = shippers.id;
    
    
 CREATE OR REPLACE VIEW order_data AS    
 SELECT 
    employees.first_name as employee_first_name, employees.last_name as employee_last_name, 
    customers.first_name as customer_first_name, customers.last_name as customer_last_name,
    shippers.company as shipper_name, products.product_code, products.product_name, 
    orders_status.status_name as order_status, order_details_status.status_name as order_detail_status,
    orders_tax_status.tax_status_name
FROM
    orders
        JOIN
    order_details ON orders.id = order_details.id
        JOIN
    customers ON orders.customer_id = customers.id
        JOIN
    employees ON orders.employee_id = employees.id
        JOIN
    products ON order_details.product_id = products.id
        JOIN
    orders_tax_status ON ifnull(orders.tax_status_id, 1) = orders_tax_status.id
        JOIN
    orders_status ON orders.status_id = orders_status.id
        JOIN
    order_details_status ON order_details.status_id = order_details_status.id
		JOIN
    shippers ON orders.shipper_id = shippers.id;
    
select * from order_data;    
 
DROP VIEW order_data;
 
 
 
 
 
        
        
