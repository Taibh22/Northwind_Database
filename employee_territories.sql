

--employee_territories
CREATE TABLE employee_territories(
	employee_id integer REFERENCES employees(employee_id),
	territory_id SERIAL REFERENCES territories(territory_id)
);
\copy employee_territories from 'C:\Users\96650\OneDrive\Desktop\spiced_projects\student-code\thyme-machine-student-code\week5\data\employee_territories.csv' with (FORMAT CSV, HEADER True)