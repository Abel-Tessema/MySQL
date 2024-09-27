USE sql_invoicing;
-- DROP PROCEDURE IF EXISTS getClientsByState;

-- DELIMITER $$
-- CREATE PROCEDURE getClientsByState(state CHAR(2)) BEGIN
--   SELECT * FROM clients c
--   WHERE c.state = state;
-- END$$
-- DELIMITER ;

-- CALL getClientsByState('CA');

-- Exercise

-- DROP PROCEDURE IF EXISTS getInvoicesByClient;

-- DELIMITER $$
-- CREATE PROCEDURE getInvoicesByClient(client_id INTEGER) BEGIN
--   SELECT *
--   FROM invoices i
--   WHERE i.client_id = client_id;
-- END$$
-- DELIMITER ;

CALL getInvoicesByClient(1);