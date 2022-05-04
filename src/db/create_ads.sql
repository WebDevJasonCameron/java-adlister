CREATE DATABASE IF NOT EXISTS adLister_db;
-- pluralizing the name of the table
USE adLister_db;

TRUNCATE ads;

-- 3. Write some SQL to drop a table named albums if it exists.
DROP TABLE IF EXISTS ads;

# Create an albums table with the following columns:
CREATE TABLE IF NOT EXISTS ads  (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(200) NOT NULL,
    description VARCHAR(500) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES users(id) On DELETE CASCADE
);


INSERT INTO ads (id, user_id, title, description)
VALUES (1, 4, 'Playstation 590', 'So new it has not even come out yet'),
       (2, 3, 'Moon Rock', 'From the lunar moon landing... For real!'),
       (3, 2, 'Sand Bags', 'Everyone needs a few in their lives'),
       (4, 1, 'Willy Wonka Ticket', 'Slightly used...')
;

DESC ads;

SHOW CREATE TABLE ads;

SELECT * FROM ads;



