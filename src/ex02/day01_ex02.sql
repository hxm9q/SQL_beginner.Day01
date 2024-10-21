WITH
    RankedPizzas AS (
        SELECT pizza_name, ROW_NUMBER() OVER (
                PARTITION BY
                    pizza_name
                ORDER BY pizza_name DESC
            ) AS rn
        FROM menu
    )
SELECT pizza_name
FROM RankedPizzas
WHERE
    rn = 1
ORDER BY pizza_name DESC