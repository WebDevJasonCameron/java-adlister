CREATE DATABASE IF NOT EXISTS adLister_db;
-- pluralizing the name of the table
USE adLister_db;

TRUNCATE users;

-- 3. Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS users;

# Create an albums table with the following columns:
CREATE TABLE IF NOT EXISTS users  (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username VARCHAR(100) NOT NULL,
    email VARCHAR(100),
    password VARCHAR(100),
    PRIMARY KEY (id)
    );



INSERT INTO users (id, username, email, password)
VALUES (1, 'DarkSide', 'darkside@gmail.com', '12345'),
       (2, 'MoonShot', 'moonshot@gmail.com', '12345'),
       (3, 'DeathStar', 'deathstar@gmail.com', '12345'),
       (4, 'WonderWall', 'wonderwall@gmail.com', '12345')
     ;

DESC users;

SHOW CREATE TABLE users;

SELECT * FROM users;

