-- mysql script
CREATE TABLE IF NOT EXISTS users (
  id int PRIMARY KEY AUTO_INCREMENT,
  name varchar(225) NOT NULL UNIQUE,
  email varchar(225)
  );
