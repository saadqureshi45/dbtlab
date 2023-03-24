{{ config(materialized='table') }}

with Store_tbl as 
(
select S_STORE_SK,S_STORE_ID,S_STORE_NAME,S_MANAGER,S_CITY,S_COUNTY from Prod.store_2023
)
select * from Store_tbl 