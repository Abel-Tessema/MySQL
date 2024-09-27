USE sql_store2;

ALTER TABLE Customer
ADD lastName  VARCHAR(64)   NOT NULL  AFTER firstName, -- ADD [COLUMN]
ADD city      VARCHAR(64)   NOT NULL, -- Adds it as the last column.
MODIFY firstName  VARCHAR(32)   DEFAULT '', -- MODIFY [COLUMN], you get the idea.
DROP points;