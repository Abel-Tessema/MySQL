-- SELECT
--   o.order_id,
--   c.first_name,
--   s.name AS shipper
-- FROM orders o
-- JOIN customers c
--   -- ON o.customer_id = c.customer_id
--   USING (customer_id)
-- -- JOIN shippers s
-- LEFT JOIN shippers s
--   USING (shipper_id)

-- SELECT *
-- FROM order_items oi
-- JOIN order_item_notes oin
-- --   ON oi.order_id = oin.order_Id AND 
-- -- 	 oi.product_id = oin.product_id
--   USING (order_id, product_id)

-- Exercise

USE sql_invoicing;

SELECT 
  p.date, 
  c.name AS client, 
  p.amount,
  pm.name AS payment_method
FROM payments p
JOIN clients c
  USING (client_id)
JOIN payment_methods pm
  ON p.payment_method = pm.payment_method_id