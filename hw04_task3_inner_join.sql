USE goit_rdb_hw_03;

-- Пункт 3. Об'єднання восьми таблиць через INNER JOIN

SELECT
    od.id AS order_detail_id,
    o.id AS order_id,
    c.id AS customer_id,
    p.id AS product_id,
    cat.name AS category_name,
    e.employee_id,
    sh.id AS shipper_id,
    s.id AS supplier_id,
    od.quantity
FROM order_details AS od
INNER JOIN orders AS o
    ON od.order_id = o.id
INNER JOIN customers AS c
    ON o.customer_id = c.id
INNER JOIN products AS p
    ON od.product_id = p.id
INNER JOIN categories AS cat
    ON p.category_id = cat.id
INNER JOIN employees AS e
    ON o.employee_id = e.employee_id
INNER JOIN shippers AS sh
    ON o.shipper_id = sh.id
INNER JOIN suppliers AS s
    ON p.supplier_id = s.id;