#  PROYECTO INDIVIDUAL DATA ENGENIEER
## Data 04- Soy Henry

### CONSIGNA

Se propone realizar un proceso de ETL (extract, transform and load) a partir de un conjunto de datos con distintos formatos. Los datos vienen de diversas fuentes 
de relevamiento de precios en distintos mercados. Se deben trabajar los diferentes tipos de archivos para llevarlos a una misma extensión y, una vez finalizada 
esta etapa, deberán crear los joins necesarios con el objetivo de crear un DER y dejarlos almacenados en un archivo con extensión .db. 
Por último, todo su trabajo deberá contemplar la carga incremental del archivo "precios_semana_20200518.txt".

![image](https://user-images.githubusercontent.com/103619850/198208741-81e192fa-8d8d-46c9-a76d-9cd3366d6083.png)



### PASOS A SEGUIR

1. Comenzar con la extracción de los datassets necesarios para crear la base de datos.
2. Realizar un análsis exploratorio de cada uno de los archivos (verificar formatos, valores nulos, duplicados o incosistencias en los datos). Análziar heremientas a utilizar.
3. Realizar la limpieza de los datos y normalizarlos. Determinar el formato adecuado para cargar los datasets a la base de datos.
4. Creación de tablas en SQL y modelo de entidad relación. Verifición de buen funcionamiento de la base de datos por medio de las Query
5. Se realiza el proceos de carga incremental para el archivo "precios_semana_20200518.txt" y el preprocesamienyo del archivo antes de ser cargado a la base datos.
6. Se verifica nuevamente el funcionamiento de la base de datos.

## PIPLINE 

Se ilustra cada uno de los pasos a seguir en el proceso de ETL hasta la generación de la base de datos y la carga incremental.

![flujo](https://user-images.githubusercontent.com/103619850/198363041-1b93c3c0-3832-404f-b6b5-b3fbf4ae96dd.png)


### Herramientas utilizadas
- Visual Studio Code
- MySQL Workbeach
- Notepad++
- Lenguales utilizados: Python, SQL

## CARGA INCREMENTAL

En caso de que se tengan que actualziar alguna de las tablas, se realizara un preprocesamiento del archivo para poder normalizarlo, lo que significa que se realizan
los pasos establecidos en el pipeline, con la diferencia de que solo se vera afectada la tabla que requiera ser actualizada.

Enlace del video donde se explican los pasos realizados:

