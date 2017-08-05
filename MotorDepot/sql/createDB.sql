-- -----------------------------------------------------
-- DataBase motor_depot
-- -----------------------------------------------------
DROP DATABASE IF EXISTS `motor_depot` ;

CREATE DATABASE IF NOT EXISTS `motor_depot` DEFAULT CHARACTER SET utf8 ;
USE `motor_depot` ;

GRANT SELECT,INSERT,UPDATE,DELETE
ON `motor_depot`.*
TO admin@localhost
IDENTIFIED BY 'admin';

GRANT SELECT,INSERT,UPDATE,DELETE
ON `motor_depot`.*
TO admin@'%'
IDENTIFIED BY 'admin';