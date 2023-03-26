def model(dbt,session):
    
    dbt.config(materialized="table")
    df=dbt.ref('store_Sales_tbl_2023')

    return df