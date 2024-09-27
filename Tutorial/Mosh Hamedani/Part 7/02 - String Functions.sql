-- SELECT LENGTH('Sky')
-- SELECT UPPER('Sky')
-- SELECT LOWER('Sky')
-- SELECT LTRIM('   Sky')
-- SELECT RTRIM('Sky   ')
-- SELECT TRIM('   Sky   ')
-- SELECT LEFT('Kindergarten', 4)
-- SELECT RIGHT('Kindergarten', 3)
-- SELECT SUBSTR('Kindergarten', 3, 5) -- It's 1-indexed.
-- SELECT SUBSTRING('Kindergarten', 3, 5)
-- SELECT SUBSTRING('Kindergarten', 3)
-- SELECT LOCATE('N', 'Kindergarten')
-- SELECT LOCATE('q', 'Kindergarten')
-- SELECT LOCATE('garten', 'Kindergarten')
-- SELECT REPLACE('Kindergarten', 'garten', 'garden')
-- SELECT CONCAT('Bela', 'Jash')
-- SELECT CONCAT_WS(' ', 'Bela', 'Jash')

USE sql_store;

SELECT CONCAT(first_name, ' ', last_name) AS full_name
FROM customers