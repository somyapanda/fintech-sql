----Create a view for each of your queries.

--Create a view of the top 100 highest transactions made between 7:00 am and 9:00 am?
CREATE VIEW highest_transaction AS
SELECT *
FROM transaction 
WHERE EXTRACT(hour from date) BETWEEN 7 AND 9
ORDER BY amount DESC
LIMIT 100;

--How can you isolate (or group) the transactions of each cardholder?
CREATE VIEW isolate_transaction AS
SELECT  cardholder_id, COUNT(amount) AS transactions
FROM credit_card AS c INNER JOIN transaction AS t ON c.card = t.card
GROUP BY cardholder_id;

--Count the transactions that are less than $2.00 per cardholder.
CREATE VIEW transaction_less_than_2 AS
SELECT  cardholder_id, COUNT(amount) AS transactions
FROM credit_card AS c INNER JOIN transaction AS t ON c.card = t.card
WHERE amount < 2
GROUP BY cardholder_id
ORDER BY cardholder_id;

CREATE VIEW top_5_merchant AS 
SELECT id_merchant, COUNT(amount) AS transactions
FROM transaction
WHERE amount < 5
GROUP BY id_merchant
ORDER BY transactions DESC
LIMIT 5;

