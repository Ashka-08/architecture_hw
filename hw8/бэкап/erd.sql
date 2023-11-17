CREATE TABLE `Client` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`phoneNumber` INT NOT NULL,
	`email` TEXT NOT NULL,
	`hashPassword` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `ImageTable` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`image` TEXT NOT NULL AUTO_INCREMENT,
	PRIMARY KEY (`id`,`image`)
);

CREATE TABLE `Hall` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nameHall` TEXT NOT NULL AUTO_INCREMENT,
	`basePrice` INT NOT NULL,
	PRIMARY KEY (`id`,`nameHall`)
);

CREATE TABLE `Table` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`countClient` INT NOT NULL,
	`idImageTable` INT NOT NULL,
	`idHall` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Schedule` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idClient` INT NOT NULL,
	`idTable` INT NOT NULL,
	`dateTime` DATETIME NOT NULL,
	`countClient` INT NOT NULL,
	`idKoeff` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `KoeffPrice` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`koeff` FLOAT NOT NULL,
	`comment` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Table` ADD CONSTRAINT `Table_fk0` FOREIGN KEY (`idImageTable`) REFERENCES `ImageTable`(`id`);

ALTER TABLE `Table` ADD CONSTRAINT `Table_fk1` FOREIGN KEY (`idHall`) REFERENCES `Hall`(`id`);

ALTER TABLE `Schedule` ADD CONSTRAINT `Schedule_fk0` FOREIGN KEY (`idClient`) REFERENCES `Client`(`id`);

ALTER TABLE `Schedule` ADD CONSTRAINT `Schedule_fk1` FOREIGN KEY (`idTable`) REFERENCES `Table`(`id`);

ALTER TABLE `Schedule` ADD CONSTRAINT `Schedule_fk2` FOREIGN KEY (`idKoeff`) REFERENCES `KoeffPrice`(`id`);







