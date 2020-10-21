INSERT INTO customer(
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'JOEL',
	'CARTER',
	'555 Circle Dr Chicago, IL 60614',
	'4242-4242-4242-4242 623 05/20'
);

--Insert statement for brand data
INSERT INTO brand(
	seller_id,
	brand_name,
	contact_number,
	address
)VALUES(
	1,
	'Coding Temple LLC',
	'773-555-4490',
	'222 W Ontario St Chicago,IL'
);

-- Insert into inventory
INSERT INTO inventory(
	upc,
	product_amount
)VALUES(
	1,
	20.00
);

--Insert statment for product data
INSERT INTO product(
	item_id,
	amount,
	prod_name,
	seller_id,
	upc
)VALUES(
	1,
	20.00,
	'Python 101',
	1,
	1
);

--Insert statement for order data
INSERT INTO order_(
	order_id,
	sub_total,
	total_cost,
	upc
)VALUES(
	1,
	40.00,
	43.50,
	1
);

-- Insert statement for cart data
INSERT INTO cart(
	cart_id,
	customer_id,
	order_id
)VALUES(
	1,
	1,
	1
);