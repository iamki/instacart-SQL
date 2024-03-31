-- Top 5 most ordered products in Q3
SELECT curr.product_id, prod.product_name, count(1)
FROM ic_order_products_curr curr
  JOIN ic_products prod 
  ON curr.product_id = prod.product_id
GROUP BY 1,2
ORDER BY 3 DESC
limit 5;
