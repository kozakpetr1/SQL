CREATE PROCEDURE `add_booking`
	(
        IN vid INT UNSIGNED,
        IN eid INT UNSIGNED,
        IN startb DATETIME,
        IN endb DATETIME,
        IN purp VARCHAR(255) CHARACTER SET 'utf8' COLLATE 'utf8_czech_ci'
    )
    BEGIN
        INSERT INTO `reservation`.`booking` (`id`, `vehicle_id`, `employee_id`, `start_of_booking`, `end_of_booking`, `status`, `purpose`)
        VALUES (NULL, vid, eid, startb, endb, 'for approval', purp);
    END