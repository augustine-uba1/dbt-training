WITH selected_drivers_columns AS (
    SELECT driverId, driverRef, number, code, name.forename, name.surname, dob, nationality 
    FROM {{ref('drivers_raw_dbt')}}
)

SELECT * FROM selected_drivers_columns
ORDER BY driverId