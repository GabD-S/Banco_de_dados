select customers.name, orders.id
from orders
inner join customers on customers.id = orders.id_customers
where orders.orders_date <= '2016-06-30';
