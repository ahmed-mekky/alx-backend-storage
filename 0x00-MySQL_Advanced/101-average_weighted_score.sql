-- mysql script
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
DECLARE average FLOAT;
DECLARE userId INT;

DECLARE total_weight FLOAT;

SELECT SUM(weight) INTO total_weight FROM projects;

SELECT id INTO userId FROM users;

WHILE userId IS NOT NULL DO
  SELECT SUM(score * weight) / total_weight INTO average
  FROM corrections
  WHERE user_id = userId;

  UPDATE users
  SET average_score = average
  WHERE id = userId;

  SELECT id INTO userId FROM users
  WHERE id > userId;
END WHILE;
END//

DELIMITER ;
