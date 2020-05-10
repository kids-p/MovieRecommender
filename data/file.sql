CREATE DATABASE IF NOT EXISTS MovieRecommend;

use MovieRecommend;

CREATE TABLE IF NOT EXISTS Users(
	UserID INT PRIMARY KEY AUTO_INCREMENT,
	Username CHAR(20) NOT NULL UNIQUE KEY,
	Password CHAR(20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE IF NOT EXISTS Movies(
	MovieID INT PRIMARY KEY AUTO_INCREMENT,
	MovieTitle VARCHAR(20) NOT NULL,
	Cover VARCHAR(100),
	StoryLine VARCHAR(1000) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS Rating(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	UserID INT,
	MovieID INT,
	FOREIGN KEY(UserID) REFERENCES Users(UserID) ON DELETE CASCADE,
	FOREIGN KEY(MovieID) REFERENCES Movies(MovieID) ON DELETE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8;