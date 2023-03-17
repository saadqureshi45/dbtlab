
with State_Sales as
(
select STATE,sum(NA_SALES),sum(NA_PROFIT) from product
group by 1
)
select * from State_Sales