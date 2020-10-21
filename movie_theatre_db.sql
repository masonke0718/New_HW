CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)
);


CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date VARCHAR(100),
	subtotal VARCHAR(100),
	total_cost VARCHAR(150),
	ticket_time VARCHAR(150)
);


--Brand Table Creation
CREATE TABLE brand(
	seller_id SERIAL PRIMARY KEY,
	brand_name VARCHAR(150),
	contact_number VARCHAR(15),
	address VARCHAR(150)
);

--Inventory Table Creation
CREATE TABLE inventory(
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER
);

--Order Table Creation
-- before decimal place there are 6 places and 2 places after decimal
--Not null constraint meaning this can't be empty
CREATE Table order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC (8,2),
	total_cost NUMERIC (10,2),
	upc INTEGER NOT NULL, 
	FOREIGN KEY(upc)REFERENCES inventory(upc)
);

-- Product Table Creation
CREATE Table product(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	prod_name VARCHAR(100),
	seller_id INTEGER NOT NULL,
	upc Integer NOT NULL,
	Foreign Key(seller_id) REFERENCES brand(seller_id),
	Foreign Key(upc) REFERENCES inventory(upc)
);

-- Cart Table Creation
CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	order_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(order_id) REFERENCES order_(order_id)
);

-- Screening Table Creation
CREATE TABLE screening(
	upc SERIAL PRIMARY KEY,
	product_amount INTEGER
);

--Order Table Creation
-- before decimal place there are 6 places and 2 places after decimal
--Not null constraint meaning this can't be empty
CREATE Table order_(
	order_id SERIAL PRIMARY KEY,
	order_date DATE DEFAULT CURRENT_DATE,
	sub_total NUMERIC (8,2),
	total_cost NUMERIC (10,2),
	upc INTEGER NOT NULL, 
	FOREIGN KEY(upc)REFERENCES inventory(upc)
);

-- Product Table Creation
CREATE Table product(
	item_id SERIAL PRIMARY KEY,
	amount NUMERIC(5,2),
	prod_name VARCHAR(100),
	seller_id INTEGER NOT NULL,
	upc Integer NOT NULL,
	Foreign Key(seller_id) REFERENCES brand(seller_id),
	Foreign Key(upc) REFERENCES inventory(upc)
);

-- Cart Table Creation
CREATE TABLE cart(
	cart_id SERIAL PRIMARY KEY,
	customer_id INTEGER NOT NULL,
	order_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
	FOREIGN KEY(order_id) REFERENCES order_(order_id)
);