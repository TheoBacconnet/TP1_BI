{{ config(materialized='view') }}

SELECT *, quantity * unitprice AS TotalPrice
FROM bronze.orderitems