--How can you isolate (or group) the transactions of each cardholder?
SELECT  cardholder_id, COUNT(amount) AS transactions
FROM credit_card AS c INNER JOIN transaction AS t ON c.card = t.card
GROUP BY cardholder_id;

--Count the transactions that are less than $2.00 per cardholder.
SELECT  cardholder_id, COUNT(amount) AS transactions
FROM credit_card AS c INNER JOIN transaction AS t ON c.card = t.card
WHERE amount < 2
GROUP BY cardholder_id
ORDER BY cardholder_id;




