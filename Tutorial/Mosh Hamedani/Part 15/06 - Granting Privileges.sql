-- 1) For web/desktop application (backend, basically)
--    It should be able to do CRUD operations, but it shouldn't be able
--    to CREATE TABLEs and such kinds of operations, which are usually
--    reserved for the DBA.
CREATE USER moon_app IDENTIFIED BY '1234';

GRANT SELECT, INSERT, UPDATE, DELETE, EXECUTE
ON sql_store.* -- For all tables in the sql_store database
-- ON sql_store.customers -- For a specific table
TO moon_app;

-- 2) Admin
GRANT ALL
ON sql_store.* -- For a specific database
-- ON *.* -- For all databases
TO john;