use coffeeshopAllan;

select c.nombre_cliente
from cliente c
inner join pedido p on c.id_cliente = p.id_cliente

Select * from pedido where fecha_registro between '2024-01-01' and '2024-09-12'

select nombre_cliente,nacimiento_cliente from cliente order by nacimiento_cliente desc

select p.nombre_producto 
from producto p 
inner join detalle_pedido dp 
on p.id_producto 
where dp.id_pedido = 2;

SELECT nombre_producto, precio_producto
FROM producto
WHERE precio_producto = (SELECT MAX(precio_producto) FROM producto);

select AVG (precio_producto) as promedio_precios From producto

select estado_pedido, COUNT(*) as cantidad_pedido from  pedido group by estado_pedido

select nombre_cliente
from cliente
where nombre_cliente LIKE 'D%' 

select c.nombre_cliente, COUNT(*) AS cantidad_ordenes
From cliente c
Inner join pedido p ON c.id_cliente = p.id_cliente
where p.fecha_registro BETWEEN '2024-01-01' AND '2024-09-12'
GROUP BY c.id_cliente
order by cantidad_ordenes DESC;

select p.nombre_producto, SUM(dp.cantidad_producto) AS
total_vendido
From producto p 
inner join detalle_pedido dp On p.id_producto = dp.id_producto
GROUP by p.id_producto
order by total_vendido desc limit 3

select c.nombre_cliente, COUNT(*) AS cantidad_pedidos
from cliente c 
inner join pedido p on c.id_cliente = p.id_cliente
group by c.id_cliente
order by cantidad_pedidos desc limit 1

select c.nombre_cliente,
pr.nombre_producto, dp.cantidad_producto,
pr.precio_producto,
p.direccion_pedido, p.estado_pedido
from cliente c
inner join pedido p ON c.id_cliente = p.id_cliente
inner join detalle_pedido dp On p.id_pedido = dp.id_pedido
inner join producto pr On dp.id_producto =pr.id_producto




