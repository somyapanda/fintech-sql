--What are the top 100 highest transactions made between 7:00 am and 9:00 am?
SELECT * FROM transaction;

SELECT *
FROM transaction 
WHERE EXTRACT(hour from date) BETWEEN 7 AND 9
ORDER BY amount DESC
LIMIT 100;

