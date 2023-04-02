import snowflake.snowpark.functions as F
def model (dbt,session):
    dbt.config(
        materialized="table"
     
    )
    Store_=dbt.ref("store_tbl_2023")
    Store_Sales_=dbt.ref("store_Sales_tbl_2023")

    final_df=(
        Store_
        .join(Store_Sales_, Store_Sales_.SS_STORE_SK == Store_.S_STORE_SK, 'Inner')
        .group_by(Store_.S_STORE_NAME,Store_.S_COUNTY)
            .agg(
            F.sum(F.col('SS_SALES_PRICE')).alias('SALES_PRICE')
        
        )
    )
    return final_df

         