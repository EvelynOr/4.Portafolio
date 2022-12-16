### 🍕🍕  1. Pizza Challenge: Competencia promovida por Mavenanalytics [^1] 

+ Análisis de datos realizado para un restaurante de pizza 
+ Pregunta general: ¿Cuál fue el desempeño de Plato's Pizza en 2015? 
+ Objetivo: Mejorar las operaciones del restaurante en 2016


- Se utilizó  Power BI |  Excel  |  Python |  SQL Server
- Nivel: basico-intermedio
- Reporte: https://app.powerbi.com/groups/me/reports/5214dc99-4bdb-4c3b-b296-58c4d0733312/ReportSection41d8ebf32b21398ea8a0 


### 1.1 ![PowerBI](https://user-images.githubusercontent.com/82233779/203394674-b71bd963-8ebe-412a-9b26-dae6af54bf1d.PNG)En Power BI

Se trabajó con toda la data. Se analizó a través de métricas en tres niveles: estratégico, táctico y operacional. Además, para cada nivel se dan algunas sugerencias e indicadores de seguimiento para los siguientes períodos.   

##### Actividades
- Revisión de la data y diccionario
- Integración de la data con SQL Server
- Definición de métricas por tipo de análisis realizado
- Diagramación 
- Funciones utilizadas en el proceso: medidas automáticas, se creo una tabla con 15 DAX (expresiones de análisis de datos) utilizando: CALCULATE, AVERAGE, AVERAGEX, DIVIDE, RANKX, SUM, TOPN, DISTINCTCOUNT y se utilizó una tabla calendario.
  

![PBI](https://user-images.githubusercontent.com/82233779/203619328-de08192d-a6db-435e-a570-4244fc1859b4.png)


#### Recursos utilizados:   
Información general sobre DAX, https://learn.microsoft.com/es-es/dax/dax-overview



### 1.2 📊 En Excel 

Se trabajó con una muestra aleatoria generada en Python, con n =  500. Se utilizaron tablas dinámicas y conexiones de informes para hacer dinámico el tablero  
![1 Dashboard_Excel](https://user-images.githubusercontent.com/82233779/203609094-27248492-cb8a-410f-babb-51c02e39ded2.PNG)



### 1.3 🐍 En Python se realizó un EDA (Exploratory Data Analysis - Análisis Exploratio de Datos) con Pandas Profiling [^2]
Se trabajó con la misma muestra utilizada en Excel, n =  500

![image](https://user-images.githubusercontent.com/82233779/204862071-42c63e17-edff-4489-aeed-89bf61edaefb.png)


# 🧠 Análisis - Resultados 📝

## Mercado de la pizza
### Estados Unidos

El número de restaurantes de pizzerías pasó de 71,857 a 75,117, del 2012 al 2022. Los consumidores gastaron en el 2020 más de $20 mil millones en el QSR pizza para llevar y otros $14 mil millones en entrega de pizza.
Entre las tres mayores cadenas de pizzerías están: Pizza Hut es la más antigua (fundada en 1958 en Wichita, Kansas), seguida de Domino’s (1960 en Ypsilanti, Michigan) y Papa John’s (1984 en Jeffersonville, Indiana, a las afueras de Louisville)
Los 5 días de mayor venta de pizza son: el domingo del Super Bowl, la víspera de Año Nuevo, Halloween, la víspera de Acción de Gracias y el día de Año Nuevo

### New Jersey

Se encuentra dentro de las ciudades más ricas de los EE.UU. Su economía depende principalmente de su industria manufacturera, farmacéutica, agentes químicos, turismo y de la prestación de servicios de transporte. Es uno de los estados más industrializados del país. 
Las estimaciones del United States Census Bureau reporta que New Jersey tiene 555 ciudades y una población de 9,203,733.
Al 2020, el ingreso promedio del núcleo familiar era de $ 85,245 y Ingreso per cápita: $44,153.
El 14,8 % de los hogares de Nueva Jersey son hogares de altos ingresos que ganan más de $200.000 al año. En cuanto al ingreso familiar promedio en Nueva Jersey por edad del jefe de hogar se reportan los siguientes: 
Jefe de hogar menor de 25 años $40,289
Jefe de hogar 25 a 44 años $92,514
Jefe de hogar 45 a 64 años $104,297
Jefe de hogar de 65 años o más $57,159

Al 2022 Las cinco ciudades con más ingreso medio son: 
Ramsey $156,058
Haddonfield $151,579
Roseland $142,776
New Providence $149,718
Little Silver  $202,875

A febrero de 2021 se estima que había 2,00 pizzerías en New Jersey, con 3.54 pizzerías per cápita.  

### Tipo de mercado

Tipo de mercado al que pertenece la pizza es el de competencia monopolística, el poder de monopolio es limitado; 
-En este tipo de mercado los productos están diferenciados, pero que son fácilmente sustituibles unos por otros, pero no sustitutivos perfectos.
-Hay libertad de entrada y de salida, es relativamente fácil para las nuevas empresas entrar en el mercado con su propia marca del producto y para las existentes abandonarlo si sus productos dejan de ser rentables.
-La curva de demanda, aunque tiene pendiente negativa, es bastante elástica.
-Por una u otra razón, los consumidores consideran que la marca de cada una es diferente del resto. La diferencia se halla, en parte, en el sabor, en parte en la consistencia y, en parte, en la reputación, es decir, la imagen (verdadera o falsa) que tenga el consumidor de la eficacia relativa de los bienes ofrecidos, por lo que podrían pagar más (R. Pindyck y D. Rubinfeld,  2009).

### Conclusiones - Recomendaciones 

[^1]: Data: https://www.mavenanalytics.io/blog/maven-pizza-challenge 
[^2]: Es un módulo open source de Python con el que se hace el EDA con pocas líneas de código. https://pandas-profiling.ydata.ai/docs/master/index.html
