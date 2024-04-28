-- mysql script

DELIMITER //
CREATE FUNCTION SafeDiv(a INT, b INT)
RETURNS FLOAT
DETERMINISTIC
BEGIN
DECLARE div_value FLOAT;
IF b = 0 THEN
SET div_value = 0;
ELSE
SET div_value = a / b;
END IF;
RETURN div_value;
END
DELIMITER ;
