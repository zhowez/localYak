CREATE DATABASE IF NOT EXISTS DATABASE;

USE DATABASE;

CREATE TABLE IF NOT EXISTS Accounts
(
    User_Phone_Number varchar(10) NOT NULL unique,
    User_Emoji varchar(1) NOT NULL,
    User_Emoji_Color varchar(20) NOT NULL,
    PRIMARY KEY (User_Phone_Number)

);

CREATE TABLE IF NOT EXISTS Posts
(
    Post_ID int NOT NULL unique,
    Post_Emoji varchar(1) NOT NULL,
    Post_Emoji_Color varchar(20) NOT NULL,
    Post_Content varchar(256) NOT NULL,
    Post_Date datetime NOT NULL,
    Post_Lat DECIMAL(10, 8), 
    Post_Long DECIMAL(11, 8)
    PRIMARY KEY (Post_ID),
    FOREIGN KEY (Post_ID) REFERENCES Messages(Post_ID)
);

CREATE TABLE IF NOT EXISTS User_Posts
(
    User_Phone_Number varchar(10) NOT NULL unique,
    Post_ID int NOT NULL unique,
    PRIMARY KEY (User_Phone_Number,Post_ID),
    FOREIGN KEY (User_Phone_Number) REFERENCES Accounts(User_Phone_Number),
    FOREIGN KEY (Post_ID) REFERENCES Posts(Post_ID)
);

