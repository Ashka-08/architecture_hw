CREATE TABLE `Patient` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`typePolicy` TEXT NOT NULL,
	`numberPolicy` INT NOT NULL,
	`FIO` TEXT NOT NULL,
	`dateOfB` DATE NOT NULL,
	`sex` BINARY NOT NULL,
	`idMedicalCard` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Doctor` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`FIO` TEXT NOT NULL,
	`phoneNumber` INT NOT NULL,
	`specialityID` INT NOT NULL,
	`scheduleDoctorId` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Schedule` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idPatient` INT NOT NULL,
	`idDoctor` INT NOT NULL,
	`dateTime` DATE NOT NULL,
	`numberOffice` INT NOT NULL,
	`comment` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `HealthHistory` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`analisesId` INT NOT NULL,
	`diagnosId` INT NOT NULL,
	`treatment` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Analises` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` TEXT NOT NULL,
	`date` DATE NOT NULL,
	`result` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Diagnoses` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`title` TEXT NOT NULL AUTO_INCREMENT,
	`ICD10_code` TEXT NOT NULL,
	PRIMARY KEY (`id`,`title`)
);

CREATE TABLE `ContactListDoctors` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idDoctor` INT NOT NULL,
	`phoneNumber1` INT NOT NULL,
	`phoneNumber2` INT NOT NULL,
	`adress1` TEXT NOT NULL,
	`adress2` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `ContactListPatients` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`idPatient` INT NOT NULL,
	`phoneNumber1` INT NOT NULL,
	`phoneNumber2` INT NOT NULL,
	`adress1` TEXT NOT NULL,
	`adress2` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Speciality` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`speciality` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `MedicalCard` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`SetVisiting` TEXT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Patient` ADD CONSTRAINT `Patient_fk0` FOREIGN KEY (`idMedicalCard`) REFERENCES `MedicalCard`(`id`);

ALTER TABLE `Doctor` ADD CONSTRAINT `Doctor_fk0` FOREIGN KEY (`specialityID`) REFERENCES `Speciality`(`id`);

ALTER TABLE `Schedule` ADD CONSTRAINT `Schedule_fk0` FOREIGN KEY (`idPatient`) REFERENCES `Patient`(`id`);

ALTER TABLE `Schedule` ADD CONSTRAINT `Schedule_fk1` FOREIGN KEY (`idDoctor`) REFERENCES `Doctor`(`id`);

ALTER TABLE `HealthHistory` ADD CONSTRAINT `HealthHistory_fk0` FOREIGN KEY (`analisesId`) REFERENCES `Analises`(`id`);

ALTER TABLE `HealthHistory` ADD CONSTRAINT `HealthHistory_fk1` FOREIGN KEY (`diagnosId`) REFERENCES `Diagnoses`(`id`);

ALTER TABLE `ContactListDoctors` ADD CONSTRAINT `ContactListDoctors_fk0` FOREIGN KEY (`idDoctor`) REFERENCES `Doctor`(`id`);

ALTER TABLE `ContactListPatients` ADD CONSTRAINT `ContactListPatients_fk0` FOREIGN KEY (`idPatient`) REFERENCES `Patient`(`id`);

ALTER TABLE `MedicalCard` ADD CONSTRAINT `MedicalCard_fk0` FOREIGN KEY (`SetVisiting`) REFERENCES `HealthHistory`(`id`);











