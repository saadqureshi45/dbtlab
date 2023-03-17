{{ config(materialized='table') }}


with State_Sales as
(
select top 10* from PROD.PRODUCT
)

select * from State_Sales