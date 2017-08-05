-- -----------------------------------------------------
-- Data for table `motor_depot`.`type_of_lorry`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (101, 'Tent');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (102, 'Refrigerator');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (103, 'Isotherm');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (104, 'Jumbo');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (105, 'Tanker');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (106, 'Container');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (107, 'Open platform');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (108, 'Car transporter');
INSERT INTO `motor_depot`.`type_of_lorry` (`id_type`, `type`) VALUES (109, 'Cargo van');

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`lorry`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1001, 'MAZ', 20, 101, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1002, 'MAZ', 10, 102, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1003, 'MAN', 30, 107, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1004, 'Mercedes', 3, 109, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1005, 'Ford', 6, 109, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1006, 'Volvo', 15, 103, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1007, 'Ford', 20, 105, 0);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1008, 'MAN', 30, 104, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1009, 'Volvo', 18, 107, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1010, 'MAN', 40, 108, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1011, 'Ford', 3, 109, 0);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1012, 'Mercedes', 10, 101, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1013, 'Volkswagen', 15, 102, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1014, 'MAZ', 17, 107, 1);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1015, 'Renault', 5, 109, 0);
INSERT INTO `motor_depot`.`lorry` (`id_lorry`, `model`, `carrying_capacity`, `type_id`, `lorry_state`) VALUES (1016, 'Ford', 3, 109, 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`role`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`role` (`id_role`, `role_name`) VALUES (1, 'admin');
INSERT INTO `motor_depot`.`role` (`id_role`, `role_name`) VALUES (2, 'dispatcher');
INSERT INTO `motor_depot`.`role` (`id_role`, `role_name`) VALUES (3, 'driver');

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`user`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (1, 'admin', 'admin', 1);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (2, 'disp1', 'disp', 2);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (3, 'disp2', 'disp', 2);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (4, 'disp3', 'disp', 2);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (5, 'disp4', 'disp', 2);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (6, 'disp5', 'disp', 2);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (7, 'driver1', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (8, 'driver2', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (9, 'driver3', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (10, 'driver4', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (11, 'driver5', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (12, 'driver6', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (13, 'driver7', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (14, 'driver8', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (15, 'driver9', 'driver', 3);
INSERT INTO `motor_depot`.`user` (`id_user`, `login`, `password`, `role_id`) VALUES (16, 'driver10', 'driver', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`driver`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1001, 7, 'Михайловский В. В.', 1011, 2);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1002, 8, 'Арсеньев Е. С.', 1006, 0);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1003, 9, 'Лешков В. Н.', 1005, 1);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1004, 10, 'Шестаков Н. А.', 1004, 1);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1005, 11, 'Тананушко А. Д.', 1002, 1);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1006, 12, 'Турин В. А.', 1012, 0);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1007, 13, 'Полещук М. Е.', 1007, 1);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1008, 14, 'Леневич А. А.', 1014, 1);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1009, 15, 'Зимовский С. Н.', NULL, 1);
INSERT INTO `motor_depot`.`driver` (`id_driver`, `dr_user_id`, `full_name`, `lorry_id`, `availability`) VALUES (1010, 16, 'Савинов А. Г.', 1013, 0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`destination_point`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1001, 'Minsk');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1002, 'Grodno');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1003, 'Brest');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1004, 'Vitebsk');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1005, 'Mogilev');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1006, 'Gomel');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1007, 'Moscow');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1008, 'St. Petersburg');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1009, 'Kiev');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1010, 'Warshaw');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1011, 'Vilnus');
INSERT INTO `motor_depot`.`destination_point` (`id_point`, `point_name`) VALUES (1012, 'Riga');

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`trip`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10001, 1004, 1001, 220, NULL);
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10002, 1004, 1005, 100, NULL);
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10003, 1004, 1002, 490, NULL);
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10004, 1004, 1007, 320, NULL);
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10005, 1004, 1008, 370, NULL);
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10006, 1004, 1006, 230, NULL);
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10007, 1004, 1003, 510, NULL);
INSERT INTO `motor_depot`.`trip` (`id_trip`, `departure_point`, `arrival_point`, `distance`, `road_conditions`) VALUES (10008, 1004, 1011, 280, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`dispatcher`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`dispatcher` (`id_dispatcher`, `disp_user_id`, `full_name`) VALUES (1001, 2, 'Белявский Е. В.');
INSERT INTO `motor_depot`.`dispatcher` (`id_dispatcher`, `disp_user_id`, `full_name`) VALUES (1002, 3, 'Щепилова К. В.');
INSERT INTO `motor_depot`.`dispatcher` (`id_dispatcher`, `disp_user_id`, `full_name`) VALUES (1003, 4, 'Карп И. А.');
INSERT INTO `motor_depot`.`dispatcher` (`id_dispatcher`, `disp_user_id`, `full_name`) VALUES (1004, 5, 'Синицкая Е. Д.');
INSERT INTO `motor_depot`.`dispatcher` (`id_dispatcher`, `disp_user_id`, `full_name`) VALUES (1005, 6, 'Исаева З. Н.');

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`application`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`application` (`id_application`, `app_date`, `trip_id`, `type_id`, `cargo_weight`, `deadline`, `dispatcher_id`) VALUES (10001, '2017-05-17', 10002, 103, 5, '2017-05-21', 1001);
INSERT INTO `motor_depot`.`application` (`id_application`, `app_date`, `trip_id`, `type_id`, `cargo_weight`, `deadline`, `dispatcher_id`) VALUES (10002, '2017-05-20', 10008, 107, 10, '2017-05-29', NULL);
INSERT INTO `motor_depot`.`application` (`id_application`, `app_date`, `trip_id`, `type_id`, `cargo_weight`, `deadline`, `dispatcher_id`) VALUES (10003, '2017-05-20', 10003, 102, 20, '2017-05-28', 1005);
INSERT INTO `motor_depot`.`application` (`id_application`, `app_date`, `trip_id`, `type_id`, `cargo_weight`, `deadline`, `dispatcher_id`) VALUES (10004, '2017-05-21', 10001, 101, 8, '2017-05-26', 1002);
INSERT INTO `motor_depot`.`application` (`id_application`, `app_date`, `trip_id`, `type_id`, `cargo_weight`, `deadline`, `dispatcher_id`) VALUES (10005, '2017-05-21', 10007, 105, 12, '2017-06-02', NULL);
INSERT INTO `motor_depot`.`application` (`id_application`, `app_date`, `trip_id`, `type_id`, `cargo_weight`, `deadline`, `dispatcher_id`) VALUES (10006, '2017-05-22', 10003, 108, 40, '2017-05-31', NULL);
INSERT INTO `motor_depot`.`application` (`id_application`, `app_date`, `trip_id`, `type_id`, `cargo_weight`, `deadline`, `dispatcher_id`) VALUES (10007, '2017-05-22', 10005, 101, 15, '2017-06-01', NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `motor_depot`.`completed_app`
-- -----------------------------------------------------
START TRANSACTION;
USE `motor_depot`;
INSERT INTO `motor_depot`.`completed_app` (`id_completed_app`, `application_id`, `driver_id`, `lorry_id`, `departure_time`, `plan_arrival_time`, `actual_arrival_time`) VALUES (00001, 10001, 1002, 1006, '2017-05-17', '2017-05-20', NULL);
INSERT INTO `motor_depot`.`completed_app` (`id_completed_app`, `application_id`, `driver_id`, `lorry_id`, `departure_time`, `plan_arrival_time`, `actual_arrival_time`) VALUES (00002, 10004, 1006, 1012, '2017-05-21', '2017-05-24', NULL);
INSERT INTO `motor_depot`.`completed_app` (`id_completed_app`, `application_id`, `driver_id`, `lorry_id`, `departure_time`, `plan_arrival_time`, `actual_arrival_time`) VALUES (00003, 10003, 1010, 1013, '2017-05-20', '2017-05-23', NULL);

COMMIT;