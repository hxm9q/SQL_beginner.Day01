SELECT DISTINCT
    po.order_date AS action_date,
    p.name AS name
FROM person_order po
    JOIN person p ON po.person_id = p.id
WHERE
    EXISTS (
        SELECT 1
        FROM person_visits pv
        WHERE
            po.person_id = pv.person_id
            AND po.order_date = pv.visit_date
    )
ORDER BY action_date ASC, name DESC