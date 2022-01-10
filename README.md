# Data on COVID-19 Vaccinations
Final Exam for SE 2121 (se2121-finals-covidvaccine). <br />
This COVID-19 database shows the COVID-19 vaccination data. With this database, you can easily search for a country and see the total vaccinations each month per vaccines they have. Another thing, is that it features the top 10 countries with the most no. of vaccinations done in a day.
For more information regarding the database and its features, you may refer below:

## DATASETS

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

* `location`: name of the country (or region within a country).
* `iso_code`: three-letter country codes.
* `date`: date of the observation.
* `total_vaccinations`: total number of doses administered.
* `daily_vaccinations`: new doses administered per day (7-day smoothed). <br />
[These were the one used for this project but there's more data given in the file.]

## SQL FILES
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

