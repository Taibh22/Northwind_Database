

--territories
CREATE TABLE territories(
	territory_id SERIAL PRIMARY KEY,
	territoryDescription VARCHAR,
	region_id INT REFERENCES regions(region_id)
);
\copy territories from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\territories.csv' with (FORMAT CSV, HEADER True)


