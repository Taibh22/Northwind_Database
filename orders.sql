

--orders
CREATE TABLE orders(
	order_id SERIAL NOT NULL PRIMARY KEY,
	customer_id VARCHAR(50) REFERENCES customers(customer_id),
	employee_id integer REFERENCES employees(employee_id),
	order_date TIMESTAMP NULL,
	required_date TIMESTAMP NULL,
	shipped_date TIMESTAMP NULL,
	ship_via integer REFERENCES shippers(shipper_id),
	freight FLOAT4,
	ship_name VARCHAR(50),
	ship_address VARCHAR(255),
	ship_city VARCHAR(50),
	ship_region VARCHAR(50),
	ship_postal_code VARCHAR(50),
	ship_country VARCHAR(50)
);
\copy orders from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\orders.csv' with (FORMAT CSV, HEADER True,NULL 'NULL')
