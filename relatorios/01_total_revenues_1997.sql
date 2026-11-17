
SELECT
SUM((order_details.unit_price) * order_details.quantity * (1.0 - order_details.discount)) AS total_revenues_1997 --calcule of the total revenues for each order
FROM order_details -- select wich table uses in code, the table have the price of each product 
INNER JOIN (
    SELECT order_id -- select the table have quantity of orders 
    FROM orders 
    WHERE EXTRACT(YEAR FROM order_date) = '1997' -- the filter for pass only year 1997
) AS ord 
ON ord.order_id = order_details.order_id; -- the parameter or complete the join 