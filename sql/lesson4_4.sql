/*從payment資料表,取出所有員工的訂單總數*/
SELECT *
FROM payment;

SELECT staff_id,COUNT(payment_id) as 訂單總合
FROM payment
GROUP BY staff_id

/*取出每個員工,在每一個客戶的訂單金額總合*/
