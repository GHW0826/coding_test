SELECT PRODUCT_CODE, sum(b.SALES_AMOUNT * a.PRICE) SALES
from PRODUCT a
inner join OFFLINE_SALE b on a.PRODUCT_ID = b.PRODUCT_ID
group by PRODUCT_CODE
order by SALES desc, PRODUCT_CODE asc;
