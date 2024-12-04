select
    cust.customer_id
    ,ord.order_id
    ,ord.order_date
    ,pay.amount
from {{ref("stg_customers")}} cust
join {{ref("stg_orders")}} ord
on cust.customer_id = ord.customer_id
join {{ref("stg_stripe_payments")}} pay
on ord.order_id = pay.orderid
