SELECT m.pizza_name AS object_name
FROM menu m
UNION ALL
SELECT p.name AS object_name
FROM person p
ORDER BY object_name