-- SELECT c.customer_id, c.first_name, o.order_id
-- FROM customers c
-- -- JOIN orders o
-- -- LEFT JOIN orders o
-- -- RIGHT JOIN orders o
-- RIGHT OUTER JOIN orders o
--   ON o.customer_id = c.customer_id
-- ORDER BY c.customer_id

-- Exercise

SELECT p.product_id, p.name, oi.quantity
FROM products p
LEFT JOIN order_items oi
  ON p.product_id = oi.product_id