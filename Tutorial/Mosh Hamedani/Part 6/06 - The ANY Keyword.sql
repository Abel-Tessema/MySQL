USE sql_invoicing;

-- SELECT *
-- FROM invoices
-- -- WHERE invoice_total > (
-- --   SELECT MIN(invoice_total)
-- --   FROM invoices
-- --   WHERE client_id = 3
-- -- )
-- WHERE invoice_total > ANY (
--   SELECT invoice_total
--   FROM invoices
--   WHERE client_id = 3
-- )

SELECT *
FROM clients
-- WHERE client_id IN (
WHERE client_id = ANY (
  SELECT client_id
  FROM invoices
  GROUP BY client_id
  HAVING COUNT(*) >= 2
)