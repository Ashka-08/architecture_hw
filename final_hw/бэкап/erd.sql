CREATE TABLE `Robot` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`model` VARCHAR(255) NOT NULL,
	`fabricNomer` VARCHAR(255) NOT NULL,
	`version` VARCHAR(255) NOT NULL,
	`status` INT NOT NULL,
	`resourses` INT NOT NULL,
	`macAdress` VARCHAR(255) NOT NULL,
	`idGroupUser` INT NOT NULL,
	`comment` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `User` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`login` VARCHAR(255) NOT NULL,
	`hashPasword` VARCHAR(255) NOT NULL,
	`email` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `GroupUser` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idUser1` INT NOT NULL,
	`idUser2` INT NOT NULL,
	`idUser3` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Schedule` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idRobot` INT NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`location` INT NOT NULL,
	`mode` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Robot` ADD CONSTRAINT `Robot_fk0` FOREIGN KEY (`idGroupUser`) REFERENCES `GroupUser`(`id`);

ALTER TABLE `GroupUser` ADD CONSTRAINT `GroupUser_fk0` FOREIGN KEY (`idUser1`) REFERENCES `User`(`id`);

ALTER TABLE `GroupUser` ADD CONSTRAINT `GroupUser_fk1` FOREIGN KEY (`idUser2`) REFERENCES `User`(`id`);

ALTER TABLE `GroupUser` ADD CONSTRAINT `GroupUser_fk2` FOREIGN KEY (`idUser3`) REFERENCES `User`(`id`);

ALTER TABLE `Schedule` ADD CONSTRAINT `Schedule_fk0` FOREIGN KEY (`idRobot`) REFERENCES `Robot`(`id`);





