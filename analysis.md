In this section, I am interested to see what stands out in each quarter (Q2 & Q3).

What I found is that some products from ic_order_products_curr & ic_order_products_prior does not exists in ic_products. Therefore, for this case, I will ignore those.

1. What is the Top 5 most ordered products in Q3?

```sql
SELECT curr.product_id, product_name, department, aisle
FROM ic_products prod
  JOIN ic_order_products_curr curr
    ON prod.product_id = curr.product_id
  JOIN ic_departments dept
    ON prod.department_id = dept.department_id
  JOIN ic_aisles aisle
    ON prod.aisle_id = aisle.aisle_id
GROUP BY 1,2,3,4
ORDER BY count(1) DESC
LIMIT 5;
```
| product_id |	product_name	| department	| aisle |
| --- | --- | --- | ---- |
|8518	|Organic Red Onion|	produce	|fresh vegetables|
|5876	|Organic Lemon|	produce	|fresh fruits|
|5450	|Small Hass Avocado|	produce	|fresh fruits|
|4920	|Seedless Red Grapes|	produce|	packaged vegetables fruits|
|8277	|Apple Honeycrisp Organic|	produce|	fresh fruits|

2. What is the Top 5 most ordered products in Q2?
```sql
SELECT prior.product_id, product_name, department, aisle
FROM ic_products prod
  JOIN ic_order_products_prior prior
    ON prod.product_id = prior.product_id
  JOIN ic_departments dept
    ON prod.department_id = dept.department_id
  JOIN ic_aisles aisle
    ON prod.aisle_id = aisle.aisle_id
GROUP BY 1,2,3,4
ORDER BY count(1) DESC
LIMIT 5;

```

3. Which product has the most reorder in Q3?

4. Which product has the most reorder in Q2?

5. Which product has the least reorder in Q3?

6. Which product has the least reorder in Q2?

7. Which department has the highest order?
8. Which aisle has the highest order?
