-- mysql script
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUser(IN userId INT)
BEGIN
DECLARE average FLOAT;
SELECT SUM(score * (SELECT weight FROM projects WHERE id = project_id)) / (SELECT sum(weight) FROM projects) INTO average FROM corrections WHERE user_id = userId;

UPDATE users
SET average_score = average
WHERE id = userId;
END //

DELIMITER ;
