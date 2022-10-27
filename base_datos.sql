DROP DATABASE PROYECTO_INDIVIDUAL_W1;
CREATE DATABASE PROYECTO_INDIVIDUAL_W1;
USE PROYECTO_INDIVIDUAL_W1;

-- TABLA `precios
DROP TABLE IF EXISTS `precios`;
CREATE TABLE IF NOT EXISTS `precios` (
  	`precio` 	        FLOAT,
    `IdProducto` 		VARCHAR(30),
  	`IdSucursal` 	    VARCHAR(30),
  	 `Fecha` 	        DATE    
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
 
 LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PIndividual\\precios_m.csv'
INTO TABLE `precios` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;



-- TABLA `productos`
DROP TABLE IF EXISTS `productos`;
CREATE TABLE IF NOT EXISTS `productos` (
  	`IdProducto` 		VARCHAR(30),
  	`marca` 	VARCHAR(150),
  	`nombre` 	VARCHAR(150),
    `presentacion` 	VARCHAR(150),
    `categoria1` 	VARCHAR(150),
    `categoria2` 	VARCHAR(150),
    `categoria3` 	VARCHAR(150)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
 
 LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PIndividual\\producto_m.csv'
INTO TABLE `productos` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- TABLA `sucursal`
DROP TABLE IF EXISTS `sucursal`;
CREATE TABLE IF NOT EXISTS `sucursal` (
	`IdSucursal` 		VARCHAR(30),
  	`comercioId` 		VARCHAR(30),
  	`banderaId` 		VARCHAR(150),
  	`banderaDescripcion` 	VARCHAR(150),
    `comercioRazonSocial` 	VARCHAR(150),
    `provincia` 		VARCHAR(150),
    `localidad` 		VARCHAR(150),
    `direccion` 		VARCHAR(150),
    `lat` 				VARCHAR(150),
    `lng` 				VARCHAR(150),
    `sucursalNombre` 	VARCHAR(150),
     `sucursalTipo` 	VARCHAR(150)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
 
 LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PIndividual\\sucursal_m.csv'
INTO TABLE `sucursal` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

-- TABLA `precios
DROP TABLE IF EXISTS `precios_sem_20200413`;
CREATE TABLE IF NOT EXISTS `precios_sem_20200413` (
  	`precio` 	       FLOAT,
    `IdProducto` 		VARCHAR(30),
  	`IdSucursal` 	    VARCHAR(30),
  	 `Fecha` 	        DATE    
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;
 
 LOAD DATA INFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\PIndividual\\precios_semana_20200413_m.csv'
INTO TABLE `precios_sem_20200413` 
FIELDS TERMINATED BY ',' ENCLOSED BY '"' ESCAPED BY '' 
LINES TERMINATED BY '\n' IGNORE 1 LINES;

SELECT * FROM proyecto_individual_w1.precios;

ALTER TABLE `proyecto_individual_w1`.`sucursal` 
CHANGE COLUMN `IdSucursal` `IdSucursal` VARCHAR(30) NOT NULL ,
ADD PRIMARY KEY (`IdSucursal`);

ALTER TABLE `proyecto_individual_w1`.`productos` 
CHANGE COLUMN `IdProducto` `IdProducto` VARCHAR(30) NOT NULL ,
ADD PRIMARY KEY (`IdProducto`);

-- ALTER TABLE precios ADD FOREIGN KEY(IdSucursal) REFERENCES sucursal(IdSucursal);

-- Realizando una consulta
SELECT AVG(precio) AS precio_promedio
FROM precios
WHERE IdSucursal = '9-1-688';

-- 

