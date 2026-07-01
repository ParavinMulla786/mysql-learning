CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Users Table
CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(200) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Categories Table
CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Products Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(150) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    category_id INT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_product_category
    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- Cart Table
CREATE TABLE cart (
    cart_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL DEFAULT 1,
    added_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT fk_cart_user
    FOREIGN KEY (user_id)
    REFERENCES users(user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

    CONSTRAINT fk_cart_product
    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);


INSERT INTO users(username, email, password)
VALUES
('Paravin', 'paravin@gmail.com', '123456'),
('Vedantika', 'vedantika@gmail.com', '234567'),
('Shruti', 'shriti@gmail.com', '345678'),
('Nikita', 'nikita@gmail.com', '456789'),
('admin', 'admin@gmail.com', '567890');



insert into categories(category_name)
values
('Fasion'),
('Electronics'),
('Books'),
('Home Appliences'),
('Beauty');


INSERT INTO products(product_name, price, stock, category_id)
VALUES
('T-Shirt', 799.00, 50, 1),
('Laptop', 55000.00, 10, 2),
('Java Programming Book', 499.00, 20, 3),
('Microwave Oven', 8500.00, 8, 4),
('Face Wash', 299.00, 30, 5);


insert into cart(user_id ,product_id,quantity)
VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2);
