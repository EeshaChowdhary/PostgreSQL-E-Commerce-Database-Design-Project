-- =========================================
-- E-COMMERCE DATABASE SCHEMA
-- =========================================


-- =========================================
-- CLIENTS TABLE
-- Stores customer information
-- =========================================

CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    address TEXT
);


-- =========================================
-- CATEGORY TABLE
-- Stores product categories
-- =========================================

CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);


-- =========================================
-- PRODUCT TABLE
-- Stores product details
-- =========================================

CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    name VARCHAR(150),
    description TEXT,
    price DECIMAL(10,2),
    stock INT,
    category_id INT,

    FOREIGN KEY (category_id)
    REFERENCES category(category_id)
);


-- =========================================
-- ORDERS TABLE
-- Stores customer orders
-- =========================================

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    client_id INT,
    order_date DATE DEFAULT CURRENT_DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(50),

    FOREIGN KEY (client_id)
    REFERENCES clients(client_id)
);


-- =========================================
-- ORDER_ITEM TABLE
-- Stores products inside each order
-- =========================================

CREATE TABLE order_item (
    order_item_id SERIAL PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES product(product_id)
);