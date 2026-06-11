-- customer data
INSERT INTO customer VALUES
('C01','Priya','Sharma','DA','987654'),
('C02','Rajesh','Patil','MU','123456'),
('C03','Pooja','Singh','GH','234567'),
('C04','Amit','Kumar','DA','345678'),
('C05','Sneha','Joshi','JK','456789'),
('C06','Prakash','Desai','MU','567890'),
('C07','Neha','Patel','GH','678901'),
('C08','Pankaj','Rao','DA','789012'),
('C09','Ritu','Shah','AB','890123'),
('C10','Vikas','Mehta','XY','901234');



-- category data
INSERT INTO category VALUES
('CT01','Electronics'),
('CT02','Clothing'),
('CT03','Books'),
('CT04','Home'),
('CT05','Sports');


-- product data 
INSERT INTO product VALUES
('PR01','Laptop','CT01',50000,20),
('PR02','Mobile','CT01',20000,35),
('PR03','T-Shirt','CT02',500,100),
('PR04','Jeans','CT02',1200,60),
('PR05','SQL Book','CT03',450,50),
('PR06','Chair','CT04',3000,25),
('PR07','Football','CT05',800,40),
('PR08','Headphones','CT01',1800,30),
('PR09','Novel','CT03',250,45),
('PR10','Table Lamp','CT04',900,20);


-- orders data
INSERT INTO orders VALUES
('O01','C01','2023-06-10',52000),
('O02','C02','2023-07-15',21200),
('O03','C03','2023-08-05',1700),
('O04','C04','2023-05-25',1200),
('O05','C02','2023-08-12',10000),
('O06','C06','2023-07-20',3000),
('O07','C07','2023-09-01',800),
('O08','C08','2023-08-18',250),
('O09','C01','2023-06-30',900),
('O10','C03','2023-07-28',1800);




-- order_items data
INSERT INTO order_items
(order_id,product_id,quantity,price)
VALUES
('O01','PR01',1,50000),
('O01','PR08',1,1800),

('O02','PR02',1,20000),
('O02','PR04',1,1200),

('O03','PR07',2,800),

('O04','PR03',2,500),

('O05','PR06',3,3000),

('O06','PR06',1,3000),

('O07','PR07',1,800),

('O08','PR09',1,250),

('O09','PR10',1,900),

('O10','PR08',1,1800);