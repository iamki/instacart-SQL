-- Number of types of aisle = 134
SELECT COUNT(DISTINCT aisle) 
FROM ic_aisles;

-- Number of types of department = 21
SELECT COUNT(DISTINCT department) 
FROM ic_departments;

-- Number of products = 10000
SELECT COUNT(product_id)
FROM ic_products;

-- Total orders in current, Q3 = 782
SELECT COUNT(DISTINCT order_id) 
FROM ic_order_products_curr;

-- Total orders in prior, Q2 = 746
SELECT COUNT(DISTINCT order_id) 
FROM ic_order_products_prior;
  
-- Number of reorders in Q3 = 725
SELECT COUNT(DISTINCT order_id) 
FROM ic_order_products_curr
WHERE reordered = 1;

-- Number of reorders in Q2 = 657
SELECT COUNT(DISTINCT order_id) 
FROM ic_order_products_prior
WHERE reordered = 1;
