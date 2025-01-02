# 🍕🍕  1.  Plato's Pizza 

Análisis de datos realizado para un restaurante de pizza [^1]  
+ Pregunta general: ¿Cuál fue el desempeño de Plato's Pizza en 2015? 
+ Objetivo: Mejorar las operaciones del restaurante en 2016


- Se utilizó  Power BI |  Excel  |  Python |  SQL Server
- Nivel: basico-intermedio

Descripción del Análisis 
1. Se trabajó con toda la data.
2. Se realizó un [dashboard](https://github.com/EvelynOr/4.Portafolio/blob/main/Pizza%20Challenge/Dashboard.jpg)  y tres informes en los que se analizó con base a métricas en tres niveles: estratégico, táctico y operacional.
3. Para cada informe se formuló  una serie de preguntan que guiaron la presentación de información y se dan algunas sugerencias e indicadores de seguimiento para los siguientes períodos.  
4.  Los informes incluyen métricas que ofrecen una visión integral del rendimiento del restaurante: 
+ 𝗜𝗻𝗴𝗿𝗲𝘀𝗼𝘀 𝗚𝗲𝗻𝗲𝗿𝗮𝗱𝗼𝘀: explora los ingresos totales, mensuales, diarios y por orden para entender las tendencias financieras clave del restaurante.
+ 𝗣𝗶𝘇𝘇𝗮𝘀 𝗩𝗲𝗻𝗱𝗶𝗱𝗮𝘀: muestra el total de pizzas vendidas, desglosadas por mes, día y por orden, ofreciendo una comprensión profunda del volumen de ventas.
+ 𝗢́𝗿𝗱𝗲𝗻𝗲𝘀: analiza el número total de órdenes, mensual, diario, para comprender la demanda y los patrones de pedidos.
+ 𝗩𝗲𝗻𝘁𝗮𝘀 𝗽𝗼𝗿 𝗖𝗮𝘁𝗲𝗴𝗼𝗿í𝗮: explora las ventas por categoría de pizza para identificar las preferencias de los clientes.
+ 𝗧𝗼𝗽 𝟱 𝘆 𝗕𝗼𝘁𝘁𝗼𝗺 𝟱 𝗣𝗶𝘇𝘇𝗮𝘀: destaca las 5 pizzas más vendidas y las 5 menos vendidas, proporcionando información sobre qué pizzas tienen un desempeño sobresaliente y cuáles necesitan atención.
+ 𝗨𝗻𝗶𝗱𝗮𝗱𝗲𝘀 𝗩𝗲𝗻𝗱𝗶𝗱𝗮𝘀 𝗲 𝗜𝗻𝗴𝗿𝗲𝘀𝗼𝘀 𝗽𝗼𝗿 𝗧𝗮𝗺𝗮ñ𝗼 𝗱𝗲 𝗣𝗶𝘇𝘇𝗮: profundiza en las unidades vendidas y los ingresos generados según el tamaño de la pizza, revelando información valiosa sobre las preferencias de los consumidores.  
5. Se presenta un análisis macroeconómico y microeconómico  del mercado de la pizza, contextualizado para USA. Con base a esto, se dan 15 recomendaciones (10 operativas y 5 administrativas).

Actividades
- Revisión de la data y diccionario
- Integración de la data con SQL Server, [query](https://github.com/EvelynOr/4.Portafolio/blob/main/Pizza%20Challenge/SQLpizza_sales.sql)
- Definición de métricas por tipo de análisis realizado
- Diagramación 
- Funciones utilizadas en el proceso: medidas automáticas, se creo una tabla con 15 DAX (expresiones de análisis de datos) utilizando: CALCULATE, AVERAGE, AVERAGEX, DIVIDE, RANKX, SUM, TOPN, DISTINCTCOUNT y se utilizó una tabla calendario.

### En Power BI
 
######  1. Informe [Estratégico](https://github.com/EvelynOr/4.Portafolio/blob/main/Pizza%20Challenge/InformeEstrategico.pdf)
Métricas
1. Ingresos generados: totales, mensuales, diario y por orden.
2. Pizzas vendidas: total, por mes, diarias y por orden.
3. Órdenes: totales, mensuales y por día.
4. Ventas por categoría. 
5. Top 5 y Bottom 5 pizzas en ventas.
6. Unidades vendidas e Ingresos por tamaño de pizza.
7. Analisis de Pareto entre el tipo de pizzas e ingresos.
8. Tabla resumen de ingresos totales e ingresos acumulados por tipo de pizza.

Recomendaciones


###### 2.2 Informe Táctico
(en proceso de actualización en el diseño) 

![image](https://user-images.githubusercontent.com/82233779/210622302-3e8e20d8-6d49-4b75-96ce-7e100aa37ec3.png)

#### 2.3 Informe Operacional
(en proceso de actualización en el diseño) 

![image](https://user-images.githubusercontent.com/82233779/210622678-c244d66f-04ea-485e-92ee-b2aabfc65ad0.png)


#### Recursos utilizados:   
Información general sobre [DAX,](https://learn.microsoft.com/es-es/dax/dax-overview)
Inspiracion dashboard y reportes: T.Sipahi, A. Godlewska.


#

### 1.2 📊 En Excel 

Se trabajó con una muestra aleatoria generada en Python, con n =  500. Se utilizaron tablas dinámicas y conexiones de informes para hacer dinámico el tablero  
![1 Dashboard_Excel](https://user-images.githubusercontent.com/82233779/203609094-27248492-cb8a-410f-babb-51c02e39ded2.PNG)


#

### 1.3 🐍 En Python se realizó un EDA (Exploratory Data Analysis - Análisis Exploratio de Datos) con Pandas Profiling [^2]
Se trabajó con la misma muestra utilizada en Excel, n =  500

![image](https://user-images.githubusercontent.com/82233779/204862071-42c63e17-edff-4489-aeed-89bf61edaefb.png)

#

### 1.4 Pronóstico de ventas 
En proceso 🐣🐣


# 🧠 2. Análisis 

## 2.1 Mercado de la pizza [^3]
### Estados Unidos

El número de restaurantes de pizzerías pasó de 71,857 a 75,117, del 2012 al 2022. Los consumidores gastaron en el 2020 más de $20 mil millones en el QSR pizza para llevar y otros $14 mil millones en entrega de pizza.
Entre las tres mayores cadenas de pizzerías están: Pizza Hut es la más antigua (fundada en 1958 en Wichita, Kansas), seguida de Domino’s (1960 en Ypsilanti, Michigan) y Papa John’s (1984 en Jeffersonville, Indiana, a las afueras de Louisville).
Los 5 días de mayor venta de pizza son: el domingo del Super Bowl, la víspera de Año Nuevo, Halloween, la víspera de Acción de Gracias y el día de Año Nuevo

### New Jersey

Se encuentra dentro de las ciudades más ricas de los EE.UU. Su economía depende principalmente de su industria manufacturera, farmacéutica, agentes químicos, turismo y de la prestación de servicios de transporte. Es uno de los estados más industrializados del país. 
Las estimaciones del United States Census Bureau reporta que New Jersey tiene 555 ciudades y una población de 9,203,733.
Al 2020, el ingreso promedio del núcleo familiar era de $ 85,245 y Ingreso per cápita: $44,153.
El 14,8 % de los hogares de Nueva Jersey son hogares de altos ingresos que ganan más de $200.000 al año. En cuanto al ingreso familiar promedio en Nueva Jersey por edad del jefe de hogar se reportan los siguientes: 
Jefe de hogar menor de 25 años $40,289; 
Jefe de hogar 25 a 44 años $92,514; 
Jefe de hogar 45 a 64 años $104,297, y 
Jefe de hogar de 65 años o más $57,159.

Al 2022 Las cinco ciudades con más ingreso medio son: 
Ramsey $156,058
Haddonfield $151,579
Roseland $142,776
New Providence $149,718
Little Silver  $202,875

A febrero de 2021 se estima que había 2,00 pizzerías en New Jersey, con 3.54 pizzerías per cápita.  

### Tipo de mercado

+ El tipo de mercado al que pertenece la pizza es el de competencia monopolística, el poder de monopolio es limitado.
+ En este tipo de mercado los productos están diferenciados, pero son fácilmente sustituibles unos por otros, pero no sustitutivos perfectos.
+ Hay libertad de entrada y de salida, es relativamente fácil para las nuevas empresas entrar en el mercado con su propia marca del producto y para las existentes abandonarlo si sus productos dejan de ser rentables.
+ La curva de demanda, aunque tiene pendiente negativa, es bastante elástica.
+ Por una u otra razón, los consumidores consideran que la marca de cada una es diferente del resto. La diferencia se halla, en parte, en el sabor, en parte en la consistencia y, en parte, en la reputación, es decir, la imagen (verdadera o falsa) que tenga el consumidor de la eficacia relativa de los bienes ofrecidos, por lo que podrían pagar más.


### Elasticidad
La elasticidad precio de la demanda de la pizza, sería relativamente elástica (E > 1). Es decir, variaciones pequeñas en el precio generan un mayor cambio en la cantidad demandada de pizza.

Para el 2017, se reporta para New Jersey un precio medio de una pizza grande de queso en US$ 11.00.

### Algunos determinantes de la demanda o cambios en la demanda
- Bienes sustitutos
- Gustos y preferencias de los consumidores
- Número de compradores - población
- Nivel de ingresos
- Aspectos culturaels 
- Otros

## 📍 2.2  Recomendaciones 

#### Operativas
1. Aprovechar el ingreso que registra el Estado, ubicándolo con un poder adquisitivo alto, derivado de las actividades económicas.
2. Indagar la cantidad de restaurantes que tienen las ciudades con mayores ingresos, en caso ese sea el mercado al que se quieren dirigir.
3. Ofrecer un producto diferenciado para ciudades con menores ingresos.
4. Realizar pruebas de mercado y obtener resultados más cercanos y valiosos en términos cualitativos, y validar si los gustos y preferencias en la demanda de pizza han variado o se han mantenido, en función de los productos que ofrecen las mayores cadenas de pizzerías en los EE.UU.
5. Ofrecer ofertas o compras previas a los días festivos nacionales/locales o que registran una mayor demanda.
6. Ofrecer tipos de pizza que se identifiquen con la cultura culinaria del Estado u otras alternativas como veganos/vegetarianos/bajas calorías.
7. Llamar la atención sobre los artículos de alto beneficio en el menú con fotos o leyendas.
8. Armar combinaciones de productos y paquetes que aumenten el precio por cliente y los márgenes generales.
9. En caso quieran competir con el precio promedio de US$ 11.00, ofrecerlo por temporada, por horario o por monto de compra.
10. Agregar asientos al aire libre.

#### Administrativas
11. Estimar la elasticidad precio de la demanda que tiene el producto/los productos ofrecidos, ya que variaciones en el precio afecta los ingresos.
12. Examine el costo de cada pizza y determinar su rentabilidad
13. Ofrecer valor:
+ generar lealtad recompensando la frecuencia (tarjetas perforadas, sistemas de puntos o una aplicación de fidelización completa).
+ reducir y optimizar el menú para entrega y comida para llevar
+ la ausencia de contacto es muy importante y existirá de forma permanente
+ chatbots para acelerar el proceso de pedido digital y ayudar a los clientes en las redes sociales
14. Mejorar su posicionamiento: mantener contacto con los clientes y retribuir a la comunidad.
15. Mantenerse al dia con las tendencias como:
+  the virtual or ghost kitchens únicamente para la entrega  
+  repensar cuánto espacio físico necesitan realmente
+  las cloud kitchens para minimizar los costos generales y mejorar la logística
+  robots de servicio de alimentos
+  máquinas-robots para hacer pizzas, se encarga de todo menos de hacer la masa 
+  actualizarse con reportes de [la industria](https://www.360researchreports.com/enquiry/request-sample/20996313) o estudios [especificos](https://www.proquest.com/docview/1860284813) 





[^1]: Competencia promovida por [Mavenanalytics.](https://www.mavenanalytics.io/blog/maven-pizza-challenge) y un poco de inspiración para el dashboard T.Sipahi     
[^2]: Es un módulo open source de Python con el que se hace el EDA con pocas [líneas de código.](https://pandas-profiling.ydata.ai/docs/master/index.html)
[^3]: Los datos se agregan para dar extructura y contexto al proyecto realizado. Fuentes: R. Pindyck y D. Rubinfeld,  2009; [demographics](https://www.newjersey-demographics.com); [incomebyzipcode](https://www.incomebyzipcode.com); [homesnacks](https://www.homesnacks.com); [aaronallen&associates](https://aaronallen.com;https://nj1015.com); [forbes](https://www.forbes.com/); [pizzamedia](https://www.pmq.com); [ProQuest](https://www.proquest.com)

