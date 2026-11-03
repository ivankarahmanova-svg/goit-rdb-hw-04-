USE goit_rdb_hw_03;

-- Пункт 4.2. Порівняння INNER JOIN та RIGHT JOIN

SELECT
    'INNER JOIN' AS join_type,
    COUNT(*) AS total_rows
FROM orders AS o
INNER JOIN employees AS e
    ON o.employee_id = e.employee_id

UNION ALL

SELECT
    'RIGHT JOIN' AS join_type,
    COUNT(*) AS total_rows
FROM orders AS o
RIGHT JOIN employees AS e
    ON o.employee_id = e.employee_id

UNION ALL

SELECT
    'LEFT JOIN' AS join_type,
    COUNT(*) AS total_rows
FROM employees AS e
LEFT JOIN orders AS o
    ON e.employee_id = o.employee_id;