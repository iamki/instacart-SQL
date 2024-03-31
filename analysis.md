1. What is the Top 5 most ordered products in Q3?

```sql
SELECT curr.product_id, prod.product_name, count(1)
FROM ic_order_products_curr curr
  JOIN ic_products prod 
  ON curr.product_id = prod.product_id
GROUP BY 1,2
ORDER BY 3 DESC
limit 5;
```

2. What is the Top 5 most ordered products in Q2?
```sql
SELECT prior.product_id, prod.product_name, count(1)
FROM ic_order_products_prior prior
  JOIN ic_products prod 
  ON curr.product_id = prod.product_id
GROUP BY 1,2
ORDER BY 3 DESC
limit 5;
```

3. Which product has the most reorder in Q3?

4. Which product has the most reorder in Q2?

5. Which product has the least reorder in Q3?

6. Which product has the least reorder in Q2?

7. Which department has the highest order?
8. Which aisle has the highest order?
