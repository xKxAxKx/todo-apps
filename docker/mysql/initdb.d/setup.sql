CREATE USER 'todo'@'%';

CREATE DATABASE IF NOT EXISTS `todo`;
GRANT ALL ON `todo`.* TO 'todo'@'%';

FLUSH PRIVILEGES;
