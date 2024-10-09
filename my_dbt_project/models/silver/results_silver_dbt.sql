WITH selected_results_top10_results AS (
SELECT resultId, raceId, driverId, constructorId, number, position, 
positionText, positionOrder, points, laps, time, milliseconds, fastestLap, rank, 
fastestLapTime, fastestLapSpeed, statusId
FROM {{ref('results_raw_dbt')}}
WHERE position <= 10)

SELECT * FROM selected_results_top10_results
ORDER BY driverId