-- mysql script
CREATE TABLE IF NOT EXISTS users (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  name VARCHAR(225) NOT NULL UNIQUE,
  email VARCHAR(225)
);
