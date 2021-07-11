DROP DATABASE IF EXISTS jsp_short_uri_2021;

CREATE DATABASE jsp_short_uri_2021;

USE jsp_short_uri_2021;

CREATE TABLE `member` (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    loginId CHAR(100) UNIQUE NOT NULL,
    loginPw CHAR(100) NOT NULL,
    nickname CHAR(100) UNIQUE NOT NULL,
    email CHAR(100) NOT NULL
);

CREATE TABLE shortUri (
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    shortCode CHAR(3) NOT NULL,
    originUri CHAR(150) NOT NULL,
    `text` VARCHAR(100) NOT NULL,
    blanklessText CHAR(100) UNIQUE NOT NULL,
    accessCount INT(10) UNSIGNED DEFAULT 0
);

CREATE TABLE keyword(
    id INT(10) UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    regDate DATETIME NOT NULL,
    updateDate DATETIME NOT NULL,
    memberId INT(10) UNSIGNED NOT NULL,
    relTypeCode CHAR(50) NOT NULL,
    relId INT(10) UNSIGNED NOT NULL,
    keyStr CHAR(20) UNIQUE NOT NULL
);

DESC shortUri;

INSERT INTO shortUri 
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
shortCode = LOWER("ASD");

INSERT INTO shortUri 
SET regDate = NOW(),
updateDate = NOW(),
memberId = 1,
shortCode = "ab12cd한글(테스트)";
SELECT * FROM shortUri;

SELECT REGEXP_REPLACE(shortCode, '[가-힣()]','') 
FROM shortUri;