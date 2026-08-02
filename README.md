1. ¿Por qué LEFT JOIN y no INNER JOIN?
LEFT JOIN conserva todos los productos aunque no tengan ventas. Con INNER JOIN, los productos 108 (Hub USB-C) y 109 (Parlante Bluetooth) desaparecerían del resultado porque no tienen coincidencia en ventas, y perderíamos justamente la información que buscamos: qué productos nunca se vendieron.

2. ¿Por qué RIGHT JOIN?
productos está a la izquierda y ventas a la derecha. Como quiero conservar todas las ventas (incluida la venta_id 10, que tiene producto_id 999 inexistente en el catálogo), uso RIGHT JOIN para priorizar la tabla derecha. Equivale a hacer LEFT JOIN invirtiendo el orden de las tablas en el FROM.

3. ¿Qué representan los NULL?
En la Consulta 1, venta_id IS NULL significa que ese producto (ej. Hub USB-C, id 108) nunca apareció en una transacción de venta. En la Consulta 2, productos.producto_id IS NULL significa que existe una venta (venta_id 10) que referencia un producto_id (999) que no está en el catálogo, un posible error de carga de datos.

4. ¿Cuándo usar FULL OUTER JOIN?
En auditorías de calidad de datos donde necesito ver simultáneamente ambos tipos de inconsistencia: productos sin ventas y ventas sin producto asociado, sin perder ninguna fila de ninguna de las dos tablas.
