select * from customer_orders
where purchase_amount < 100
and (order_date < '2022-08-25' or customer_id <= 2001);