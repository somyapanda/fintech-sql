--What are the top 5 merchants prone to being hacked using small transactions?
SELECT id_merchant, COUNT(amount) AS transactions
FROM transaction
WHERE amount < 5
GROUP BY id_merchant
ORDER BY transactions DESC
LIMIT 5;