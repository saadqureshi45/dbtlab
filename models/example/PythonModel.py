import pandas as pd_lib

def model(dbt,session):
    
{{ config(materialized='table') }}

df=dbt.ref('store_Sales_tbl_2023')

return df