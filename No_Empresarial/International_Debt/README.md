## International Debt Statistics (IDS) del Banco Mundial

Es la base de datos de estadísticas de deuda externa, actualizada anualmente, diciembre y abril de cada año, según sea necesario. 

Desde 1951, los países prestatarios que han recibido préstamos del Banco Internacional de Reconstrucción y Fomento (BIRF) o de la Asociación Internacional de Fomento (AIF) deben facilitar datos sobre su deuda externa pública y con garantía pública. A partir de 1973, los países prestatarios tienen que revelar al Banco Mundial la deuda del sector privado sin garantía pública. 

La justificación del Banco Mundial para recopilar datos sobre las obligaciones de deuda externa de sus prestatarios proviene de la necesidad de garantizar su capacidad de servicio de la deuda y apoyar la evaluación de su salud macroeconómica general. 

#### Objetivo del Proyecto
1. Obtener datos de la deuda internacional
    
2. Proponer informe en Power BI para seguimiento del indicador
   
3. Realizar un EDA
 
4. Estimar la deuda futura

# 
#### Obtener datos 

Conexion a la API y se plantearon dos opciones:
1.   Archivos de Excel
2.   Conexion de Python a SQL Server y de Power BI a SQL Server

#### 🚶‍♀️ Propuestas: Gestión de la Data 

##### 1. Bajar data a archivos de Excel
- La conexión a la API se hizon con Python

   
##### 2. Conexion de Python a SQL Server
 

1.	Obtener datos:

- Se utilizó solicitud HTTP para obtener datos de deuda internacional, datos de países y regiones desde la API del Banco Mundial.
- Los datos se procesaron y almacenaron en un DataFrame de pandas para su análisis.

2.	Almacenamiento de datos:
- Los datos procesados se almacenaron en SQL Server para su gestión y consulta.
- Se creó una tabla combinada en SQL Server para facilitar el análisis.
  
3.	Visualización de datos:
- Se conectó Power BI a SQL Server para importar los datos.
- Se crearon visualizaciones interactivas en Power BI, incluyendo mapas rellenos para mostrar la deuda por país.


