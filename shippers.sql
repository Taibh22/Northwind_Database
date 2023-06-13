--shippers
CREATE TABLE shippers(
	shipper_id SERIAL PRIMARY KEY,
	company_name VARCHAR(255),
	phone VARCHAR(50)
);
\copy shippers from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\shippers.csv' with (FORMAT CSV, HEADER True)
