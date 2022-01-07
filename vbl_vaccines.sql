CREATE PROCEDURE insert_vbl_to_vaccines()
LANGUAGE plpgsql

AS
$$
BEGIN
    INSERT INTO vaccines (vac_name)
    SELECT DISTINCT vbl_vaccines
    FROM vaccines_by_location

    COMMIT;
END;
$$