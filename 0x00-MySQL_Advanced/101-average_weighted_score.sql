-- mysql script
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
DECLARE average FLOAT;
DECLARE user_id INT;

DECLARE total_weight FLOAT;

SELECT SUM(weight) INTO total_weight FROM projects;

SELECT id INTO user_id FROM users;

WHILE user_id IS NOT NULL DO
  SELECT SUM(score * weight) / total_weight INTO average
  FROM corrections
  WHERE user_id = user_id;

  UPDATE users
  SET average_score = average
  WHERE id = user_id;

  SELECT id INTO user_id FROM users
  WHERE id > user_id;
END WHILE;
END//

DELIMITER ;
