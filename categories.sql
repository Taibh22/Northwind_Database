--categories
CREATE TABLE categories(
	category_id SERIAL PRIMARY KEY,
	category_name VARCHAR(50),
	category_description TEXT,
	picture BYTEA
);

\copy categories from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\categories.csv' with (FORMAT CSV, HEADER True);