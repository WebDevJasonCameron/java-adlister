USE adlister_db;

INSERT INTO users (username, email, password) VALUES ('admin', 'admin@admin.net', 'password');
SELECT id FROM users WHERE username = 'admin';