{{ config(severity = 'warn')}}
SELECT number 
from {{ref('drivers_silver_dbt')}}
WHERE number is NULL