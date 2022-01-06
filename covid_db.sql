CREATE DATABASE covid_db;

CREATE TABLE locations(
    loc_name VARCHAR(90) NOT NULL,
    loc_iso_code INT PRIMARY KEY
)

CREATE TABLE vaccines(
    vac_name VARCHAR(50) PRIMARY KEY
) 

CREATE TABLE vaccinations_by_manufacturer(

    vbm_id BIGSERIAL PRIMARY KEY,
    vbm_location VARCHAR(90) NOT NULL,
    vbm_date DATE NOT NULL,
    vbm_vaccine VARCHAR(50) NOT NULL
    vbm_total_vaccinations BIGINT NOT NULL
)

CREATE TABLE vaccines_by_location(
    vbl_id BIGSERIAL PRIMARY KEY,
    vbl_location VARCHAR(90) NOT NULL,
    vbl_iso_code VARCHAR(60) NOT NULL,
    vbl_vaccines TEXT NOT NULL,
    vbl_last__observation_date DATE NOT NULL,
    vbl_source_name VARCHAR(80) NOT NULL
    vbl_source_website VARCHAR(2048)
)