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
