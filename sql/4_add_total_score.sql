ALTER TABLE `registrations` ADD COLUMN `total_score` TINYINT UNSIGNED;
UPDATE `registrations` SET `total_score` = 0;
