
# Northwind Database Dashboard Project

This project aims to build an interactive dashboard that summarizes the Northwind Database. The Northwind Database is a database provided by Microsoft Access that contains data about a fictional company, Northwind Traders. The database includes sales transactions between the company and its customers, as well as purchases from Northwind's suppliers.

## Getting Started

To get started with this project, you will need to follow the steps below:

1. Download the Northwind Database from [here]([https://github.com/Taibh22/Northwind_Database/tree/main/data]).

2. Install PostgreSQL on your local machine. You can download PostgreSQL from [here](https://www.postgresql.org/download/).

3. Create a table for each CSV file in the database. The database consists of 13 CSV files, and each file represents a table in the database.

4. Load the data into the database. You can use the `COPY` command to load data from a CSV file into a table.

5. Create foreign keys to connect the tables. The database schema can be found in the `northwinddb.sql` file.

6. Answer questions on the data using SQL queries. Some example questions can be found in the `sqlquery.sql` file.

7. Upload the database to a cloud database. You can use services like Amazon RDS, Google Cloud SQL, or Heroku to host your cloud database.

8. Build an interactive dashboard on a cloud server. You can use tools like Tableau, Power BI, or Python libraries like Dash or Streamlit to build an interactive dashboard.

## Technologies Used

This project uses the following technologies:

- PostgreSQL: an open-source relational database management system.
- SQL: a standard language for managing relational databases.
- Tableau: a data visualization tool that allows you to create interactive dashboards.
- Amazon RDS: a cloud-based relational database service provided by Amazon Web Services.

## Credits

This project is based on the Northwind Database provided by Microsoft Access. The data was converted to CSV files and made available by [pthom/northwind_psql]([https://github.com/Taibh22/Northwind_Database/tree/main/data)]). The database schema was adapted from [postgresguide.com](https://postgresguide.com/utilities/northwind.html).
