DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
GO

CREATE TABLE productos (
    producto_id   INT PRIMARY KEY,
    nombre        VARCHAR(100) NOT NULL,
    categoria     VARCHAR(50)  NOT NULL,
    precio        DECIMAL(10,2)
);

CREATE TABLE ventas (
    venta_id     INT PRIMARY KEY,
    producto_id  INT,
    cliente_id   INT,
    cantidad     INT          NOT NULL,
    fecha_venta  DATE         NOT NULL
);

INSERT INTO productos VALUES (101, 'Laptop Pro 15', 'Computacion', 1200.00);
INSERT INTO productos VALUES (102, 'Mouse Inalambrico', 'Accesorios', 28.00);
INSERT INTO productos VALUES (103, 'Monitor 4K 27 pulgadas', 'Computacion', 450.00);
INSERT INTO productos VALUES (104, 'Teclado Mecanico', 'Accesorios', 95.00);
INSERT INTO productos VALUES (105, 'Auriculares BT Pro', 'Audio', 120.00);
INSERT INTO productos VALUES (106, 'SSD Externo 1TB', 'Almacenamiento', 130.00);
INSERT INTO productos VALUES (107, 'Webcam HD 1080p', 'Accesorios', 85.00);
INSERT INTO productos VALUES (108, 'Hub USB-C 7p', 'Accesorios', 45.00);
INSERT INTO productos VALUES (109, 'Parlante Bluetooth', 'Audio', 60.00);

INSERT INTO ventas VALUES (1, 101, 201, 2, '2024-01-05');
INSERT INTO ventas VALUES (2, 102, 202, 5, '2024-01-08');
INSERT INTO ventas VALUES (3, 103, 203, 1, '2024-01-12');
INSERT INTO ventas VALUES (4, 101, 201, 1, '2024-02-03');
INSERT INTO ventas VALUES (5, 104, 204, 3, '2024-02-10');
INSERT INTO ventas VALUES (6, 105, 202, 2, '2024-02-18');
INSERT INTO ventas VALUES (7, 106, 205, 3, '2024-03-05');
INSERT INTO ventas VALUES (8, 102, 203, 8, '2024-03-12');
INSERT INTO ventas VALUES (9, 107, 204, 2, '2024-03-20');
INSERT INTO ventas VALUES (10, 999, 205, 1, '2024-03-25');