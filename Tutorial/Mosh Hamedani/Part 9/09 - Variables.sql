-- User or session variables
-- SET @invoices_count = 0;

-- Local variables
-- Those declared inside procedures or functions.

-- DROP PROCEDURE IF EXISTS getRiskFactor;

-- DELIMITER $$
-- CREATE PROCEDURE getRiskFactor() BEGIN
--   -- risk_factor = invoices_total / invoices_count * 5
--   DECLARE risk_factor DECIMAL(9, 2) DEFAULT 0;
--   DECLARE invoices_total DECIMAL(9, 2);
--   DECLARE invoices_count INT;
--   
--   SELECT COUNT(*), SUM(invoice_total)
--   INTO invoices_count, invoices_total
--   FROM invoices;
--   
--   SET risk_factor = invoices_total / invoices_count * 5;
--   
--   SELECT risk_factor;
-- END$$
-- DELIMITER ;

CALL getRiskFactor();