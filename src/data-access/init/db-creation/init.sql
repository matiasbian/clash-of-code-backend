CREATE TABLE `clash_of_code`.`levels` (`level` INT NOT NULL , `label` TEXT NOT NULL , `structure` JSON NOT NULL ) ENGINE = InnoDB;

ALTER TABLE `levels` ADD `perfect_steps` INT NOT NULL AFTER `structure`;
ALTER TABLE `levels` ADD `id` INT NOT NULL AUTO_INCREMENT FIRST, ADD PRIMARY KEY (`id`);
ALTER TABLE `levels` ADD `dialogs` TEXT AFTER `perfect_steps`;

CREATE TABLE `clash_of_code`.`progress` (`id` INT NOT NULL AUTO_INCREMENT , `level` INT NOT NULL , `user` INT NOT NULL , `movements` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;