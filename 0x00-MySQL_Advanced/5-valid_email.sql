-- mysql script
DELIMITER //
CREATE TRIGGER users_email_trigger
BEFORE UPDATE ON users
FOR EACH ROW
IF OLD.email <> NEW.email THEN
SET NEW.valid_email = 0;
END IF//
DELIMITER ;
