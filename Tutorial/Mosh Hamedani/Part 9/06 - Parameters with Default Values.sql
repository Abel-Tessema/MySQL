USE sql_invoicing;
-- DROP PROCEDURE IF EXISTS getClientsByState;

-- DELIMITER $$
-- CREATE PROCEDURE getClientsByState(state CHAR(2)) BEGIN
--   IF state IS NULL THEN
--     SET state = 'CA';
--   END IF;
--   SELECT * FROM clients c
--   WHERE c.state = state;
-- END$$
-- DELIMITER ;

-- DELIMITER $$
-- CREATE PROCEDURE getClientsByState(state CHAR(2)) BEGIN
--   IF state IS NULL THEN
--     SELECT * FROM clients;
--   ELSE
--     SELECT * FROM clients c
--     WHERE c.state = state;
--   END IF;
-- END$$
-- DELIMITER ;

-- DELIMITER $$
-- CREATE PROCEDURE getClientsByState(state CHAR(2)) BEGIN
--   SELECT * FROM clients c
--   WHERE c.state = IFNULL(state, c.state);
-- END$$
-- DELIMITER ;

-- -- CALL getClientsByState(NULL);
-- CALL getClientsByState('NY');

-- Exercise

-- DROP PROCEDURE IF EXISTS getPayments;

-- DELIMITER $$
-- CREATE PROCEDURE getPayments(client_id INT, payment_method TINYINT) BEGIN
--   SELECT *
--   FROM payments p
--   WHERE p.client_id = IFNULL(client_id, p.client_id) AND
--         p.payment_method = IFNULL(payment_method, p.payment_method);
-- END$$
-- DELIMITER ;

-- CALL getPayments(NULL, NULL);
-- CALL getPayments(1, NULL);
-- CALL getPayments(NULL, 1);
CALL getPayments(1, 1);