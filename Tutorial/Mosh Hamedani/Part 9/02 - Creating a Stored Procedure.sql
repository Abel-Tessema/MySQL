USE sql_invoicing;

-- DELIMITER $$
-- CREATE PROCEDURE getClients() BEGIN
--   SELECT * FROM clients;
-- END$$

-- DELIMITER ;

-- CALL getClients();

-- DELIMITER $$
-- CREATE PROCEDURE getInvoicesWithBalance() BEGIN
--   SELECT
--     invoice_id,
--     number,
--     client_id,
--     invoice_total,
--     payment_total,
--     invoice_total - payment_total AS balance,
--     invoice_date,
--     due_date,
--     payment_date
--   FROM invoices
--   WHERE (invoice_total - payment_total) > 0;
-- END$$
-- DELIMITER ;

-- DELIMITER $$
-- CREATE PROCEDURE getInvoicesWithBalance() BEGIN
--   SELECT *
--   FROM invoices_with_balance;
-- END$$
-- DELIMITER ;

CALL getInvoicesWithBalance();
