SELECT
    generated_date AS missing_date
FROM
    v_generated_dates
WHERE generated_date NOT IN (
    SELECT DISTINCT
        visit_date
    FROM
        person_visits
    WHERE
        EXTRACT(MONTH FROM visit_date) = 1
    AND
        EXTRACT(YEAR FROM visit_date) = 2022
)
ORDER BY generated_date;