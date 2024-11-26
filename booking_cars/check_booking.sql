CREATE DEFINER = CURRENT_USER TRIGGER `reservation`.`check_booking` BEFORE INSERT ON `booking` FOR EACH ROW
BEGIN
	SET @stk = (SELECT `stk` FROM `reservation`.`vehicle` WHERE id = NEW.`vehicle_id`);
	SET @cond = (SELECT `condition` FROM `reservation`.`vehicle` WHERE id = NEW.`vehicle_id`);
    IF @stk < now() OR @cond != 'applicable' THEN
        SIGNAL SQLSTATE '50001' SET MESSAGE_TEXT = 'The vehicle is out of service. Try booking a different one.';
    END IF;
END;