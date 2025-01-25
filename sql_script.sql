
CREATE DATABASE IF NOT EXISTS productdb;
USE productdb;


CREATE TABLE IF NOT EXISTS product (
                                       id INT AUTO_INCREMENT PRIMARY KEY,
                                       name VARCHAR(255) NOT NULL
    );


CREATE TABLE IF NOT EXISTS product_details (
                                               id INT AUTO_INCREMENT PRIMARY KEY,
                                               product_id INT NOT NULL,
                                               expiration_date DATE NOT NULL,
                                               manufacturer VARCHAR(255) NOT NULL,
    price DOUBLE NOT NULL,
    available TINYINT(1) NOT NULL DEFAULT 0,
    UNIQUE (product_id),
    FOREIGN KEY (product_id) REFERENCES product(id) ON DELETE CASCADE
    );

INSERT INTO product (name) VALUES ('Product 1'), ('Product 2'), ('Product 3');

INSERT INTO product_details (product_id, expiration_date, manufacturer, price, available)
VALUES
    (1, '2023-12-31', 'Manufacturer A', 19.99, 1),
    (2, '2024-06-30', 'Manufacturer B', 29.99, 0),
    (3, '2023-11-15', 'Manufacturer C', 9.99, 1);