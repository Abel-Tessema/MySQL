-- SELECT *
-- SELECT orders.order_id, customers.first_name, customers.last_name
-- SELECT order_id, first_name, last_name
-- SELECT order_id, customer_id, first_name, last_name

-- SELECT order_id, orders.customer_id, first_name, last_name
-- FROM orders
-- JOIN customers ON customers.customer_id = orders.customer_id

-- SELECT order_id, o.customer_id, first_name, last_name
-- FROM orders o
-- JOIN customers c 
--   ON c.customer_id = o.customer_id

-- Exercise

SELECT order_id, p.product_id, name, quantity, oi.unit_price
FROM order_items oi
JOIN products p
  ON oi.product_id = p.product_id
