CREATE TABLE IF NOT EXISTS shop (
    id BIGSERIAL PRIMARY KEY,
    created TIMESTAMP,
    creator VARCHAR(255),
    creator_id VARCHAR(50),
    edited TIMESTAMP,
    editor VARCHAR(255),
    editor_id VARCHAR(50),
    storage_map TEXT,
    active SMALLINT,
    birth DATE,
    name VARCHAR(255) NOT NULL,
    slug VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS person (
    id BIGSERIAL PRIMARY KEY,
    created TIMESTAMP,
    creator VARCHAR(255),
    creator_id VARCHAR(50),
    edited TIMESTAMP,
    editor VARCHAR(255),
    editor_id VARCHAR(50),
    storage_map TEXT,
    active SMALLINT,
    birth DATE,
    email VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    roles TEXT
);

CREATE TABLE IF NOT EXISTS product (
    id BIGSERIAL PRIMARY KEY,
    created TIMESTAMP,
    creator VARCHAR(255),
    creator_id VARCHAR(50),
    edited TIMESTAMP,
    editor VARCHAR(255),
    editor_id VARCHAR(50),
    storage_map TEXT,
    active SMALLINT,
    birth DATE,
    name VARCHAR(255) NOT NULL,
    quantity INT NOT NULL,
    slug VARCHAR(255) NOT NULL,
    shop_id BIGINT NOT NULL,
    CONSTRAINT fk_shopid_shop FOREIGN KEY (shop_id) REFERENCES shop (id)
);

CREATE SEQUENCE IF NOT EXISTS theta_sequence START WITH 5;
