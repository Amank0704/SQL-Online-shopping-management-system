-- JOIN & AGGREGATION–Based 
-- 41. Display customer names along with their order IDs. 
SELECT c.f_name,
       c.l_name,
       o.order_id
FROM customer c
JOIN orders o
ON c.cust_id = o.cust_id;


-- 42. List product names and quantities ordered by each customer. 
SELECT c.f_name,
       p.product_name,
       oi.quantity
FROM customer c
JOIN orders o
ON c.cust_id = o.cust_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN product p
ON oi.product_id = p.product_id;


-- 43. Find total amount spent by each customer. 
SELECT c.cust_id,
       c.f_name,
       SUM(o.total_amount) AS total_spent
FROM customer c
JOIN orders o
ON c.cust_id = o.cust_id
GROUP BY c.cust_id, c.f_name;


-- 44. Display invoice number and customer name. 
SELECT i.inv_no,
       c.f_name,
       c.l_name
FROM invoice i
JOIN orders o
ON i.order_id = o.order_id
JOIN customer c
ON o.cust_id = c.cust_id;


-- 45. Find customers who have placed at least one order. 
SELECT DISTINCT c.*
FROM customer c
JOIN orders o
ON c.cust_id = o.cust_id;


-- 46. Find customers who have not placed any orders. 
SELECT c.*
FROM customer c
LEFT JOIN orders o
ON c.cust_id = o.cust_id
WHERE o.order_id IS NULL;


-- 47. Display product name and category name for all products. 
SELECT p.product_name,
       c.category_name
FROM product p
JOIN category c
ON p.category_id = c.category_id;


-- 48. Find total sales amount for each category. 
SELECT c.category_name,
       SUM(oi.quantity * oi.price) AS total_sales
FROM category c
JOIN product p
ON c.category_id = p.category_id
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY c.category_name;



-- 49. Find the customer who has spent the maximum amount. 
SELECT c.cust_id,
       c.f_name,
       SUM(o.total_amount) AS total_spent
FROM customer c
JOIN orders o
ON c.cust_id = o.cust_id
GROUP BY c.cust_id, c.f_name
HAVING SUM(o.total_amount) =
(
    SELECT MAX(total_amount_spent)
    FROM
    (
        SELECT SUM(total_amount) AS total_amount_spent
        FROM orders
        GROUP BY cust_id
    ) t
);


-- 50. Display product names ordered by customers from area 'DA'. 
SELECT DISTINCT p.product_name
FROM customer c
JOIN orders o
ON c.cust_id = o.cust_id
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN product p
ON oi.product_id = p.product_id
WHERE c.area = 'DA';