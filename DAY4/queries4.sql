-- ORDER_ITEMS TABLE–Based 
-- 26. Display all order items. 
SELECT * FROM order_items;

-- 27. Find total quantity ordered for each product. 
SELECT p.product_name, 
         SUM(oi.quantity) AS total_quantity
        
FROM order_items oi
JOIN product p
ON oi.product_id = p.product_id
GROUP BY p.product_name;

-- 28. Find products ordered more than 3 times. 
SELECT p.product_name,
       SUM(oi.quantity) AS total_quantity
FROM order_items oi
JOIN product p
ON oi.product_id = p.product_id
GROUP BY p.product_name
HAVING SUM(oi.quantity) > 3;




-- 29. Calculate total price per order using order_items table. 
SELECT oi.order_id,
       SUM(oi.quantity * oi.price) AS total_price
FROM order_items oi
GROUP BY oi.order_id;




-- 30. Find products that were never ordered. 
SELECT p.product_id,
       p.product_name
FROM product p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;