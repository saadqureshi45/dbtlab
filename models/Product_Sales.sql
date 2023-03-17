{{ config(materialized='table') }}


with State_Sales as
(
select top 10* from DBT_DB.PROD.PRODUCT
)