

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


CREATE TABLE venta_temp (
    id INT IDENTITY(1,1) PRIMARY KEY,       -- Identificador único de la venta
    fecha DATETIME DEFAULT GETDATE() NOT NULL, -- Fecha y hora de la venta
    id_cliente INT NULL,                    -- Relación con cliente (opcional)
    total DECIMAL(10, 2) NOT NULL,          -- Total de la venta
    estado INT NOT NULL DEFAULT 1,          -- Estado de la venta (1 = activa, 0 = anulada)
    CONSTRAINT CHK_Venta_Total CHECK (total >= 0) -- Validación para total no negativo
);


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

CREATE  PROCEDURE sp_leer_productos_temp
AS
BEGIN
    SELECT 
        p.id AS ProductoID,
        p.nombre AS Producto,
        p.descripcion,
        p.precio,
        p.stock,
        pr.nombre AS Proveedor
    FROM producto_temp p
    INNER JOIN proveedor_temp pr ON p.id_proveedor = pr.id;
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






