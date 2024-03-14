-- Number of types of aisle = 134
SELECT COUNT(DISTINCT aisle) 
FROM ic_aisles;

-- Number of types of department = 21
SELECT COUNT(DISTINCT department) 
FROM ic_departments;

-- Number of products = 10000
SELECT COUNT(product_id)
FROM ic_products;

