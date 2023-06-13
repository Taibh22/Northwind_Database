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
