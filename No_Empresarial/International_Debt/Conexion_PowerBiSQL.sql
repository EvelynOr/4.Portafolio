

Query para conexion por tabla desde Power BI a SQL Server


--Consulta para filtrar filas sin NULL en la Tabla 'debt' [6]
SELECT *
FROM debt
WHERE country IS NOT NULL
  AND anyo IS NOT NULL
  AND value IS NOT NULL;

--Consulta para filtrar filas sin NULL en la Tabla 'region' [7]
SELECT *
FROM region
WHERE country_code IS NOT NULL
  AND country IS NOT NULL
  AND region IS NOT NULL
  AND income_level IS NOT NULL
  AND region_full IS NOT NULL;

--Consulta general sin NULL para conexion desde Power BI a SQL Server [7]
SELECT 
    r.region,
    r.region_full,
    r.country_code,
    r.country,
    d.anyo,
    d.value,
    r.income_level
FROM debt d
JOIN region r ON d.country = r.country
WHERE d.value > 0
  AND r.region IS NOT NULL
  AND r.region_full IS NOT NULL
  AND r.country_code IS NOT NULL
  AND r.country IS NOT NULL
  AND d.anyo IS NOT NULL
  AND d.value IS NOT NULL
  AND r.income_level IS NOT NULL;

--Consulta general con NULL para conexion desde Power BI a SQL Server 
SELECT 
    r.region,
    r.region_full,
    r.country_code,
    r.country,
    d.anyo,
    d.value,
    r.income_level
FROM debt d
JOIN region r ON d.country = r.country
WHERE d.value > 0;

--================================
NOTAS 

--[6] Consulta para filtrar filas sin valores nulos en la tabla 'debt'
SELECT *
FROM debt
WHERE country IS NOT NULL
  AND anyo IS NOT NULL
  AND value IS NOT NULL;

Explicación:
SELECT *: Selecciona todas las columnas de la tabla debt.
FROM debt: Especifica la tabla debt.
WHERE country IS NOT NULL AND anyo IS NOT NULL AND value IS NOT NULL: Filtra las filas donde ninguna de las columnas country, anyo y value tiene valores nulos.
Esta consulta te proporcionará todas las filas de la tabla debt que no tienen valores nulos en ninguna de las columnas especificadas. 
Usar esta consulta en Power BI para conectarte a SQL Server y obtener solo los datos completos.

--[7] Consulta Combinada para Filtrar Filas sin Valores Nulos
SELECT 
    r.region,
    r.region_full,
    r.country_code,
    r.country,
    d.anyo,
    d.value,
    r.income_level
FROM debt d
JOIN region r ON d.country = r.country
WHERE d.value > 0
  AND r.region IS NOT NULL
  AND r.region_full IS NOT NULL
  AND r.country_code IS NOT NULL
  AND r.country IS NOT NULL
  AND d.anyo IS NOT NULL
  AND d.value IS NOT NULL
  AND r.income_level IS NOT NULL;

Explicación:
SELECT r.region, r.region_full, r.country_code, r.country, d.anyo, d.value, r.income_level: Selecciona las columnas especificadas de las tablas debt y region.
FROM debt d JOIN region r ON d.country = r.country: Realiza una unión entre las tablas debt y region basada en la columna country.
WHERE d.value > 0: Filtra las filas donde d.value es mayor que 0.
AND r.region IS NOT NULL AND r.region_full IS NOT NULL AND r.country_code IS NOT NULL AND r.country IS NOT NULL AND d.anyo IS NOT NULL AND d.value IS NOT NULL AND r.income_level IS NOT NULL: 
Asegura que ninguna de las columnas especificadas tenga valores nulos.

Esta consulta proporciona datos combinados de las tablas debt y region, 
filtrando las filas donde d.value sea mayor que 0 y excluyendo cualquier fila con valores nulos en las columnas especificadas.
