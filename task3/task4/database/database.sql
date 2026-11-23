CREATE DATABASE IF NOT EXISTS mysql_task CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE mysql_task;
SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS order_items; DROP TABLE IF EXISTS orders; DROP TABLE IF EXISTS employees; DROP TABLE IF EXISTS products; DROP TABLE IF EXISTS customers;
SET FOREIGN_KEY_CHECKS=1;
CREATE TABLE customers(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,email VARCHAR(100) NOT NULL UNIQUE,city VARCHAR(50) NOT NULL,salary DECIMAL(10,2) NOT NULL,password VARCHAR(255) NOT NULL);
CREATE TABLE products(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,price DECIMAL(10,2) NOT NULL);
CREATE TABLE orders(id INT AUTO_INCREMENT PRIMARY KEY,customer_id INT NOT NULL,order_date DATE NOT NULL,FOREIGN KEY(customer_id) REFERENCES customers(id));
CREATE TABLE order_items(id INT AUTO_INCREMENT PRIMARY KEY,order_id INT NOT NULL,product_id INT NOT NULL,quantity INT NOT NULL,price DECIMAL(10,2) NOT NULL,FOREIGN KEY(order_id) REFERENCES orders(id),FOREIGN KEY(product_id) REFERENCES products(id));
CREATE TABLE employees(id INT AUTO_INCREMENT PRIMARY KEY,name VARCHAR(100) NOT NULL,manager_id INT NULL,FOREIGN KEY(manager_id) REFERENCES employees(id));
-- Demo password for all customers: password
INSERT INTO customers(id,name,email,city,salary,password) VALUES
(1,'Ahmed','ahmed@example.com','Cairo',35000,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(2,'Tariq','tariq@example.com','Cairo',28000,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(3,'Mona','mona@example.com','Alexandria',42000,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(4,'Omar','omar@example.com','Cairo',18000,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(5,'Sara','sara@example.com','Giza',51000,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(6,'Youssef','youssef@example.com','Alexandria',24000,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi'),
(7,'Nour','nour@example.com','Giza',16000,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi');
INSERT INTO products(id,name,price) VALUES(1,'Laptop',25000),(2,'Phone',12000),(3,'Milk',35),(4,'Orange',20),(5,'Keyboard',500);
INSERT INTO orders(id,customer_id,order_date) VALUES
(1,1,'2026-10-01'),(2,1,'2026-10-03'),(3,1,'2026-10-05'),(4,1,'2026-10-07'),(5,1,'2026-10-09'),
(6,2,'2026-10-02'),(7,2,'2026-10-04'),(8,2,'2026-10-06'),(9,2,'2026-10-08'),(10,2,'2026-10-10'),(11,2,'2026-10-12'),(12,2,'2026-10-14'),(13,2,'2026-10-16'),(14,2,'2026-10-18'),
(15,3,'2026-10-11'),(16,4,'2026-10-13'),(17,5,'2026-10-15'),(18,6,'2026-10-17'),(19,7,'2026-10-19');
INSERT INTO order_items(order_id,product_id,quantity,price) VALUES
(1,1,1,25000),(1,3,30,35),(2,2,2,12000),(2,3,40,35),(3,1,1,25000),(3,4,50,20),(4,5,3,500),(4,3,25,35),(5,2,1,12000),(5,4,40,20),
(6,1,1,25000),(6,3,35,35),(7,2,1,12000),(7,4,45,20),(8,3,50,35),(8,5,2,500),(9,1,1,25000),(9,4,55,20),(10,2,2,12000),(10,3,45,35),
(11,3,60,35),(11,4,30,20),(12,1,1,25000),(12,5,1,500),(13,2,1,12000),(13,3,40,35),(14,4,60,20),(14,5,2,500),(15,1,2,25000),(15,3,55,35),
(16,2,1,12000),(16,4,50,20),(17,3,70,35),(17,5,1,500),(18,4,65,20),(18,1,1,25000),(19,3,45,35),(19,2,1,12000);
INSERT INTO employees(id,name,manager_id) VALUES(1,'Manager Ahmed',NULL),(2,'Ali',1),(3,'Mariam',1),(4,'Khaled',2),(5,'Salma',2);
