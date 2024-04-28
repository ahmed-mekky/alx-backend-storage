-- mysql script
DELIMITER //
CREATE PROCEDURE ComputeAverageWeightedScoreForUsers()
BEGIN
UPDATE users
  SET average_score = (SELECT (SUM(weight * score) / SUM(weight))
                      FROM projects, corrections
                      WHERE users.id = corrections.user_id
                      AND projects.id = project_id);
END//

DELIMITER ;
