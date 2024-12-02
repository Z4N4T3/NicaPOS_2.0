

-- script para la base de datos temporal 


use DB_NicaPOS

CREATE TABLE proveedor_temp (
    id INT IDENTITY(1,1) PRIMARY KEY, -- Identificador único
    nombre VARCHAR(100) NOT NULL,     -- Nombre del proveedor
    telefono VARCHAR(15),            -- Teléfono del proveedor
    email VARCHAR(100),              -- Correo electrónico del proveedor
    direccion NVARCHAR(255),         -- Dirección del proveedor
    estado INT NOT NULL,             -- Estado (activo/inactivo)
    fecha_registro DATETIME DEFAULT GETDATE() NOT NULL -- Fecha de registro
);
-- Proveedores de prueba
INSERT INTO proveedor_temp (nombre, telefono, email, direccion, estado)
VALUES 
('Proveedor A', '123456789', 'proveedora@ejemplo.com', 'Calle 123', 1),
('Proveedor B', '987654321', 'proveedorb@ejemplo.com', 'Avenida 456', 1),
('Proveedor C', '555123456', 'proveedorc@ejemplo.com', 'Boulevard 789', 0); -- Inactivo


CREATE TABLE producto_temp (
    id INT IDENTITY(1,1) PRIMARY KEY, -- Identificador único
    nombre VARCHAR(100) NOT NULL,     -- Nombre del producto
    descripcion NVARCHAR(255),        -- Descripción del producto
    precio DECIMAL(10, 2) NOT NULL,   -- Precio unitario
    stock INT NOT NULL DEFAULT 0,     -- Cantidad en inventario
	estado bit default 1,
    id_proveedor INT NOT NULL, -- Relación con el proveedor
	id_Subcategoria int foreign key references producto_sub_categoria(id) not null, 
    fecha_registro DATETIME DEFAULT GETDATE() NOT NULL, -- Fecha de registro
    CONSTRAINT FK_producto_proveedor FOREIGN KEY (id_proveedor) 
        REFERENCES proveedor_temp(id)      -- Clave foránea a proveedor
        ON DELETE CASCADE             -- Elimina productos si se elimina el proveedor
        ON UPDATE CASCADE             -- Actualiza productos si cambia el ID del proveedor
);

select * from producto_temp
-- Productos típicos para una tienda de conveniencia
INSERT INTO producto_temp (nombre, descripcion, precio, stock, id_proveedor,id_Subcategoria)
VALUES 
('Agua Embotellada', 'Botella de agua natural 500ml', 0.75, 200, 1,1),
('Refresco Coca-Cola', 'Lata de refresco 355ml', 1.00, 150, 1,1),
('Papas Fritas', 'Bolsa de papas fritas clásica 150g', 1.50, 100, 2,1),
('Galletas de Chocolate', 'Paquete de galletas rellenas de chocolate 200g', 2.00,20, 2,1),
('Barra de Cereal', 'Barra energética con granola y chocolate', 1.20, 75, 3,1),
('Chicles', 'Paquete de chicles de menta', 0.90, 50, 3,1),
('Café Instantáneo', 'Paquete de café instantáneo 100g', 5.00, 25, 2,1),
('Baterías AA', 'Paquete de 2 baterías alcalinas AA', 3.50, 30, 2,1),
('Jugo de Naranja', 'Botella de jugo natural 1L', 2.50, 50, 1,1),
('Leche Entera', 'Litro de leche entera', 1.30, 60, 1,1),
('Pan de Caja', 'Bolsa de pan rebanado', 2.20, 40, 2,1),
('Detergente en Polvo', 'Paquete de detergente para ropa 1kg', 4.50, 20, 2,1),
('Shampoo', 'Botella de shampoo 500ml', 6.00, 15, 2,1),
('Papel Higiénico', 'Paquete de 4 rollos de papel higiénico', 3.80, 35, 2,1),
('Cerveza Lager', 'Lata de cerveza lager 355ml', 1.50, 100, 1,1),
('Aceite de Cocina', 'Botella de aceite vegetal 1L', 3.00, 20, 2,1),
('Huevo', 'Paquete de 12 huevos', 2.50, 30, 2,1),
('Atún en Lata', 'Lata de atún en agua 140g', 1.00, 40, 3,1),
('Sopa Instantánea', 'Vaso de sopa instantánea sabor pollo', 0.80, 75, 2,1),
('Arroz Blanco', 'Bolsa de arroz blanco 1kg', 1.80, 50, 2,1);


CREATE TABLE venta_temp (
    id INT IDENTITY(1,1) PRIMARY KEY,       -- Identificador único de la venta
    fecha DATETIME DEFAULT GETDATE() NOT NULL, -- Fecha y hora de la venta
    id_cliente INT NULL,                    -- Relación con cliente (opcional)
    total DECIMAL(10, 2) NOT NULL,          -- Total de la venta
    estado INT NOT NULL DEFAULT 1,          -- Estado de la venta (1 = activa, 0 = anulada)
    CONSTRAINT CHK_Venta_Total CHECK (total >= 0) -- Validación para total no negativo

);

alter table venta_temp
-- Agregar la columna id_empleado con clave foránea
ALTER TABLE venta_temp
ADD id_empleado INT;

-- Crear la clave foránea que referencia la tabla empleado
ALTER TABLE venta_temp
ADD CONSTRAINT FK_venta_temp_empleado
FOREIGN KEY (id_empleado)
REFERENCES empleado(id);


-- Ventas de prueba
INSERT INTO venta_temp (id_cliente, total, fecha, estado)
VALUES 
(1, 0, GETDATE(), 1), -- Total se actualizará después
(2, 0, GETDATE(), 1), -- Total se actualizará después
(NULL, 0, GETDATE(), 1); -- Venta sin cliente

-- Venta 1
insert into venta_producto_temp()

INSERT INTO venta_producto_temp(id_venta, id_producto, cantidad, precio_unitario)
VALUES 
(1, 14, 2, 100.00), -- 2 unidades de Producto 1
(1, 25, 1, 200.00); -- 1 unidad de Producto 2

-- Venta 2
INSERT INTO venta_producto_temp (id_venta, id_producto, cantidad, precio_unitario)
VALUES 
(2, 17, 3, 150.00), -- 3 unidades de Producto 3
(2, 16, 1, 250.00); -- 1 unidad de Producto 4

-- Venta 3 (sin cliente)
INSERT INTO venta_producto_temp (id_venta, id_producto, cantidad, precio_unitario)
VALUES 
(3, 23, 5, 50.00); -- 5 unidades de Producto 5


CREATE TABLE venta_producto_temp (
    id INT IDENTITY(1,1) PRIMARY KEY,      
    id_venta INT FOREIGN KEY (id_venta) REFERENCES venta_temp(id),  
    id_producto INT NOT NULL FOREIGN KEY (id_producto) REFERENCES producto_temp(id),
    cantidad INT NOT NULL CHECK (cantidad > 0),
    precio_unitario DECIMAL(10, 2),
	subtotal as cantidad * precio_unitario,
   
);

-- stored procedures

CREATE  PROCEDURE sp_crear_proveedor_temp
    @nombre VARCHAR(100),
    @telefono VARCHAR(15) = NULL,
    @email VARCHAR(100) = NULL,
    @direccion NVARCHAR(255) = NULL,
    @estado INT = 1
AS
BEGIN
    INSERT INTO proveedor_temp (nombre, telefono, email, direccion, estado)
    VALUES (@nombre, @telefono, @email, @direccion, @estado);

    SELECT SCOPE_IDENTITY() AS NuevoProveedorID;
END;


CREATE  PROCEDURE sp_leer_proveedores_temp
AS
BEGIN
    SELECT * 
    FROM proveedor_temp;
END;


CREATE PROCEDURE sp_actualizar_proveedor_temp
    @id INT,
    @nombre VARCHAR(100),
    @telefono VARCHAR(15) = NULL,
    @email VARCHAR(100) = NULL,
    @direccion NVARCHAR(255) = NULL,
    @estado INT
AS
BEGIN
    UPDATE proveedor_temp
    SET 
        nombre = @nombre,
        telefono = @telefono,
        email = @email,
        direccion = @direccion,
        estado = @estado
    WHERE id = @id;
END;

CREATE PROCEDURE sp_eliminar_proveedor_temp
    @id INT,
	@estado INT

AS
BEGIN
    UPDATE proveedor_temp
    SET estado =0 

    WHERE id = @id;
END;

-- productos

CREATE  PROCEDURE sp_crear_producto_temp
    @nombre VARCHAR(100),
    @descripcion NVARCHAR(255) = NULL,
    @precio DECIMAL(10, 2),
    @stock INT = 0,
    @id_proveedor INT,
	@estado int
AS
BEGIN
    INSERT INTO producto_temp (nombre, descripcion, precio, stock, id_proveedor,estado)
    VALUES (@nombre, @descripcion, @precio, @stock, @id_proveedor,@estado);

    SELECT SCOPE_IDENTITY() AS NuevoProductoID;
END;

CREATE PROCEDURE sp_leer_productos_temp
AS
BEGIN
    SELECT 
        p.id AS ProductoID,
        p.nombre AS Producto,
        p.descripcion,
        p.precio,
        p.stock,
        pr.nombre AS Proveedor,
		psc.nombre AS SUBCATEGORIA,
		pc.nombre AS CATEGORIA
    FROM producto_temp p
    INNER JOIN proveedor_temp pr ON p.id_proveedor = pr.id
	INNER JOIN producto_sub_categoria psc ON p.id_Subcategoria = psc.id
    INNER JOIN producto_categoria pc ON psc.id_cat = pc.id
END;

CREATE PROCEDURE sp_actualizar_producto_temp
    @id INT,
    @nombre VARCHAR(100),
    @descripcion NVARCHAR(255) = NULL,
    @precio DECIMAL(10, 2),
    @stock INT,
    @id_proveedor INT,
	@estado bit
AS
BEGIN
    UPDATE producto_temp
    SET 
        nombre = @nombre,
        descripcion = @descripcion,
        precio = @precio,
        stock = @stock,
        id_proveedor = @id_proveedor
		
    WHERE id = @id;
END;

CREATE PROCEDURE sp_eliminar_producto_temp
    @id INT,
	@estado bit
AS
BEGIN
     UPDATE producto_temp
    SET estado = @estado 
    WHERE id = @id;
END;

select * from venta_temp

CREATE PROCEDURE sp_venta_insertear_temp
	@id_cliente int,
	@total DECIMAL(10, 2),
	@id_empleado int
AS
	
BEGIN
	INSERT INTO venta_temp(id_cliente,total,id_empleado,estado)
		VALUES(@id_cliente,@total,@id_empleado,1)
END

select * from venta_producto_temp


-- con un foreach insertar los productos relacionados a esa venta 
CREATE PROCEDURE sp_venta_producto_insertar_temp
	@id_venta int,
	@id_prod int,
	@qty int,
	@precioU decimal(10,2)
AS
	
BEGIN

INSERT INTO venta_producto_temp (id_venta, id_producto, cantidad, precio_unitario)
		VALUES(@id_venta,@id_prod,@qty,@precioU)
END



CREATE  TRIGGER trg_reducir_stock
ON venta_producto_temp
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    -- Actualizar el stock en la tabla producto
    UPDATE p
    SET p.stock = p.stock - i.cantidad
    FROM producto_temp p
    INNER JOIN inserted i ON p.id = i.id_producto;

    -- Verificar que ningún producto tenga stock negativo
    IF EXISTS (
        SELECT 1 
        FROM producto_temp 
        WHERE stock < 0
    )
    BEGIN
        -- Revertir la operación si el stock es negativo
        RAISERROR ('Stock insuficiente para uno o más productos', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;



