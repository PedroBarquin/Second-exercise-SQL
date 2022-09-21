DROP SCHEMA IF EXISTS `primerExercisiOptica`;

CREATE SCHEMA IF NOT EXISTS `primerExercisiOptica` DEFAULT CHARACTER SET 'utf8';

USE primerExercisiOptica;

DROP TABLE IF EXISTS `firstSqlExercise`.`proveidor`;

CREATE TABLE IF NOT EXISTS `firstSqlExercise`.`proveidor` (
	`id_proveidor` INT NOT NULL AUTO_INCREMENT,
  `NIF` VARCHAR(50) NOT NULL,
  `nom` VARCHAR(50) NOT NULL,
  `adreca` VARCHAR(50) NOT NULL,
  `telefon` INT NULL,
  `fax` INT NULL,
  PRIMARY KEY (id_proveidor))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `firstSqlExercise`.`adreca` (
  `codi_postal` INT NOT NULL,
  `adreca` VARCHAR(45) NOT NULL,
  `numero` INT NULL,
  `pis` VARCHAR(5) NULL,
  `porta` VARCHAR(5) NULL,
  `ciutat` VARCHAR(60) NULL,
  `pais` VARCHAR(50) NULL,
  PRIMARY KEY (`adreca`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `firstSqlExercise`.`ulleres` (
	`id_ullera` INT(6) NOT NULL AUTO_INCREMENT,
	`graduacio_esquerra` VARCHAR(10) NOT NULL,
	`graduacio_dreta` VARCHAR(10) NOT NULL,
	`tipus_muntura` ENUM ('Flotant', 'Pasta', 'Metal.lica') NOT NULL,
	`color_muntura` VARCHAR(10) NOT NULL,
	`color_vidre` VARCHAR(25) NOT NULL,
	`preu` DECIMAL,
	PRIMARY KEY (`id_ullera`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `firstSqlExercise`.`clients` (
	`id_clients` INT NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(60) NOT NULL,
  `codi_postal` INT NULL,
  `telefon` INT NULL,
  `correu_electronic` VARCHAR(45) NULL,
  `data_registre` DATE NULL,
  `recomendacio_nom` INT NULL,
  PRIMARY KEY (id_clients),
  FOREIGN KEY(recomendacio_nom) REFERENCES clients(id_clients))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `firstSqlExercise`.`empleats` (
	`id_empleats` INT NOT NULL AUTO_INCREMENT,
  `nom_empleat` VARCHAR(60) NOT NULL,
  `telefon_empleat` INT NULL,
  `email_empleat` INT NULL,
  PRIMARY KEY (id_empleats))
  ENGINE = InnoDB;
