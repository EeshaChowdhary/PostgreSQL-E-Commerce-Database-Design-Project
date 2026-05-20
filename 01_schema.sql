CREATE TABLE clients (
    client_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    address TEXT
);

CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL
);

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

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    client_id INT,
    order_date DATE DEFAULT CURRENT_DATE,
    total_amount DECIMAL(10,2),
    status VARCHAR(50),

    FOREIGN KEY (client_id)
    REFERENCES clients(client_id)
);

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