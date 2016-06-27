DROP DATABASE IF EXISTS db_final;
CREATE DATABASE db_final;
USE db_final;

DROP TABLE IF EXISTS db_final.admin;
CREATE TABLE db_final.admin(
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255)

);

INSERT INTO db_final.admin VALUES (NULL ,'admin','123');

SELECT *
FROM admin;