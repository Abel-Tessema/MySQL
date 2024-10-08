-- DISTINCT
-- Aggregate functions like MIN, MAX, SUM, etc.
-- GROUP BY / HAVING
-- UNION

-- If a view doesn't have any of the above, then it's updatable.

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

-- DELETE FROM invoices_with_balance
-- WHERE invoice_id = 1

UPDATE invoices_with_balance
SET due_date = DATE_ADD(due_date, INTERVAL 2 DAY)
WHERE invoice_id = 2