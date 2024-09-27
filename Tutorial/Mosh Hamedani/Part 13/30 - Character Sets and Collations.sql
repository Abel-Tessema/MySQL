SHOW CHARSET;

-- CREATE DATABASE databaseName CHARSET latin1; -- I'm not sure if 'CHARSET' works in this.
CREATE DATABASE databaseName CHARACTER SET latin1;
ALTER DATABASE databaseName CHARACTER SET latin1;
-- CREATE TABLE tableName(...) CHARACTER SET latin1;
CREATE TABLE tableName CHARACTER SET latin1;
ALTER TABLE tableName CHARACTER SET latin1;

DROP TABLE IF EXISTS Customer;
CREATE TABLE IF NOT EXISTS Customer (
  customerId  INT           PRIMARY KEY AUTO_INCREMENT,
  firstName   VARCHAR(64)   CHARACTER SET latin1  NOT NULL,
  points      INT           NOT NULL DEFAULT 0,
  email       VARCHAR(256)  NOT NULL UNIQUE
);