CREATE TABLE SPARES (
    id serial BIGINT PRIMARY KEY,
    spare_part VARCHAR(100),
    remaining BIGINT,
    updated_At TIME
);


CREATE TABLE INVENTORY_TRAN (
    inventory_tran_id serial BIGINT PRIMARY KEY,
    mode VARCHAR(3),
    seller VARCHAR(100),
    bought_at FLOAT,
    units_bought INT,
    transaction_date DATE,
    svc_id INT,
    is_misc BOOLEAN
);


CREATE TABLE VEHICLES (
    id serial BIGINT PRIMARY KEY,
    vehicle_name VARCHAR(50),
    engine_id VARCHAR(100) UNIQUE NOT NULL,
    shipped_at DATE, 
    shipped_price FLOAT,
    is_sold BOOLEAN
    
);


-- CREATE TABLE CUSTOMER_DETAILS (
--     mobile_number VARCHAR(10) PRIMARY KEY,
--     customer_name VARCHAR(50),
--     customer_address VARCHAR(150)
-- );

CREATE TABLE SERVICE_TRAN(
    service_tran_id serial BIGINT PRIMARY KEY,
    service_type CHAR(1),
    service_price FLOAT,
    mobile_number VARCHAR(10),
    customer_name VARCHAR(50),
    customer_address VARCHAR(150)
);

CREATE TABLE USER_DETAILS(
    user_id serial BIGINT PRIMARY KEY,
    user_name VARCHAR(50),
    email VARCHAR(50),
    is_admin BOOLEAN
)
