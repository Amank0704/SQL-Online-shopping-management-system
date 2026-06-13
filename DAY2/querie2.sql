-- 11. Display all product categories. 
SELECT * FROM category;


-- 12. List all products with price greater than 150. 
SELECT * FROM product WHERE price > 150;


-- 13. Find products priced between 100 and 180. 
SELECT * FROM product WHERE price BETWEEN 100 AND 180;


-- 14. Display product name and price of all products. 
SELECT product_name, price FROM product;


-- 15. Count the number of products in each category.
SELECT c.category_name,
       COUNT(p.product_id) AS total_products
FROM category c
JOIN product p
ON c.category_id = p.category_id
GROUP BY c.category_name;


-- 16. Find the maximum and minimum product price.
SELECT MAX(price) AS Maximum_Price,
       MIN(price) AS Minimum_Price
FROM product;



-- 17. Calculate the average price of all products. 
-- 18. Find products belonging to 'Electronics' or 'Clothing' category. 
-- 19. Increase the price of product 'Laptop' to 55000. 
-- 20. List products sorted by product name in ascending order.