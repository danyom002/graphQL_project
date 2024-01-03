create table SALESPEOPLE (
                             SALESPERSON_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
                             FIRST_NAME VARCHAR(50),
                             LAST_NAME VARCHAR(50),
                             EMAIL VARCHAR(130) UNIQUE ,
                             PHONE VARCHAR(32),
                             ADDRESS VARCHAR(255),
                             CITY VARCHAR(50),
                             STATE VARCHAR(50),
                             ZIPCODE VARCHAR(12)
);
create table PRODUCTS (
                             PRODUCT_ID VARCHAR(32)PRIMARY KEY,
                             NAME VARCHAR(250),
                             SIZE INT,
                             VARIETY VARCHAR(32),
                             PRICE NUMERIC(4,2),
                             STATUS VARCHAR(16),

);
create table CUSTOMERS (
                             CUSTOMER_ID BIGINT PRIMARY KEY AUTO_INCREMENT,
                             FIRST_NAME VARCHAR(50),
                             LAST_NAME VARCHAR(50),
                             EMAIL VARCHAR(150),UNIQUE
                             PHONE VARCHAR(50),
                             ADDRESS VARCHAR(255),
                             CITY VARCHAR(50),
                             STATE VARCHAR(50),
                             ZIPCODE VARCHAR(50)
);
create table ORDERS (
                             ORDER_ID VARCHAR(16) PRIMARY KEY ,
                             CUSTOMER_ID BIGINT,
                             SALESPERSON_ID BIGiNT

);
