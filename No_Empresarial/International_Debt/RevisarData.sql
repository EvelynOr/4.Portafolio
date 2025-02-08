
Revison de Datos: international_debt_statistics

--1.Ver data
Select *
From [dbo].[debt]

Select *
From [dbo].[region]


--2.Revision tipos de datos
-- Verificar los tipos de datos de las columnas en la tabla 'debt'
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'debt';
--Resultado: 
country	nvarchar
anyo	int
value	money

-- Verificar los tipos de datos de las columnas en la tabla 'region'
SELECT COLUMN_NAME, DATA_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'region';
--Resultado: 
country_code	nvarchar
country	nvarchar
region	nvarchar
income_level nvarchar
region_full	nvarchar


--3. Detección de Valores Nulos  [1]
-- Contar valores nulos en la tabla 'debt'
SELECT 
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS country_nulls,
    SUM(CASE WHEN anyo IS NULL THEN 1 ELSE 0 END) AS anyo_nulls,
    SUM(CASE WHEN value IS NULL THEN 1 ELSE 0 END) AS value_nulls
FROM debt;
--Resultado:
country_nulls	anyo_nulls	value_nulls
	   0			0			6491

--Mostrar filas con valores NULL en la columna value
SELECT *
FROM debt
WHERE value IS NULL;
--Resultado: 6491 nulls


-- Contar valores nulos en la tabla 'region'
SELECT 
    SUM(CASE WHEN country_code IS NULL THEN 1 ELSE 0 END) AS country_code_nulls,
    SUM(CASE WHEN country IS NULL THEN 1 ELSE 0 END) AS country_nulls,
    SUM(CASE WHEN region IS NULL THEN 1 ELSE 0 END) AS region_nulls,
    SUM(CASE WHEN income_level IS NULL THEN 1 ELSE 0 END) AS income_level_nulls,
    SUM(CASE WHEN region_full IS NULL THEN 1 ELSE 0 END) AS region_full_nulls
FROM region;
--Resultado:
country_code_nulls	country_nulls	region_nulls	income_level_nulls	region_full_nulls
		0				   0			  0				  0			          79

--Mostrar filas con NULL en la Columna region_full
SELECT *
FROM region
WHERE region_full IS NULL;
--Resultado: nulos = 79


--4. Detección de Valores=0
-- Detectar valores=0 en la tabla 'debt'
SELECT 
   SUM(CASE WHEN anyo = 0 THEN 1 ELSE 0 END) AS anyo_zeros,
   SUM(CASE WHEN value = 0 THEN 1 ELSE 0 END) AS value_zeros
FROM debt;
--Resultado:
anyo_zeros	value_zeros [2]
	0			1
en la columna anyo no hay valores = 0
en la columna value, hay 1 valor = 0

-- Mostrar Filas con Valores=0 en la Columna value
SELECT *
FROM debt
WHERE value = 0;
--Resultado: 
country			anyo	value
Guinea-Bissau	1974	0.00   --viene de la base original


--5. Duplicados
--Contar Duplicados en la Tabla debt
SELECT 
    country, anyo, value, 
    COUNT(*) AS duplicate_count
FROM 
    debt
GROUP BY 
    country, anyo, value
HAVING 
    COUNT(*) > 1;
--Resultado: 
country	anyo	value	duplicate_count
no hay duplicados en la Tabla debt

--Contar Duplicados en la Tabla region
SELECT 
    country_code, country, region, income_level, region_full, 
    COUNT(*) AS duplicate_count
FROM 
    region
GROUP BY 
    country_code, country, region, income_level,  region_full
HAVING 
    COUNT(*) > 1;
--Resultado: 
country	anyo	value	duplicate_count
no hay duplicados en la Tabla region


--6. Validar Relaciones [3]
-- Verificar que todos los países en la tabla 'debt' existan en la tabla 'region'
SELECT d.country
FROM debt d
LEFT JOIN region r ON d.country = r.country
WHERE r.country IS NULL;
--Resultado: 
country 

--Mostrar Países en la tabla debt que No Están en la Tabla region
Proporcionará una lista de los países en la tabla debt que no tienen una correspondencia en la tabla region. 
Esto te permitirá identificar y corregir cualquier inconsistencia en los datos.
SELECT d.country
FROM debt d
LEFT JOIN region r ON d.country = r.country
WHERE r.country IS NULL;
--Resultado:
country


--7. Corrección de Datos Inconsistentes (despliega los NULL en cada fila y columna) [4]
-- Identificar datos inconsistentes en tabla 'debt' (el paso de correccion de datos se hace en el numeral 9) 
SELECT *
FROM debt
WHERE country NOT IN (SELECT country FROM region);
--Resultado:
country		anyo	value
no hay datos inconsistentes

-- Identificar datos inconsistentes en tabla 'region'
SELECT *
FROM region
WHERE country_code IS NULL OR country IS NULL OR region IS NULL OR income_level IS NULL OR region_full IS NULL;
--Resultado: 
-despliega un listado con 79 filas, con las siguientes columnas y resultados
country_code	country		region		income_level	region_full	
	AFR			Africa		  NA		Aggregates			NULL
-region con valor "NA": sugiere que el valor de la región no está disponible o no se ha registrado correctamente. 
"NA" generalmente se utiliza para indicar datos faltantes o no aplicables.
-income_level con valor "Aggregates": podría indicar que los datos en esta fila representan un agregado de múltiples registros o 
una categoría especial que no se ajusta a los niveles de ingresos estándar.
-region_full con valor NULL: esto significa que no hay ningún valor registrado en esta columna para esas filas específicas.
Para corregir estos datos inconsistentes, puedes considerar las siguientes acciones [5]


--8. Mostrar valores distintos en orden alfabético (ver que no se repitan)
--De la Tabla debt: columna 'country' 
SELECT DISTINCT country
FROM debt
ORDER BY country;
--Resultado: 
no se repiten nombre de los paises 'mal escritos'

-- De la Tabla region
--Columna 'country'
SELECT DISTINCT country
FROM region
ORDER BY country;
--Resultado:
no se repiten nombre de los paises 'mal escritos'

--Columna 'country_code'
SELECT DISTINCT country_code
FROM region
ORDER BY country_code;
--Resultado:
no se repiten nombre de los paises 'mal escritos'

--Columna 'region'
SELECT DISTINCT region
FROM region
ORDER BY region;
--Resultado:
no se repiten nombre de los paises 'mal escritos'

--Columna 'income_level'
SELECT DISTINCT income_level
FROM region
ORDER BY income_level;
--Resultado:
no se repiten nombre de los paises 'mal escritos'

--Columna 'region_full'
SELECT DISTINCT region_full
FROM region
ORDER BY region_full;
--Resultado:
registra NULL


--9. Correccion de Inconsistencias
-- Valores NULL en tabla 'debt' (ver numeral 3, para la columna 'value' que registra 6491 nulls) 
SELECT country, anyo
FROM debt
WHERE value IS NULL;

OPCIONES
1. No eliminar los NULL en la tabla, porque vienen de la base original,
en caso sean actualizados de forma retroactiva se dejan las filas correspondientes
2. En Power Bi se podrian filtrar los datos para presentar celdas solo con informacion.
3. Se pueden eliminar en la consulta que conecte Power Bi a SQL Server

-- Valores NULL en tabla 'region'(ver numeral 3, para la columna 'region_full' que registra 79 nulls)
SELECT *
FROM region
WHERE region_full IS NULL;



--================================
NOTAS 
--[1]los valores nulos (NULL) y los valores cero (0) son diferentes en SQL. 
--Un valor nulo indica la ausencia de un valor, mientras que un valor cero es un valor numérico válido.

--[2] anyo_zeros	value_zeros 
	      0			     1
El resultado de la consulta indica que en la tabla debt:
No hay valores cero en la columna anyo (anyo_zeros = 0).
Hay un valor cero en la columna value (value_zeros = 1).
Esto significa que, de todas las filas en la tabla debt, solo una fila tiene un valor cero en la columna value, 
y ninguna fila tiene un valor cero en la columna anyo.

--[3]
resultado:
country
El resultado de la consulta indica que hay países en la tabla debt que no tienen una correspondencia en la tabla region. 
En otras palabras, hay países en la tabla debt que no están presentes en la tabla region.
Para identificar cuáles son esos países, puedes modificar la consulta para mostrar los nombres de los países que no tienen correspondencia:


--[4] Explicacion
SELECT *
FROM debt
WHERE country NOT IN (SELECT country FROM region);
Objetivo: Esta consulta busca identificar filas en la tabla debt donde el valor de la columna country no tiene una correspondencia en la tabla region.
-Cómo Funciona:
SELECT * FROM debt: Selecciona todas las columnas de la tabla debt.
WHERE country NOT IN (SELECT country FROM region): 
Filtra las filas donde el valor de country en la tabla debt no está presente en la columna country de la tabla region.

Explicacion
SELECT *
FROM region
WHERE country_code IS NULL OR country IS NULL OR region IS NULL OR income_level IS NULL OR region_full IS NULL;
Objetivo: Esta consulta busca identificar filas en la tabla region que tienen valores nulos en cualquiera de las columnas clave.
-Cómo Funciona:
SELECT * FROM region: Selecciona todas las columnas de la tabla region.
WHERE country_code IS NULL OR country IS NULL OR region IS NULL OR income_level IS NULL OR region_full IS NULL: 
Filtra las filas donde cualquiera de las columnas country_code, country, region, income_level o region_full tiene un valor nulo.


--[5]
Actualizar los valores de la columna region: Reemplazar "NA" con el valor correcto de la región si está disponible.
Revisar los valores de la columna income_level: Determinar si "Aggregates" es un valor válido o si necesita ser reemplazado por un nivel de ingresos específico.
Completar los valores faltantes en la columna region_full: Proporcionar los valores completos de la región si están disponibles.

Actualizar Valores en la Columna region
UPDATE region
SET region = 'Corrected Region'
WHERE region = 'NA';

Revisar y Actualizar Valores en la Columna income_level
UPDATE region
SET income_level = 'Corrected Income Level'
WHERE income_level = 'Aggregates';

Completar Valores Faltantes en la Columna region_full
UPDATE region
SET region_full = 'Corrected Region Full'
WHERE region_full IS NULL;


