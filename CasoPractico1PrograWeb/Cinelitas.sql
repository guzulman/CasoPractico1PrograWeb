CREATE DATABASE Cinelitas; /* Se crea a base de datos y se asigna el nombre */
use Cinelitas; /* de aquí para abajo todos e asigna a tienda  */

CREATE TABLE `salas` ( /* se crea la tabla países  */
  `id` int(11) NOT NULL AUTO_INCREMENT, /* para el ID se declara un int y el not null es para q setee un valor automáticamente , el 11 es que tan largo es */
  `capacidad` varchar(100) NOT NULL, /* varcher es String */
  `numeroSala` varchar(100) NOT NULL, /* varcher es String */
  `nombre` varchar(100) NOT NULL, /* varcher es String */
  PRIMARY KEY (`id`) /* pide el ID  */
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8; /*   */

INSERT INTO `salas` VALUES (1,'100', '21', 'Tortuguero'),(2,'100', '22', 'Manuel Antonio'),(3,'100', '23', 'Paquera'),(4,'100', '24', 'Pejibaye'); /* Se inserta la informaciónpaisespaises */

CREATE TABLE `peliculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `costo` varchar(45) NOT NULL,
  `fecha` varchar(45) NOT NULL,
  `salas_id` int(11) NOT NULL, /* llaveforanea */

  
  PRIMARY KEY (`id`,`salas_id`),
  KEY `fk_peliculas_salas_idx` (`salas_id`),
  CONSTRAINT `fk_peliculas_salas` FOREIGN KEY (`salas_id`) REFERENCES `salas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
  ) ;

INSERT INTO `peliculas` VALUES (1,'Maykol Jordan Viaje Perdido','3.500','Martes 4', 1);
INSERT INTO `peliculas` VALUES (2,'Hernán y el standan cam','3.500','Miércoles 5', 2);
INSERT INTO `peliculas` VALUES (3,'Queremos tanto a Bruno','3.300','Jueves 6', 3);
INSERT INTO `peliculas` VALUES (4,'El Codo del Diablo','3.500','Viernes 7', 4);
INSERT INTO `peliculas` VALUES (5,'Maykol Jordan Viaje Perdido','3.500','Sábado 8', 1);