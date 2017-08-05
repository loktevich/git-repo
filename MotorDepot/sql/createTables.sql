-- -----------------------------------------------------
-- Table `motor_depot`.`type_of_lorry`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`type_of_lorry` (
  `id_type` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_type`),
  UNIQUE INDEX `id_type_UNIQUE` (`id_type` ASC),
  UNIQUE INDEX `type_UNIQUE` (`type` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`lorry`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`lorry` (
  `id_lorry` INT NOT NULL AUTO_INCREMENT,
  `model` VARCHAR(45) NOT NULL,
  `carrying_capacity` INT ZEROFILL NOT NULL,
  `type_id` INT NOT NULL,
  `lorry_state` TINYINT NOT NULL DEFAULT 1 COMMENT '0 - fault condition\n1 - working condition (default)',
  PRIMARY KEY (`id_lorry`),
  UNIQUE INDEX `id_lorry_UNIQUE` (`id_lorry` ASC),
  INDEX `type_idx` (`type_id` ASC),
  CONSTRAINT `lorry_type`
    FOREIGN KEY (`type_id`)
    REFERENCES `motor_depot`.`type_of_lorry` (`id_type`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`role`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`role` (
  `id_role` INT NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_role`),
  UNIQUE INDEX `id_role_UNIQUE` (`id_role` ASC),
  UNIQUE INDEX `role_name_UNIQUE` (`role_name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`user`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`user` (
  `id_user` INT NOT NULL AUTO_INCREMENT,
  `login` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `role_id` INT NOT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE INDEX `id_user_UNIQUE` (`id_user` ASC),
  UNIQUE INDEX `login_UNIQUE` (`login` ASC),
  INDEX `role_idx` (`role_id` ASC),
  CONSTRAINT `role`
    FOREIGN KEY (`role_id`)
    REFERENCES `motor_depot`.`role` (`id_role`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`driver`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`driver` (
  `id_driver` INT NOT NULL AUTO_INCREMENT,
  `dr_user_id` INT NOT NULL,
  `full_name` VARCHAR(45) NOT NULL,
  `lorry_id` INT NULL DEFAULT NULL,
  `availability` TINYINT NOT NULL DEFAULT 1 COMMENT '0 - on trip\n1 - available\n2 - unavailable',
  PRIMARY KEY (`id_driver`),
  INDEX `lorry_id_idx` (`lorry_id` ASC),
  UNIQUE INDEX `id_driver_UNIQUE` (`id_driver` ASC),
  UNIQUE INDEX `lorry_id_UNIQUE` (`lorry_id` ASC),
  INDEX `dr_user_idx` (`dr_user_id` ASC),
  CONSTRAINT `lorry`
    FOREIGN KEY (`lorry_id`)
    REFERENCES `motor_depot`.`lorry` (`id_lorry`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `dr_user`
    FOREIGN KEY (`dr_user_id`)
    REFERENCES `motor_depot`.`user` (`id_user`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`destination_point`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`destination_point` (
  `id_point` INT NOT NULL AUTO_INCREMENT,
  `point_name` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`id_point`),
  UNIQUE INDEX `id_point_UNIQUE` (`id_point` ASC),
  UNIQUE INDEX `point_name_UNIQUE` (`point_name` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`trip`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`trip` (
  `id_trip` INT NOT NULL AUTO_INCREMENT,
  `departure_point` INT NOT NULL,
  `arrival_point` INT NOT NULL,
  `distance` INT NOT NULL,
  `road_conditions` VARCHAR(45) NULL,
  PRIMARY KEY (`id_trip`),
  UNIQUE INDEX `id_trip_UNIQUE` (`id_trip` ASC),
  INDEX `departure_idx` (`departure_point` ASC),
  INDEX `arrival_idx` (`arrival_point` ASC),
  CONSTRAINT `departure`
    FOREIGN KEY (`departure_point`)
    REFERENCES `motor_depot`.`destination_point` (`id_point`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `arrival`
    FOREIGN KEY (`arrival_point`)
    REFERENCES `motor_depot`.`destination_point` (`id_point`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`dispatcher`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`dispatcher` (
  `id_dispatcher` INT NOT NULL AUTO_INCREMENT,
  `disp_user_id` INT NOT NULL,
  `full_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dispatcher`),
  UNIQUE INDEX `id_dispatcher_UNIQUE` (`id_dispatcher` ASC),
  INDEX `disp_user_idx` (`disp_user_id` ASC),
  CONSTRAINT `disp_user`
    FOREIGN KEY (`disp_user_id`)
    REFERENCES `motor_depot`.`user` (`id_user`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`application`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`application` (
  `id_application` INT NOT NULL AUTO_INCREMENT,
  `app_date` DATE NOT NULL,
  `trip_id` INT NOT NULL,
  `type_id` INT NOT NULL,
  `cargo_weight` INT NOT NULL,
  `deadline` DATE NULL,
  `dispatcher_id` INT NULL,
  PRIMARY KEY (`id_application`),
  INDEX `trip_id_idx` (`trip_id` ASC),
  INDEX `dispatcher_id_idx` (`dispatcher_id` ASC),
  UNIQUE INDEX `id_application_UNIQUE` (`id_application` ASC),
  INDEX `type_idx` (`type_id` ASC),
  CONSTRAINT `needed_trip`
    FOREIGN KEY (`trip_id`)
    REFERENCES `motor_depot`.`trip` (`id_trip`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `dispatcher`
    FOREIGN KEY (`dispatcher_id`)
    REFERENCES `motor_depot`.`dispatcher` (`id_dispatcher`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `needed_type`
    FOREIGN KEY (`type_id`)
    REFERENCES `motor_depot`.`type_of_lorry` (`id_type`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `motor_depot`.`completed_app`
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS `motor_depot`.`completed_app` (
  `id_completed_app` INT NOT NULL AUTO_INCREMENT,
  `application_id` INT NOT NULL,
  `driver_id` INT NOT NULL,
  `lorry_id` INT NOT NULL,
  `departure_time` DATE NOT NULL,
  `plan_arrival_time` DATE NOT NULL,
  `actual_arrival_time` DATE NULL,
  PRIMARY KEY (`id_completed_app`),
  INDEX `driver_id_idx` (`driver_id` ASC),
  UNIQUE INDEX `id_completed_app_UNIQUE` (`id_completed_app` ASC),
  INDEX `lorry_idx` (`lorry_id` ASC),
  UNIQUE INDEX `application_id_UNIQUE` (`application_id` ASC),
  CONSTRAINT `driver`
    FOREIGN KEY (`driver_id`)
    REFERENCES `motor_depot`.`driver` (`id_driver`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `used_lorry`
    FOREIGN KEY (`lorry_id`)
    REFERENCES `motor_depot`.`lorry` (`id_lorry`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  CONSTRAINT `application`
    FOREIGN KEY (`application_id`)
    REFERENCES `motor_depot`.`application` (`id_application`)
    ON DELETE RESTRICT
    ON UPDATE CASCADE)
ENGINE = InnoDB;