CREATE TABLE `clash_of_code`.`levels` (`level` INT NOT NULL , `label` TEXT NOT NULL , `structure` JSON NOT NULL ) ENGINE = InnoDB;

ALTER TABLE `levels` ADD `perfect_steps` INT NOT NULL AFTER `structure`;

CREATE TABLE `clash_of_code`.`progress` (`id` INT NOT NULL AUTO_INCREMENT , `level` INT NOT NULL , `user` INT NOT NULL , `movements` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;