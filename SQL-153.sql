CREATE DATABASE IF NOT EXISTS twitter_db;
USE twitter_db;
CREATE TABLE IF NOT EXISTS users(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(100) NOT NULL UNIQUE,
password_hash BINARY(64) NOT NULL,
bio TEXT,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE IF NOT EXISTS tweets(
id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
tweet_text VARCHAR(280) NOT NULL,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS followers(
follower_id INT NOT NULL,
following_id INT NOT NULL,
PRIMARY KEY (follower_id, following_id),
FOREIGN KEY (follower_id) REFERENCES users(id) ON DELETE CASCADE,
FOREIGN KEY (following_id) REFERENCES usere(id) ON DELETE CASCADE
);
CREATE TABLE IF NOT EXISTS likes(
user_id INT NOT NULL,
tweet_id INT NOT NULL,
PRIMARY KEY (user_id, tweet_id),
FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
FOREIGN KEY (tweet_id) REFERENCES tweets(id) ON DELETE CASCADE
);
DELIMITER //
DROP PROCEDURE IF EXISTS createAccount //
CREATE PROCEDURE createAccount(
IN p_username VARCHAR(50),
IN p_email VARCHAR(100),
IN p_password VARCHAR(255),
IN p_bio TEXT
)
BEGIN 
INSERT INTO users (username, email, password_hash, bio)
VALUES (p_username, p_email, UNHEX(MD5(p_password)), p_bio);
END //
DROP PROCEDURE IF EXISTS User_Follow //
CREATE PROCEDURE User_FOLLOW(
IN p_follower_id INT,
IN p_follwing_id INT 
)
BEGIN
INSERT IGNORE INTO followers (follower_id, following_id)
VALUES (p_follower_id, p_following_id);
END //
DELIMITER ;
SELECT
u.username,
COUNT(t.id) AS total_tweets
FROM users u
LEFT JOIN tweets t ON u.id = t.user_id
WHERE u.username = 'ahlam_cyber'
GROUP BY u.id;