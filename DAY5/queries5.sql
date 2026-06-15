-- -- payment table 
-- 36. Display all payment records. 
select * from payment;

-- 37. Find payments with payment status 'FAILED'. 
select * from payment
where payment_status = 'FAILED';


-- 38. Count number of successful payments. 
SELECT COUNT(*) AS Successful_Payments
FROM payment
WHERE payment_status = 'SUCCESS';


-- 39. Find payments made using 'UPI'. 
SELECT *
FROM payment
WHERE payment_mode = 'UPI';


-- 40. Delete payment record with payment_id 'P09'. 
DELETE FROM payment
WHERE payment_id = 'P09';