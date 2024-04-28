-- mysql script
DELIMITER //
CREATE PROCEDURE ComputeAverageScoreForUser(in userId int)
BEGIN
DECLARE average int;
SELECT sum(score) / count(score) INTO average FROM corrections WHERE user_id = userId;
UPDATE users
SET average_score = average
WHERE id = userId;
END //

DELIMITER ;
