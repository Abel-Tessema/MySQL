USE sql_invoicing;

-- DROP PROCEDURE IF EXISTS getUnpaidInvoicesForClient;

-- DELIMITER $$
-- CREATE PROCEDURE getUnpaidInvoicesForClient(
--   client_id INT,
--   OUT invoices_count INT,
--   OUT invoices_total DECIMAL(9, 2)
-- ) BEGIN
--   SELECT COUNT(*), SUM(invoice_total)
--   INTO invoices_count, invoices_total
--   FROM invoices i
--   WHERE i.client_id = client_id AND
--         payment_total = 0;
-- END$$
-- DELIMITER ;

-- CALL getUnpaidInvoicesForClient(3);
SET @invoices_count = 0;
SET @invoices_total = 0;
CALL sql_invoicing.getUnpaidInvoicesForClient(3, @invoices_count, @invoices_total);
SELECT @invoices_count, @invoices_total;