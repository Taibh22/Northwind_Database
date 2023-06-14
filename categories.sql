--categories
CREATE TABLE categories(
	category_id SERIAL PRIMARY KEY,
	category_name VARCHAR(50),
	category_description TEXT,
	picture BYTEA
);

\copy categories from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\categories.csv' with (FORMAT CSV, HEADER True);

--customers
CREATE TABLE customers(
	customer_id VARCHAR(50) PRIMARY KEY,
	company_name VARCHAR(255),
	contact_name VARCHAR(255),
	contact_title VARCHAR(255),
	address VARCHAR(255),
	city VARCHAR(50),
	region VARCHAR(50),
	postal_code VARCHAR(50),
	country VARCHAR(50),
	phone VARCHAR(50),
	fax VARCHAR(50)
);
\copy customers from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\customers.csv' with (FORMAT CSV, HEADER True)


--employee_territories
CREATE TABLE employee_territories(
	employee_id integer REFERENCES employees(employee_id),
	territory_id SERIAL REFERENCES territories(territory_id)
);
\copy employee_territories from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\employee_territories.csv' with (FORMAT CSV, HEADER True)


--employees
CREATE TABLE employees(
	employee_id integer PRIMARY KEY  NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	title VARCHAR(50) NULL,
	title_of_courtesy CHAR(5) NULL,
	birth_date TIMESTAMP ,
	hire_date TIMESTAMP,
	address VARCHAR(255) NULL,
	city VARCHAR(50) NULL,
	region CHAR(5) NULL,
	postal_code VARCHAR(20) NULL,
	country VARCHAR(50) NULL,
	home_phone VARCHAR(50) NULL,
	extention SMALLINT NULL,
	photo BYTEA NULL,
	notes TEXT NULL,
	reports_to integer REFERENCES employees(employee_id) NULL,
	photo_path VARCHAR(255)
);
\copy employees from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week
5\data\employees.csv' with (FORMAT CSV, HEADER True,NULL 'NULL');

--order_details
CREATE TABLE order_details(
	order_id integer REFERENCES orders(order_id),	
	product_id integer REFERENCES products(product_id),
	unit_price FLOAT4,
	quantity SMALLINT,
	dicount FLOAT4
);
\copy order_details from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\order_details.csv' with (FORMAT CSV, HEADER True)




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


--products
CREATE TABLE products(
	product_id SERIAL PRIMARY KEY,
	product_name VARCHAR(50),
	supplier_id INT REFERENCES suppliers(supplier_id),	
	category_id INT REFERENCES categories(category_id),
	quantity_per_unit VARCHAR(50),
	unit_price FLOAT4,
	units_in_stock SMALLINT,
	units_on_order SMALLINT,
	reorder_level SMALLINT,
	discontinued BOOL
);
\copy products from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\products.csv' with (FORMAT CSV, HEADER True)


--regions
CREATE TABLE regions(
	region_id SERIAL PRIMARY KEY,
	regionDescription VARCHAR
);

\copy regions from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\regions.csv' with (FORMAT CSV, HEADER True)

--shippers
CREATE TABLE shippers(
	shipper_id SERIAL PRIMARY KEY,
	company_name VARCHAR(255),
	phone VARCHAR(50)
);
\copy shippers from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\shippers.csv' with (FORMAT CSV, HEADER True)

--suppliers
CREATE TABLE suppliers(
	supplier_id SERIAL NOT NULL PRIMARY KEY,
	company_name VARCHAR(255) NOT NULL,
	contact_name VARCHAR(255) NOT NULL,
	contact_title VARCHAR(500) NULL ,
	address VARCHAR(255) NULL,
	city VARCHAR(50) NULL,
	region VARCHAR(50) NULL,
	postal_code VARCHAR(50) NULL,
	country VARCHAR(50) NULL,
	phone VARCHAR(50) NULL,
	fax VARCHAR(50) NULL,
	homepage VARCHAR(255) NULL
);
\copy suppliers from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\suppliers.csv' with (FORMAT CSV, HEADER True, NULL 'NULL')




--territories
CREATE TABLE territories(
	territory_id SERIAL PRIMARY KEY,
	territoryDescription VARCHAR,
	region_id INT REFERENCES regions(region_id)
);
\copy territories from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\territories.csv' with (FORMAT CSV, HEADER True)


