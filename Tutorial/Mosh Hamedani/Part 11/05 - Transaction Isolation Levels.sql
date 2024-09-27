SHOW VARIABLES LIKE 'transaction_isolation';
SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET SESSION TRANSACTION ISOLATION LEVEL SERIALIZABLE;
SET GLOBAL TRANSACTION ISOLATION LEVEL SERIALIZABLE;

-- You set these transaction isolation levels in the backend,
-- just before executing a transaction. You set the level, execute
-- the transaction, then set the level again. That way, the
-- performance of other transactions won't be affected.