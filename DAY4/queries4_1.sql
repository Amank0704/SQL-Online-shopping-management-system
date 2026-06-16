-- INVOICE TABLE–Based 
-- 31. Display all invoices. 
SELECT * FROM invoice;


-- 32. Find invoice details for order_id 'O03'. 
SELECT * FROM invoice
WHERE order_id = 'O03';


-- 33. Delete invoice with inv_no = 'I08'. 
DELETE FROM payment
WHERE inv_no = 'I08';

DELETE FROM invoice
WHERE inv_no = 'I08';


-- 34. Change invoice date of inv_no 'I07' to 16-08-2023. 
UPDATE invoice
SET inv_date = '2023-08-16'
WHERE inv_no = 'I07';

-- verify 
SELECT * FROM invoice
WHERE inv_no = 'I07';


-- 35. Find invoices generated between two given dates. 
SELECT *
FROM invoice
WHERE inv_date BETWEEN '2023-07-01' AND '2023-08-31';