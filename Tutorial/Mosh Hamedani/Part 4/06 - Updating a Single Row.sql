-- UPDATE invoices
-- SET payment_total = 10, payment_date = '2019-03-01'
-- WHERE invoice_id = 1

-- Restoring
-- UPDATE invoices
-- SET payment_total = DEFAULT, payment_date = DEFAULT -- 0 and NULL respectively can also work
-- WHERE invoice_id = 1

-- Updating Invoice 3 instead
UPDATE invoices
SET 
  payment_total = invoice_total * 0.5, 
  payment_date = due_date
WHERE invoice_id = 3
