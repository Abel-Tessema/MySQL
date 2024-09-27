-- Unlike procedures, functions return a single value, not a result set.

USE sql_invoicing;

-- DROP TRIGGER IF EXISTS paymentsAfterInsert;

-- DELIMITER $$
-- CREATE TRIGGER paymentsAfterInsert
--   AFTER INSERT on payments
--   FOR EACH ROW
-- BEGIN
--   UPDATE invoices
--   SET payment_total = payment_total + NEW.amount
--   WHERE invoice_id = NEW.invoice_id;
-- END$$
-- DELIMITER ;

-- INSERT INTO payments
-- VALUES (DEFAULT, 5, 3, '2019-03-05', 10, 1);

-- Exercise

-- DROP TRIGGER IF EXISTS paymentsAfterDelete;

-- DELIMITER $$
-- CREATE TRIGGER paymentsAfterDelete
--   AFTER DELETE on payments
--   FOR EACH ROW
-- BEGIN
--   UPDATE invoices
--   SET payment_total = payment_total - OLD.amount
--   WHERE invoice_id = OLD.invoice_id;
-- END$$
-- DELIMITER ;

DELETE FROM payments
WHERE payment_id = LAST_INSERT_ID()