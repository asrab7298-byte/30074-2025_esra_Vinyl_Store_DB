CREATE TABLE Customer (
    customer_id NUMBER PRIMARY KEY,
    customer_name VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE,
    phone VARCHAR2(20),
    address VARCHAR2(100)
);


CREATE TABLE Artist (
    artist_id NUMBER PRIMARY KEY,
    artist_name VARCHAR2(100) NOT NULL,
    country VARCHAR2(50)
);


CREATE TABLE Vinyl_Record (
    vinyl_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    artist_id NUMBER NOT NULL,
    genre VARCHAR2(50) NOT NULL,
    release_year NUMBER(4),
    price NUMBER(8,2) NOT NULL CHECK(price > 0),
    stock_quantity NUMBER DEFAULT 0 CHECK(stock_quantity >= 0),

    CONSTRAINT fk_vinyl_artist
    FOREIGN KEY (artist_id)
    REFERENCES Artist(artist_id)
);


CREATE TABLE Orders (
    order_id NUMBER PRIMARY KEY,
    customer_id NUMBER NOT NULL,
    order_date DATE DEFAULT SYSDATE,
    total_amount NUMBER(10,2)
        CHECK(total_amount >= 0),
    status VARCHAR2(20) DEFAULT 'Pending',

    CONSTRAINT fk_orders_customer
    FOREIGN KEY(customer_id)
    REFERENCES Customer(customer_id)
);


CREATE TABLE Order_Item (
    order_item_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    vinyl_id NUMBER NOT NULL,
    quantity NUMBER NOT NULL,
    unit_price NUMBER(10,2),

    CONSTRAINT fk_order_item_order
    FOREIGN KEY(order_id)
    REFERENCES Orders(order_id),

    CONSTRAINT fk_order_item_vinyl
    FOREIGN KEY(vinyl_id)
    REFERENCES Vinyl_Record(vinyl_id)
);


CREATE TABLE Payment (
    payment_id NUMBER PRIMARY KEY,
    order_id NUMBER NOT NULL,
    payment_date DATE DEFAULT SYSDATE,
    amount NUMBER(10,2) NOT NULL CHECK(amount > 0),
    payment_method VARCHAR2(30) NOT NULL,

    CONSTRAINT fk_payment_order
    FOREIGN KEY(order_id)
    REFERENCES Orders(order_id)
);


CREATE TABLE Audit_Log (
    audit_id NUMBER PRIMARY KEY,
    table_name VARCHAR2(50),
    action_type VARCHAR2(20),
    action_date DATE,
    username VARCHAR2(50)
);


CREATE TABLE Public_Holidays (
    holiday_id NUMBER PRIMARY KEY,
    holiday_date DATE NOT NULL,
    holiday_name VARCHAR2(100)
);


CREATE SEQUENCE audit_seq
START WITH 1
INCREMENT BY 1
NOCACHE;
