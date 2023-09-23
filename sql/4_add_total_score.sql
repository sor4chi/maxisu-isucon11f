ALTER TABLE `registrations` ADD COLUMN `total_score` TINYINT UNSIGNED;
UPDATE `registrations` SET `total_score` = 0;
ALTER TABLE `registrations` MODIFY COLUMN `total_score` TINYINT UNSIGNED NOT NULL;
