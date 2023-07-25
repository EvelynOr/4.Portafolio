Practica en SQL del Dashboard de Platos PIZZA 

--A. UNION DE LAS CUATRO TABLAS QUE CONFORMARON EL PROYECTO

select * from [dbo].[1order_details]			-- VER cadda una de las tablas
select * from [dbo].[2orders]
select * from [dbo].[3pizza_types]
select * from [dbo].[4pizzas]

--UNIR 4 TABLAS 
select										--2.1 seleccionar de la tabla TRES las siguientes columnas
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
		(										--1.subquery para unir 3 tablas

			select		
				order_details_id, 
				OD.order_id, 
				OD.pizza_id,
				OD.quantity,
				date, 
				time,
				size, 
				price, 
				pizza_type_id 
			from 
				[1order_details] as OD
				join [2orders] as O
					on O.order_id = OD.order_id
				join [4pizzas] as P
					on P.pizza_id = OD.pizza_id

		) as TRES							--con el subquery se unieron 3 tablas y se obtiene una tabla con nombre 'TRES' 

	join [3pizza_types] as PT               --2.2 forma parte del query principal y se une lo seleccionado en 2.1 con la tabla [3pizza_types] con la columna  'pizza_type_id' 
	on PT.pizza_type_id = TRES.pizza_type_id

--------------------------------------------------------------
-------------------------------------------------------------

--B. Resultado de lo anterior es la taba [dbo].[Pizza] con la que se hace el proyecto 

--1. Entender-revisar la data, tiene 11 columnas 
SELECT * 
FROM[dbo].[Pizza]                 


--2. Ver si hay datos nulos 
SELECT *
FROM [dbo].[Pizza]
WHERE 
	order_details_id IS NULL
		OR order_id IS NULL
		OR pizza_id IS NULL
		OR quantity IS NULL
		OR date IS NULL
		OR time IS NULL
		OR size IS NULL
		OR price IS NULL
		OR name IS NULL
		OR category IS NULL
		OR ingredients IS NULL;


--3. Agregar la columna 'total_order' a la tabla 
ALTER TABLE [dbo].[Pizza]
ADD total_order FLOAT; 


--4. Agregar resultados a la columna 'total_order', obtener el total de la orden
UPDATE [dbo].[Pizza]
SET total_order = quantity * price


--Ver data
SELECT *
FROM [dbo].[Pizza]



--C. ANALISIS AREA NOMINAL (ingresos o ventas)

--5. Total de ventas
SELECT 
	FORMAT(SUM(total_order), '#,##0.') AS TotalVentas
FROM 
	[dbo].[Pizza]


--6. Venta promedio por cada orden 
SELECT
	FORMAT(SUM(total_order) / COUNT (*), '#,##0.0')  AS VentaPromedioporORden
FROM [dbo].[Pizza]


--7. Ventas por category de pizza 
SELECT 
	category AS Categoria, 
	FORMAT(SUM(total_order), '#,##0.0') AS TotalVentasCategoria 
FROM [dbo].[Pizza]
	GROUP BY category
		ORDER BY TotalVentasCategoria DESC


--8. Ventas por category y name de la pizza
SELECT 
	category , 
	name , 
	FORMAT(SUM(total_order), '#,##0.0') AS TotalOrden
FROM [dbo].[Pizza]
	GROUP BY category , name
		ORDER BY TotalOrden DESC


--9. Ventas por category y nombre de la pizza mayores a 10,000 (o teniendo en cuenta) 
SELECT 
	category AS Categoria, 
	name AS NombrePizza , 
	FORMAT(SUM(total_order), '#,##0.0') AS TotalOrden
FROM [dbo].[Pizza]
	GROUP BY category, name
	HAVING SUM(total_order) > 10000
		ORDER BY TotalOrden DESC


--10. Ventas por categoria entre 100,000 y 200,000, ordenados descendente por category
SELECT 
	category , 
	FORMAT(SUM(total_order), '#,##0.0') AS TotalOrden
FROM  [dbo].[Pizza]
	GROUP BY category
	HAVING SUM(total_order) BETWEEN 100000 AND 200000
		ORDER BY category DESC


--11. Precio promedio por categoria
SELECT 
	category , 
	FORMAT(AVG (total_order), '#,##0.0') AS PrecioPromedio_Categoria
FROM [dbo].[Pizza]
	GROUP BY category
		ORDER BY PrecioPromedio_Categoria


--12. Precio maximo por categoria 
SELECT 
	category, 
	MAX (price) AS PrecioMaximo_Categoria
FROM  [dbo].[Pizza]
	GROUP BY category
		ORDER BY PrecioMaximo_Categoria


--13. Precio minimo por categoria 
SELECT 
	category, 
	MIN (price) AS PrecioMinimo_Categoria
FROM [dbo].[Pizza] 
	GROUP BY category
		ORDER BY PrecioMinimo_Categoria



--D. ANALISIS AREA REAL (producto) 


--14. Total de pizzas vendidas 
SELECT 
	FORMAT(SUM(quantity), '#,##0.') AS TotalPizzas_Vendidas
FROM[dbo].[Pizza]


--15. Pizzas vendidas por categoria ordenadas ascendente
SELECT 
	category, 
	FORMAT(SUM(quantity), '#,##0.') AS PizzasVendidasCategoria
FROM[dbo].[Pizza]
	GROUP BY category
		ORDER BY PizzasVendidasCategoria DESC


--16.Pizzas vendidas por numero de mes
SELECT 
	DATEPART(month,date) AS Mes,
	FORMAT(SUM(quantity), '#,##0.') AS PizzasVendidas_Mes
FROM [dbo].[Pizza]
	GROUP BY DATEPART(month,date)
		ORDER BY Mes ASC


--17. Pizzas vendidas por nombre mes
SELECT 
	FORMAT(date, 'MMMM') AS Mes,
	FORMAT(SUM(quantity), '#,##0.') AS PizzasVendidas_Mes
FROM [dbo].[Pizza]
	GROUP BY FORMAT(date, 'MMMM')
		ORDER BY Mes DESC


--18. Pizzas vendidas en enero
SELECT 
	FORMAT(SUM(quantity), '#,##0.') AS PizzasVendidas_Enero
FROM[dbo].[Pizza]
WHERE date >= '2015-01-01' AND date<= '2015-01-31';


--19. Pizzas vendidas por dia
SELECT 
	FORMAT(date, 'ddd') AS Dia,
	FORMAT(SUM(quantity), '#,##0.') AS PizzasVendidas_Dia
FROM [dbo].[Pizza]
	GROUP BY FORMAT(date, 'ddd')
		ORDER BY Dia 


--20. Pizzas vendidas por hora 
SELECT 
	FORMAT(time, 'hh') AS Hora,
	FORMAT(SUM(quantity), '#,##0.') AS PizzasVendidas_Hora
FROM [dbo].[Pizza]
	GROUP BY FORMAT(time, 'hh' )
		ORDER BY Hora 


--21. Pizzas vendidas por tamano ordenadas ascendente 
SELECT 
	size , FORMAT(SUM(quantity), '#,##0.') AS PizzasVendidas_Tamano
FROM [dbo].[Pizza]
	GROUP BY size
		ORDER BY size ASC


--22. Top 10 pizzas vendidas
SELECT TOP (10)
	name, 	
	FORMAT(SUM(quantity), '#,##0.') AS Top10
FROM 
	[dbo].[Pizza]
	GROUP BY name	
		ORDER BY Top10 DESC


--23. Las 5 pizzas menos vendidas 
SELECT TOP (5)
	name, 	
	SUM(quantity) AS Top5
FROM [dbo].[Pizza]
	GROUP BY name	
		ORDER BY Top5 ASC


--E. ANALISIS POR ORDENES 


--24. Total de ordenes 
SELECT 
	FORMAT(COUNT (DISTINCT order_id), '#,##0.' ) AS TotalOrdenes
FROM[dbo].[Pizza]
	

--25. Total de ordenes por categoria ordenadas ascendente
SELECT category AS Categoria, 
	FORMAT(COUNT (DISTINCT order_id), '#,##0.')  AS TotalOrdenes_Categoria
FROM[dbo].[Pizza]
	GROUP BY category
		ORDER BY TotalOrdenes_Categoria ASC


--23. Total de ordenes por name de pizza
SELECT name AS NombrePizza, 
	FORMAT(COUNT (DISTINCT order_id), '#,##0.')  AS TotalOrdenes_Pizza
FROM[dbo].[Pizza]
	GROUP BY name
		ORDER BY TotalOrdenes_Pizza ASC
	

