

def model(dbt,session):

dbt.config(
    materialized="table",
    package=["Pandas"]
    )

df=dbt.ref('store_Sales_tbl_2023')

return df