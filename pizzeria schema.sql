DROP SCHEMA IF EXISTS `primerExercisiPizzeria`;

CREATE SCHEMA IF NOT EXISTS `primerExercisiPizzeria` DEFAULT CHARACTER SET 'utf8';

USE primerExercisiPizzeria;

CREATE TABLE IF NOT EXISTS `primerExercisiPizzeria`.`provincia` (
	`id_provincia` INT NOT NULL AUTO_INCREMENT,
	`nom_provincia` VARCHAR(50) NOT NULL,
  PRIMARY KEY (id_provincia))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `primerExercisiPizzeria`.`client` (
  `id_client` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NOT NULL,
  `cognom` INT NULL,
  `adreca` VARCHAR(5) NULL,
  `codi_postal` VARCHAR(5) NULL,
  `localitat` VARCHAR(50) NULL,
  `provincia` VARCHAR(50) NULL,
  `numero_telefon` VARCHAR(50) NULL,
  `pais` VARCHAR(50) NULL,
  PRIMARY KEY (`id_client`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `primerExercisiPizzeria`.`comanda` (
	`id_comanda` INT NOT NULL AUTO_INCREMENT,
    `data` DATETIME,
	`opcio_comanda` ENUM ('Recollir', 'Domicili') NOT NULL,
	`total_comanda` DECIMAL NOT NULL,
    `id_client` INT NULL,
    `id_botiga` INT NULL,
    `id_empleat` INT NULL,
  PRIMARY KEY (id_comanda))
 ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `primerExercisiPizzeria`.`producte` (
	`id_producte` INT NOT NULL AUTO_INCREMENT,
    `nom` VARCHAR(50) NULL,
    `descripcio` VARCHAR(50) NULL,
    `categoria` ENUM ('Pizza', 'Hamburguesa', 'Beguda') NOT NULL,
    `imatge` BLOB,
    `preu` DECIMAL,
  PRIMARY KEY (id_producte))
 ENGINE = InnoDB;
 
CREATE TABLE IF NOT EXISTS `primerExercisiPizzeria`.`botiga`(
  `id_botiga` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(50) NOT NULL,
  `adreca` VARCHAR(50) NOT NULL,
  `codi_postal` VARCHAR(5) NULL,
  `id_localitat` VARCHAR(5) NULL,
  `id_provincia` VARCHAR(5) NULL,
  PRIMARY KEY (`id_botiga`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `primerExercisiPizzeria`.`empleat` (
	`id_empleat` INT NOT NULL AUTO_INCREMENT,
	`id_botiga` INT NOT NULL,
	`nom` VARCHAR(20) NOT NULL,
	`cognoms` VARCHAR(50) NOT NULL,
	`nif` VARCHAR(20) NOT NULL,
	`telefon` VARCHAR(20) NOT NULL,
	`tipus_empleat`  ENUM ('Repartidor', 'Cuiner', 'Altres') NOT NULL,
	PRIMARY KEY (`id_empleat`))
ENGINE = InnoDB;
