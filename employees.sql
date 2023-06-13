
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