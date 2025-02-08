## International Debt Statistics (IDS) del Banco Mundial

Es la base de datos de estadísticas de deuda externa, actualizada anualmente, diciembre y abril de cada año, según sea necesario. 

Desde 1951, los países prestatarios que han recibido préstamos del Banco Internacional de Reconstrucción y Fomento (BIRF) o de la Asociación Internacional de Fomento (AIF) deben facilitar datos sobre su deuda externa pública y con garantía pública. A partir de 1973, los países prestatarios tienen que revelar al Banco Mundial la deuda del sector privado sin garantía pública. 

La justificación del Banco Mundial para recopilar datos sobre las obligaciones de deuda externa de sus prestatarios proviene de la necesidad de garantizar su capacidad de servicio de la deuda y apoyar la evaluación de su salud macroeconómica general. 

### Objetivo del Proyecto

Propuesta de informe en Power BI para seguimiento del indicador

#### Objetivos Específicos 

1. Obtener datos de la deuda internacional

2. Revisar data 

3. Diseno de informe
 
4. Estimar la deuda futura

# 

## Procedimiento

### 1. Obtener datos 
Se consumió la API del Banco Mundial para obtener datos de la deuda internacional, datos de países y regiones. Se plantearon dos opciones:

1.1 Bajar data a archivos de Excel con [Python](https://github.com/EvelynOr/4.Portafolio/blob/main/No_Empresarial/International_Debt/DebtStatistics_bajardata.ipynb)

1.2 Conexion de Python a [SQLServer](https://github.com/EvelynOr/4.Portafolio/blob/main/No_Empresarial/International_Debt/DebtStatistics_conexion.ipynb):


### 2.  Revisar Data

La revision se hizo en [SQLServer](https://github.com/EvelynOr/4.Portafolio/blob/main/No_Empresarial/International_Debt/RevisarData.sql), en los siguientes aspectos: tipo de datos, valores nulos, duplicados, validar relaciones (eje:Verificar que todos los países en la tabla 'debt' existan en la tabla 'region'), corrección de datos inconsistentes y valores distintos (eje: nombre de los paises).


### 3. Propuesta de Informe en Power BI 

+ Conexión de Power BI a [SQLServer](https://github.com/EvelynOr/4.Portafolio/blob/main/No_Empresarial/International_Debt/Conexion_PowerBiSQL.sql)
+ Informe con cinco tipos de información: mapa relleno, resumen, por region, temporal y comparativo.    

### 5. Estimar Deuda Futura

