USE adlister_db;

SELECT title AS "Title",
       description AS "Description",
       username AS "Username"
FROM ads a
    JOIN users u on u.id = a.user_id;