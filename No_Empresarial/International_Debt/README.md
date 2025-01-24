## International Debt Statistics (IDS) del Banco Mundial

Es la base de datos de estadísticas de deuda externa, actualizada anualmente, diciembre y abril de cada año, según sea necesario. 

Desde 1951, los países prestatarios que han recibido préstamos del Banco Internacional de Reconstrucción y Fomento (BIRF) o de la Asociación Internacional de Fomento (AIF) deben facilitar datos sobre su deuda externa pública y con garantía pública. A partir de 1973, los países prestatarios tienen que revelar al Banco Mundial la deuda del sector privado sin garantía pública. 

La justificación del Banco Mundial para recopilar datos sobre las obligaciones de deuda externa de sus prestatarios proviene de la necesidad de garantizar su capacidad de servicio de la deuda y apoyar la evaluación de su salud macroeconómica general. 

##### Objetivos del Proyecto
•	Obtener datos de la deuda internacional (DT.DOD.DLXF.CD) publicada por el Banco Mundial

•	Conectar la data a SQL Server

•	Conectar Power BI a SQL Server

#### 🛠️ Herramientas y Tecnologías Utilizadas
• Python: para otener y procesar los datos.

•	SQL Server: para almacenar y gestionar los datos.

•	Power BI: para la visualización de datos e informes interactivos.

•	API del Banco Mundial: para acceder a los datos de deuda internacional y países.

#### 🚶‍♀️ Propuestas: Gestión de la Data 

##### 1. Bajar data a archivos de Excel


   
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


