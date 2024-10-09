WITH drivers_result_average AS (
SELECT CONCAT(d.forename, ' ', d.surname) AS fullname, AVG(r.position) AS avg_position
FROM {{ref('results_silver_dbt')}} r
JOIN {{ref('drivers_silver_dbt')}} d ON r.driverId = d.driverId
GROUP BY fullname
HAVING COUNT(r.raceId) > 10
ORDER BY avg_position ASC
)

SELECT * FROM drivers_result_average