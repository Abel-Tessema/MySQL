-- SELECT
--   client_id,
--   SUM(invoice_total) AS total_sales,
--   COUNT(*) AS number_of_invoices
-- FROM invoices
-- GROUP BY client_id
-- HAVING total_sales > 500 AND number_of_invoices > 5 -- The columns referenced here should be present in the SELECT clause.

-- Exercise

-- SELECT 
--   c.first_name AS customer,
--   SUM(
-- FROM orders o
-- JOIN customers c USING (customer_id)
-- WHERE c.state = 'CA'
-- GROUP BY customer_id

SELECT
  c.customer_id,
  c.first_name,
  c.last_name,
  c.state,
  SUM(quantity * unit_price) AS total_expenditure
FROM order_items oi
JOIN orders o 
  USING (order_id)
JOIN customers c 
--   ON o.customer_id = c.customer_id
  USING(customer_id)
WHERE c.state = 'VA'
GROUP BY c.customer_id, c.first_name, c.last_name
HAVING total_expenditure > 100