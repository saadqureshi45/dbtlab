with Store_tbl as
(

    select * from {{ ref('Store_Prod') }}
),
store_sales as
(

    select * from {{ ref('Store_Sales_Prod') }}
),

Store_profit as
(
select S_STORE_NAME,S_COUNTY,sum(SS_NET_PAID_INC_TAX),sum(SS_NET_PROFIT) from Store_tbl,store_sales
where S_STORE_SK=SS_STORE_SK
group by 1,2
)
select * from Store_profit