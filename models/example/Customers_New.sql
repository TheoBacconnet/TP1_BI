{{ config(materialized='view') }}

SELECT customerid, CONCAT(UPPER(firstname),' ', lastname) AS fullname, email, phone, address, city, state, zipcode, updated_at
FROM bronze.customers