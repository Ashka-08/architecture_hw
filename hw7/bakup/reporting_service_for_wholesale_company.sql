CREATE TABLE `Category` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `SubCategory` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	`idCategory` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Units` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Product` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	`price` FLOAT NOT NULL,
	`idUnits` INT NOT NULL,
	`idSubCategory` INT NOT NULL,
	`idPRovider` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Schedule` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idPRoduct` INT NOT NULL,
	`count` INT NOT NULL,
	`date` DATE NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Provider` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`name` TEXT NOT NULL,
	`detailsCompany` TEXT NOT NULL,
	`contacts` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `SubCategory` ADD CONSTRAINT `SubCategory_fk0` FOREIGN KEY (`idCategory`) REFERENCES `Category`(`id`);

ALTER TABLE `Product` ADD CONSTRAINT `Product_fk0` FOREIGN KEY (`idUnits`) REFERENCES `Units`(`id`);

ALTER TABLE `Product` ADD CONSTRAINT `Product_fk1` FOREIGN KEY (`idSubCategory`) REFERENCES `SubCategory`(`id`);

ALTER TABLE `Product` ADD CONSTRAINT `Product_fk2` FOREIGN KEY (`idPRovider`) REFERENCES `Provider`(`id`);

ALTER TABLE `Schedule` ADD CONSTRAINT `Schedule_fk0` FOREIGN KEY (`idPRoduct`) REFERENCES `Product`(`id`);







