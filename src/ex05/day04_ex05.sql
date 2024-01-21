CREATE VIEW
    v_price_with_discount AS
SELECT
    pe.name AS person_name,
    m.pizza_name,
    m.price AS real_price,
    ROUND(m.price - m.price * 0.1)::integer AS discount_price
FROM
    person_order o
JOIN
    person pe ON
        o.person_id = pe.id
JOIN
    menu m ON
        o.menu_id = m.id
ORDER BY
    person_name,
    pizza_name;

SELECT *
FROM
    v_price_with_discount;