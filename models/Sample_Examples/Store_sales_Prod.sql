{{ config(materialized='table') }}
with store_sales as
(
select SS_STORE_SK,SS_EXT_SALES_PRICE,SS_EXT_WHOLESALE_COST,SS_NET_PROFIT from Prod.Store_Sales_2023
)
select * from store_sales