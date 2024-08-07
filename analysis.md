In this section, I am interested to see what stands out in each quarter (Q2 & Q3).

What I found is that some products from ic_order_products_curr & ic_order_products_prior does not exists in ic_products. Therefore, for this case, I will ignore those.

1. What is the Top 5 most popular products in Q3 ? (not counting add to cart)

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
|24852	|Banana|	produce	|fresh fruits|
|13176	|Bag of Organic Bananas|	produce	|fresh fruits|
|21137	|Organic Strawberries|	produce	|fresh fruits|
|21903	|Organic Baby Spinach|	produce|	packaged vegetables fruits|
|47629	|Large Lemon|	produce|	fresh fruits|

2. What is the Top 5 most popular products in Q2? (not counting add to cart)
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
| product_id |	product_name	| department	| aisle |
| --- | --- | --- | ---- |
|24852	|Banana|	produce	|fresh fruits|
|13176	|Bag of Organic Bananas|	produce	|fresh fruits|
|21137	|Organic Strawberries|	produce	|fresh fruits|
|21903	|Organic Baby Spinach|	produce|	packaged vegetables fruits|
|47209	|Organic Hass Avocado|	produce|	fresh fruits|

3. Which product is the most ordered in Q3?
```sql
WITH a AS (
SELECT product_id, count(*) tot
FROM order_products_current
group by 1)

SELECT a.product_id, product_name, department, aisle, a.tot * c.add_to_cart_order AS total_orders
FROM a
  JOIN order_products_current c
    ON a.product_id = c.product_id
  JOIN products prod
    ON c.product_id = prod.product_id
  JOIN departments dept
    ON prod.department_id = dept.department_id
  JOIN aisles aisle
    ON prod.aisle_id = aisle.aisle_id
group by 1,2,3,4
order by 5 desc
limit 10;

```
| product_id |	product_name	| department	| aisle | total_orders
| --- | --- | --- | ---- | --- |
|24852	|Banana|	produce	|fresh fruits| 18726 |
|13176	|Bag of Organic Bananas|	produce	|fresh fruits| 15480 |
|21137	|Organic Strawberries|	produce	|fresh fruits| 10894 |
|21903	|Organic Baby Spinach|	produce|	packaged vegetables fruits| 9784 |
|47626	|Large Lemon|	produce|	fresh fruits| 8135|

4. Which product is the most ordered in Q2?
5. Which product has the most reorder in Q3?

```sql
SELECT curr.product_id, product_name, department, aisle, sum(reordered) AS sum_reordered
FROM products prod
  JOIN order_products_current curr
    ON prod.product_id = curr.product_id
  JOIN departments dept
    ON prod.department_id = dept.department_id
  JOIN aisles aisle
    ON prod.aisle_id = aisle.aisle_id
GROUP BY 1,2,3,4
ORDER BY 5 DESC
LIMIT 5;

```

| product_id |	product_name	| department	| aisle | sum_reordered
| --- | --- | --- | ---- | ---|
|24852	|Banana|	produce	|fresh fruits| 16557|
|13176	|Bag of Organic Bananas|	produce	|fresh fruits| 13362|
|21137	|Organic Strawberries|	produce	|fresh fruits| 8603|
|21903	|Organic Baby Spinach|	produce|	packaged vegetables fruits| 8055|
|47766	|Organic Avocado|	produce|	fresh fruits| 6226 |



6. Which product has the most reorder in Q2?

7. Total number of product with no reorder in Q3 for each department
8. Total number of product with no reorder in Q2 for each department

    
9. Which department has the highest order?
```sql
SELECT department FROM order_products_current curr
JOIN products prod
  ON curr.product_id = prod.product_id
JOIN departments dept
  ON prod.deparment_id = dept.department_id
ORDER BY count(1) DESC
```
11. For each department, which product is the most ordered?
12. For each department, which product is the least ordered?
