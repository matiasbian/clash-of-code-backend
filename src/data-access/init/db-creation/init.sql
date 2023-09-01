CREATE TABLE `clash_of_code`.`levels` (`level` INT NOT NULL , `label` TEXT NOT NULL , `structure` JSON NOT NULL ) ENGINE = InnoDB;

CREATE TABLE `clash_of_code`.`progress` (`id` INT NOT NULL AUTO_INCREMENT , `level` INT NOT NULL , `user` INT NOT NULL , `movements` INT NOT NULL , PRIMARY KEY (`id`)) ENGINE = InnoDB;