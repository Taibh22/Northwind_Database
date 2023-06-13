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