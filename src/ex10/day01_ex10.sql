SELECT
    p.name AS person_name,
    m.pizza_name,
    pz.name AS pizzeria_name
FROM
    person_order po
    JOIN person p on po.person_id = p.id
    JOIN menu m on po.menu_id = m.id
    JOIN pizzeria pz on m.pizzeria_id = pz.id
ORDER BY
    person_name ASC,
    pizza_name ASC,
    pizzeria_name ASC