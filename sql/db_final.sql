DROP DATABASE IF EXISTS db_final;
CREATE DATABASE db_final;
USE db_final;



DROP TABLE IF EXISTS db_final.user;
CREATE TABLE db_final.user(
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(255),
  password VARCHAR(255),
  tel VARCHAR(255),
  address VARCHAR(255),
  role VARCHAR(1) NOT NULL DEFAULT 'u' -- u 普通用户，a 管理员

);

-- table health
DROP TABLE IF EXISTS db_final.health;
CREATE TABLE db_final.health(
  id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255),
  summary VARCHAR(255),
  substance VARCHAR(2048),
  subtime DATE
);

INSERT INTO db_final.health VALUES (NULL ,'坚持运动','呵呵','运动运动运动',now());
SELECT *
FROM health;

INSERT INTO db_final.user VALUES (NULL ,'admin','123','11111111111','北京','a');
INSERT INTO db_final.user VALUES (NULL ,'user','123','15810730671','上海',DEFAULT );


SELECT *
FROM db_final.user;

select *
from db_final.health
WHERE title LIKE concat('%',concat('跳','%')) OR health.substance LIKE concat('%',concat(#{substance}，'%'))