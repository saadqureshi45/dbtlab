
{{ config(materialized='table') }}
with store_Sales_tbl_2023 as
(
select SS_STORE_SK,SS_QUANTITY,SS_SALES_PRICE,SS_NET_PROFIT  from Prod.Store_Sales_2023
)
select * from store_Sales_tbl_2023