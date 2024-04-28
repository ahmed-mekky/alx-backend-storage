-- mysql script
DELIMITER //
CREATE PROCEDURE ComputeAverageScoreForUser(IN userId INT)
BEGIN
DECLARE average FLOAT;
SELECT (SELECT sum(score) FROM corrections WHERE user_id = userId) / (SELECT SUM(weight) FROM projects WHERE id IN (select project_id from corrections where user_id = userId)) INTO average

UPDATE users
SET average_score = average
WHERE id = userId;
END //

DELIMITER ;
