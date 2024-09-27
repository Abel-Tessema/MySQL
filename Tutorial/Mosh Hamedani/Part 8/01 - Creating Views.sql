USE sql_invoicing;

-- CREATE VIEW sales_by_client AS
-- SELECT 
--   c.client_id,
--   c.name,
--   SUM(invoice_total) AS total_sales
-- FROM clients c
-- JOIN invoices i USING (client_id)
-- GROUP BY client_id, name

-- SELECT *
-- FROM sales_by_client
-- WHERE total_sales > 500
-- ORDER BY total_sales DESC

-- SELECT *
-- FROM sales_by_client
-- JOIN clients USING (client_id)

-- Exercise

CREATE VIEW clients_balance AS
SELECT 
  client_id,
  name,
  -- SUM(invoice_total) - SUM(payment_total) AS balance
  SUM(invoice_total - payment_total) AS balance
FROM clients
JOIN invoices i USING (client_id)
GROUP BY client_id, name