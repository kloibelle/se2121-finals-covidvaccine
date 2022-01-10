# Data on COVID-19 Vaccinations
Final Exam for SE 2121 (se2121-finals-covidvaccine).

## Datasets

### Location Data

Stored in [`locations.csv`](locations.csv)

* `location`: name of the country.
* `iso_code`: three-letter country codes.
* `vaccines`: list of vaccines administered in the country up to the current date.
* `last_observation_date`: date of the last observation in our data.
* `source_name`: name of our source for data collection.
* `source_website`: web location of our source. 

### Vaccination data

Stored in [`vaccinations.csv`](vaccination.csv)

## SQL Files
* [`covid_db`](covid_db.sql) : contians the tables 'locations', 'vaccines', 'vaccinations_by_manufacturer', and 'vaccines_by_location'.
* [`import`](import.sql) : used to import the csv files (datasets) to the tables.
### Functions
* [`location_function`](location_function.sql) : contains a function that would have location name and date as its input and would return the no. of vaccinations each month per vaccines they have.
* [`per_month_vax_iso_function`](per_month_vax_iso_function) :  contains a function that would return a table containing the vaccines used per month for each iso_code.
* [`top_10_vax`](top_10_vax.sql) : contains a function that would return the Top 10 countries with the most no. of vaccinations done in a day.
### Procedures
* [`update_function_procedure`](update_function_procedure.sql) : a stored procedure that can update the no. of vaccinations for a specific vaccine, location, and date in the `vaccinations_by_manufacturer`.
* [`vbl_location_procedure`](vbl_location_procedure.sql) : a stored procedure that will insert all the needed records from vaccines_by_location table to the locations table. 
* [`vbl_vaccines_procedure`](vbl_vaccines_procedure.sql) :  a stored procedure that will insert all the needed records from vaccines_by_location table to the vaccines.
* [`view`](view.sql) : view that contains the daily average vaccinations per iso_code per vaccines.

