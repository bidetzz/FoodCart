CREATE DATABASE IF NOT EXISTS FoodCart;
use FoodCart
DROP TABLE IF EXISTS products;
CREATE TABLE products(product_id integer NOT NULL, class_name varchar(20) NOT NULL, name varchar(25) NOT NULL, price float NOT NULL, image varchar(130) NOT NULL, PRIMARY KEY (product_id), INDEX USING BTREE (class_name));

DROP TABLE IF EXISTS orders;
CREATE TABLE orders(orderId varchar(100) NOT NULL, purchasedDate DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP, userId varchar(20) NOT NULL, PRIMARY KEY (orderId));

DROP TABLE IF EXISTS orderItem;
CREATE TABLE orderItem(productId integer NOT NULL, orderId varchar(40) NOT NULL, quantity integer NOT NULL);

DROP TABLE IF EXISTS user;
CREATE TABLE user(username VARCHAR(20) NOT NULL, password VARCHAR(100) NOT NULL, nom VARCHAR(20) NOT NULL, prenom VARCHAR(20) NOT NULL, email VARCHAR(40) NOT NULL, address VARCHAR(80) NOT NULL, PRIMARY KEY (username));