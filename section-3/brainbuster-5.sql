# what store has historically brought the most revenue?

select
    sbs.store as "Store",
    sbs.total_sales as "Revenue"
from
    sales_by_store sbs
group by
    1
order by
    2 desc
;