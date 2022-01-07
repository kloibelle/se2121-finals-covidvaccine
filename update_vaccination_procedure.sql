CREATE PROCEDURE update_vaccination_number(
    additional_vaccinations INT,
    vaccine VARCHAR(50),
    location VARCHAR(90),
    date DATE
)
LANGUAGE plpsql

AS
$$
BEGIN
    UPDATE vaccinations_by_manufacturer
    SET vbm_total_vaccinations = additional_vaccinations
    WHERE vbm_location = location AND vbm_vaccine = vaccine AND vbm_date = date;

    COMMIT;
END;
$$