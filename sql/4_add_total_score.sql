CREATE VIEW
    `registrations_with_total_score` AS
SELECT
    `registrations`.`course_id`,
    `registrations`.`user_id`,
    IFNULL (SUM(`submissions`.`score`), 0) AS `total_score`
FROM
    `registrations`
    LEFT JOIN `submissions` ON `registrations`.`user_id` = `submissions`.`user_id`
    AND `registrations`.`course_id` = (
        SELECT
            `course_id`
        FROM
            `classes`
        WHERE
            `classes`.`id` = `submissions`.`class_id`
    )
