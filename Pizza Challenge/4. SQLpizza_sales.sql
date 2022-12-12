
pizza_sales

select * from [dbo].[1order_details]
select * from [dbo].[2orders]
select * from [dbo].[3pizza_types]
select * from [dbo].[4pizzas]

--UNIR 4 TABLAS 
select 
TRES.order_details_id, 
TRES.order_id, 
TRES.pizza_id,
TRES.quantity,
TRES.date, 
TRES.time,
TRES.size, 
TRES.price,
name, category, ingredients

from
(
select  
order_details_id, OD.order_id, OD.pizza_id,OD.quantity,
date, time,
size, price, pizza_type_id 
from 
[1order_details] as OD
join [2orders] as O
on O.order_id = OD.order_id
join [4pizzas] as P
on P.pizza_id = OD.pizza_id
) as TRES

join [3pizza_types] as PT
on PT.pizza_type_id = TRES.pizza_type_id

