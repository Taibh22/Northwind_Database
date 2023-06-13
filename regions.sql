CREATE TABLE regions(
	region_id SERIAL PRIMARY KEY,
	regionDescription VARCHAR
);

\copy regions from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\regions.csv' with (FORMAT CSV, HEADER True)