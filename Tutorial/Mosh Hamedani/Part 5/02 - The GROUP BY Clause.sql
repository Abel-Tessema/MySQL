
-- -- Grouping by a single column
-- SELECT
--   client_id,
--   SUM(invoice_total) AS total_sales
-- FROM invoices
-- WHERE invoice_date >= '2019-07-01'
-- GROUP BY client_id
-- ORDER BY total_sales DESC;

-- -- Grouping by multiple columns
-- SELECT
--   state,
--   city,
--   SUM(invoice_total) AS total_sales
-- FROM invoices i
-- JOIN clients c USING (client_id) 
-- GROUP BY state, city 
-- ORDER BY total_sales DESC

-- Exercise

SELECT
  date,
  pm.name AS payment_method,
  SUM(amount) AS total_payments
FROM payments p
JOIN payment_methods pm
  ON p.payment_method = pm.payment_method_id
GROUP BY date, pm.name
ORDER BY date