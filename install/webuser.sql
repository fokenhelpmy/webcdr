DROP TABLE IF EXISTS `webuser`;
CREATE TABLE `webuser` (
   `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL DEFAULT '',
   `username` VARCHAR(100) NOT NULL UNIQUE,
   `password` VARCHAR(100) NOT NULL,
   `acl` VARCHAR(1024) NOT NULL DEFAULT '',
   `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `admin` INT(1) NOT NULL DEFAULT 0,
   `acl_in` INT(1) NOT NULL DEFAULT 0,
   PRIMARY KEY (`id`)
)
ENGINE=InnoDB;
