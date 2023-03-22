-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

CREATE TABLE category (
    id INT NOT NULL,
    PRIMARY KEY AUTO INCREMENT,
    category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product (
    id INT NOT NULL,
    PRIMARY KEY AUTO INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock INT NOT NULL DEFAULT 10 NUMERIC,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES category(id)
);

CREATE TABLE tag (
    id INT NOT NULL,
    PRIMARY KEY AUTO INCREMENT,
    tag_name VARCHAR(30)
);

CREATE TABLE productTag (
    id INT NOT NULL,
    PRIMARY KEY AUTO INCREMENT,
    product_id INT,
    FOREIGN KEY (product_id) REFERENCES product(id)
);
