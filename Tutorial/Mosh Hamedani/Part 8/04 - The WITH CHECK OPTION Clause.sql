-- UPDATE invoices_with_balance
-- SET payment_total = invoice_total
-- WHERE invoice_id = 2

-- CREATE OR REPLACE VIEW invoices_with_balance AS
-- SELECT
--   invoice_id,
--   number,
--   client_id,
--   invoice_total,
--   payment_total,
--   invoice_total - payment_total AS balance,
--   invoice_date,
--   due_date,
--   payment_date
-- FROM invoices
-- WHERE (invoice_total - payment_total) > 0
-- WITH CHECK OPTION

UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 3