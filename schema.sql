-- Schema for the database

-- Table for categories
CREATE TABLE Product (
    id NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    desc text(100),
    SKU varchar(100),
    category_id int,
    inventory_id int,
    price decimal,
    discount_id int,
    created_at timestamp,
    modified_at timestamp,
    deleted_at timestamp,
);

-- Table for product_category
CREATE TABLE product_category (
    id NOT NULL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    desc text,
    created_at timestamp,
    modified_at timestamp,
    deleted_at timestamp,
    FOREIGN KEY (id) REFERENCES product(category_id);
);


---Table for product_inventory
CREATE TABLE  product_inventory(
    id NOT NULL int PRIMARY KEY,
    quantity int NOT NULL,
    created_at timestamp,
    modified_at timestamp,
    deleted_at timestamp,
    FOREIGN KEY (id) REFERENCES product(inventory_id);
);

-- Table for discount
CREATE TABLE  discount(
    id NOT NULL int PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    desc text,
    discount_percent decimal,
    active boolean ,
    created_at timestamp,
    modified_at timestamp,
    deleted_at timestamp,
    FOREIGN KEY (id) REFERENCES product(discount_id);
);
