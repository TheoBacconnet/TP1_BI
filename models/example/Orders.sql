{{ config(materialized='view') }}

SELECT orderid, orderdate, customerid, employeeid, storeid, status, updated_at,
CASE 
    WHEN status = '01' THEN 'En cours'
    WHEN status = '02' THEN 'Terminée'
    WHEN status = '03' THEN 'Annulée'
    ELSE 'Status inconnu'
END AS StatusDescription
    
FROM bronze.orders