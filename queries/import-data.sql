-- Setting up the tables for the project
CREATE DATABASE instacart;

USE instacart;

CREATE TABLE aisles(
				        aisle_id INT AUTO_INCREMENT PRIMARY KEY,
                aisle VARCHAR(50)
                );
CREATE TABLE departments(
				        department_id INT AUTO_INCREMENT PRIMARY KEY,
                department VARCHAR(50)
                );
CREATE TABLE products(
				        product_id INT AUTO_INCREMENT PRIMARY KEY,
                product_name VARCHAR(255),
                aisle_id INT,
                department_id INT
                );
CREATE TABLE order_products_curr(
				        order_id INT,
                product_id INT,
                add_to_cart_order INT,
                reordered INT
                );
CREATE TABLE order_products_prior(
				        order_id INT,
                product_id INT,
                add_to_cart_order INT,
                reordered INT
                );
