
--order_details
CREATE TABLE order_details(
	order_id integer REFERENCES orders(order_id),	
	product_id integer REFERENCES products(product_id),
	unit_price FLOAT4,
	quantity SMALLINT,
	dicount FLOAT4
);
\copy order_details from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\order_details.csv' with (FORMAT CSV, HEADER True)
