-- Customer Table based queries

-- 1. Display all records from the CUSTOMER table. 
SELECT * FROM customer;


-- 2. Find the first name and area of customer with cust_id = 'C03'. 
SELECT f_name, area 
FROM customer
WHERE cust_id = 'C03';



-- 3. List names and phone numbers of all customers. 
SELECT f_name, l_name, phone_no
FROM customer;



-- 4. Count the total number of customers.
SELECT COUNT(*) AS Total_Customers
FROM customer;



-- 5. Find customers staying in area 'DA', 'MU', or 'GH'. 
SELECT *
FROM customer
WHERE area IN ('DA','MU','GH');



-- 6. Change the area of customer 'C01' to 'JK'.
UPDATE customer
SET area = 'JK'
WHERE cust_id = 'C01';
--  verify
SELECT * FROM customer
WHERE cust_id = 'C01';




-- 7. Find customers whose first name starts with the letter 'P'. 
SELECT *
FROM customer
WHERE f_name LIKE 'P%';




-- 8. Find customers whose area has 'A' as the second character. 
SELECT *
FROM customer
WHERE area LIKE '_A%';



-- 9. Update the phone number of customer 'Rajesh' to 567889. 
UPDATE customer
SET phone_no = '567889'
WHERE f_name = 'Rajesh';
-- verify 
SELECT * FROM customer
WHERE f_name = 'Rajesh';



-- 10. Delete customer with cust_id = 'C09'.
DELETE FROM customer
WHERE cust_id = 'C09';
-- verify 
SELECT *
FROM customer
WHERE cust_id = 'C09';

SELECT * FROM customer;