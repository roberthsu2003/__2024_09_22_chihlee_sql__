SELECT * FROM public.payment
ORDER BY payment_id ASC;

SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數量,
		COUNT(amount) AS 筆數,
		MAX(amount) AS 最大,
		MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY customer_id ASC;

SELECT customer_id,
		SUM(amount) AS 加總,
		AVG(amount) AS 平均數量,
		COUNT(amount) AS 筆數,
		MAX(amount) AS 最大,
		MIN(amount) AS 最小
FROM payment
GROUP BY customer_id
ORDER BY COUNT(amount) ASC;