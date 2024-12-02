-- procedimientos almacenados
use DB_NicaPOS
-- consultar el acceso segun el usuario
select * from rol

CREATE PROCEDURE sp_control_acceso_u
	@UUID int
AS
BEGIN
SELECT p.nombre as Accesso --> se podria devolver el id del perfil y trabajar con ello desde el c#

	FROM usuario_rol_empleado ure
	INNER JOIN rol_perfil_empleado rpe ON ure.id_rol_perfil_empleado = rpe.id
	INNER JOIN perfil_empleado pe on rpe.id_perfil_empleado = pe.id
	INNER JOIN perfil p on pe.id_perfil = p.id
	where ure.id_usuario = @UUID
END

exec sp_mostrar_categoria







-- ususarios
-- auth usuario, este SP es MANDATORIO para validar el login del usuario
CREATE PROCEDURE sp_datos_tienda
AS
BEGIN
	Select id,RUC,nombre,razon_social,telefono from tienda
	where id=1
END

create procedure AuthUsuario
	@username NVARCHAR(50),
    @password NVARCHAR(50)
AS
BEGIN
    SET NOCOUNT ON;

    IF EXISTS (SELECT 1 FROM usuario WHERE username = @username AND contra = @password)
    BEGIN
        SELECT id_empleado 
        FROM usuario 
        WHERE username = @username AND contra = @password;
    END
    ELSE
    BEGIN
        SELECT -1; 
    END
END;


-- mostrar usuario

create procedure sp_mostrar_usuario
    @id varchar(50)
as
begin
   SELECT 
		u.id as UUID,
        u.username AS Usuario,
		fecha_creacion,
        u.id_empleado AS EID,
        CONCAT(e.nombre1, ' ', e.apellido1) AS Empleado
    FROM 
        usuario u
    INNER JOIN 
        empleado e ON e.id = u.id_empleado
    where u.id = @id;
end


-- mostrar usuarios todos

CREATE PROCEDURE sp_mostrar_usuario_all
AS
BEGIN
    SELECT 
		u.id as UUID,
        u.username AS Usuario,
		fecha_creacion,
        u.id_empleado AS EID,
        CONCAT(e.nombre1, ' ', e.apellido1) AS Empleado
    FROM 
        usuario u
    INNER JOIN 
        empleado e ON e.id = u.id_empleado;
END;
--> crear usuario
CREATE PROCEDURE sp_crear_usuario
    @username NVARCHAR(50),
    @password NVARCHAR(50),
    @eid INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Verificar si el usuario ya existe
    IF EXISTS (SELECT 1 FROM usuario WHERE username = @username)
    BEGIN
        RAISERROR ('El usuario ya existe.', 16, 1);
        RETURN;
    END

    DECLARE @newId INT;
    SELECT @newId = ISNULL(MAX(id), 0) + 1 FROM usuario;

    INSERT INTO usuario (id, username, contra, id_empleado)
    VALUES (@newId, @username, @password, @eid);
END;

--> eliminar usuario

CREATE PROCEDURE sp_eliminar_usuario
    @id INT
AS
BEGIN
	IF NOT EXISTS (SELECT 1 FROM usuario WHERE id = @id)
		BEGIN
			RAISERROR ('El usuario no existe.', 16, 1);
			RETURN;
		END
    DELETE FROM usuario WHERE id = @id;
END;


-- empleado


CREATE PROCEDURE sp_insertar_EmpleadoTelefono
	@telefono VARCHAR(15) = NULL,
    @id_compania_telefono INT = NULL,
	@id_empleado INT,
	@id_estado INT
AS
BEGIN
        INSERT INTO empleado_telefono (telefono, id_comp, id_empleado, estado)
        VALUES (@telefono, @id_compania_telefono, @id_empleado, @id_estado);
END


-- crear
CREATE PROCEDURE sp_CrearEmpleado
    @nombre1 VARCHAR(100),
    @nombre2 VARCHAR(100) = NULL,
    @apellido1 VARCHAR(100),
    @apellido2 VARCHAR(100) = NULL,
    @genero BIT,
    @fecha_nacimiento DATE,
    @identificacion VARCHAR(100),
    @id_estado INT,
    @id_sucursal INT,
    @telefono VARCHAR(15) = NULL,
    @id_compania_telefono INT = NULL,
    @direccion NVARCHAR(250) = NULL,
    @id_barrio INT = NULL,
    @email VARCHAR(100) = NULL
AS
BEGIN
    SET NOCOUNT ON;
    
    -- Verificación de si el empleado ya existe
    IF EXISTS (
        SELECT 1 
        FROM empleado 
        WHERE identificacion = @identificacion
           OR (nombre1 = @nombre1 AND apellido1 = @apellido1 AND fecha_nacimiento = @fecha_nacimiento)
    )
    BEGIN
        PRINT 'El empleado ya existe en la base de datos.';
        RETURN;
    END

    DECLARE @id_nuevoEmp INT;
	SELECT @id_nuevoEmp = ISNULL(MAX(id), 0) + 1 FROM empleado;

    INSERT INTO empleado (id,nombre1, nombre2, apellido1, apellido2, genero, fecha_nacimiento, identificacion, id_estado, id_sucursal)
    VALUES (@id_nuevoEmp,@nombre1, @nombre2, @apellido1, @apellido2, @genero, @fecha_nacimiento, @identificacion, @id_estado, @id_sucursal);

	DECLARE @id_nuevo INT;

    -- Inserción de telefono
    IF @telefono IS NOT NULL AND @id_compania_telefono IS NOT NULL
    BEGIN
	SELECT @id_nuevo = ISNULL(MAX(id), 0) + 1 FROM empleado_telefono;
        INSERT INTO empleado_telefono (id,telefono, id_comp, id_empleado, estado)
        VALUES (@id_nuevo,@telefono, @id_compania_telefono, @id_nuevoEmp, @id_estado);
    END

    -- Inserción de dirección 
    IF @direccion IS NOT NULL AND @id_barrio IS NOT NULL
    BEGIN
		SELECT @id_nuevo = ISNULL(MAX(id), 0) + 1 FROM empleado_direccion;

        INSERT INTO empleado_direccion (id,direccion, idEmpleado, idBarrio, estado)
        VALUES (@id_nuevo,@direccion, @id_nuevoEmp, @id_barrio, @id_estado);
    END

    -- Inserción de email 
    IF @email IS NOT NULL
    BEGIN
        IF @email LIKE '__%@___%.___%'
        BEGIN
				SELECT @id_nuevo = ISNULL(MAX(id), 0) + 1 FROM email_empleado;

            INSERT INTO email_empleado (id,email, empleado, estado)
            VALUES (@id_nuevo,@email, @id_nuevoEmp, @id_estado);
        END
        ELSE
        BEGIN
            PRINT 'El formato de correo electrónico es incorrecto.';
        END
    END
END;
GO
-- leer
CREATE PROCEDURE sp_Leer_EmpleadoID
    @EmpleadoID INT
AS
BEGIN
    SELECT id, nombre1, nombre2, apellido1, apellido2, genero, fecha_nacimiento, identificacion, id_estado, id_sucursal
    FROM empleado
    WHERE id = @EmpleadoID;
END

CREATE PROCEDURE sp_Leer_Empleados_Todos
AS
BEGIN
    SELECT id, nombre1, nombre2, apellido1, apellido2, CASE 
            WHEN genero = 1 THEN 'Masculino'
            WHEN genero = 0 THEN 'Femenino'
            ELSE 'Desconocido'
        END AS genero, fecha_nacimiento, identificacion, id_estado, id_sucursal
    FROM empleado;
END

CREATE PROCEDURE sp_listar_det_empleado
AS
BEGIN
    SELECT e.id as EID, e.nombre1 as NOMBRE, e.apellido1 as APELLIDO, CASE 
            WHEN genero = 1 THEN 'Masculino'
            WHEN genero = 0 THEN 'Femenino'
            ELSE 'Desconocido'
        END AS GENERO, fecha_nacimiento as 'FECHA DE NACIMIENTO', e.identificacion as IDENTIFICACION, 
		CASE
			WHEN e.id_estado = 1 THEN 'ACTIVO'
			WHEN e.id_estado = 2 then 'INACTIVO'
			else 'otro'
			end as
		ESTADO, s.nombre as SUCURSAL
    FROM empleado e
		 INNER JOIN sucursal s on e.id_sucursal = s.id
	
END

-- buscar


CREATE PROCEDURE sp_buscar_det_empleado
	@eid int
AS
BEGIN
    SELECT e.id as EID, e.nombre1 as NOMBRE, e.apellido1 as APELLIDO, CASE 
            WHEN genero = 1 THEN 'Masculino'
            WHEN genero = 0 THEN 'Femenino'
            ELSE 'Desconocido'
        END AS GENERO, fecha_nacimiento as 'FECHA DE NACIMIENTO', e.identificacion as IDENTIFICACION, 
		CASE
			WHEN e.id_estado = 1 THEN 'ACTIVO'
			WHEN e.id_estado = 2 then 'INACTIVO'
			else 'otro'
			end as
		ESTADO, s.nombre as SUCURSAL
    FROM empleado e
		 INNER JOIN sucursal s on e.id_sucursal = s.id
	where e.id = @eid;	
END


-- actualizar (revisar este SP)
CREATE PROCEDURE sp_UpdateEmpleado
    @EmpleadoID INT,
    @nombre1 VARCHAR(100),
    @nombre2 VARCHAR(100) = NULL,
    @apellido1 VARCHAR(100),
    @apellido2 VARCHAR(100) = NULL,
    @genero BIT,
    @fecha_nacimiento DATE,
    @identificacion VARCHAR(100),
    @id_estado INT,
    @id_sucursal INT
AS
BEGIN
    UPDATE empleado
    SET 
        nombre1 = @nombre1,
        nombre2 = @nombre2,
        apellido1 = @apellido1,
        apellido2 = @apellido2,
        genero = @genero,
        fecha_nacimiento = @fecha_nacimiento,
        identificacion = @identificacion,
        id_estado = @id_estado,
        id_sucursal = @id_sucursal
    WHERE id = @EmpleadoID;
    
    SELECT @@ROWCOUNT AS RowsAffected;  
END

-- eliminar
CREATE PROCEDURE sp_eliminar_empleado
    @EmpleadoID INT
AS
BEGIN
    DELETE FROM empleado
    WHERE id = @EmpleadoID;
    
    SELECT @@ROWCOUNT AS RowsAffected;  
END

-- deshabilitar
CREATE PROCEDURE sp_desactivar_empleado
    @EmpleadoID INT,
	@estado int
AS
BEGIN
     UPDATE empleado
		SET 
		id_estado = @estado
		WHERE id = @EmpleadoID;
 END

-- productos 

CREATE PROCEDURE sp_mostrar_informacion_productos
AS
BEGIN
    SELECT 
        p.id AS id_producto,
        p.nombre AS nombre_producto,
        p.codigoProducto AS codigo_producto,
        p.descripcion AS descripcion_producto,
        pc.nombre AS categoria_producto,
        psc.nombre AS subcategoria_producto,
        pm.nombre AS marca_producto,
        pmo.nombre AS modelo_producto,
        um.unidad_medida AS unidad_medida_producto,
        cp.costo AS costo_producto,
        pp.precio_venta AS precio_venta_producto,
        prov.nombre AS nombre_proveedor
    FROM 
        producto p
    -- Unir con la categoría de producto
    INNER JOIN producto_sub_categoria psc ON p.id_Subcategoria = psc.id
    INNER JOIN producto_categoria pc ON psc.id_cat = pc.id
    
    -- join con la marca y modelo de producto
    INNER JOIN producto_marca pm ON p.id_marca = pm.id
    INNER JOIN producto_modelo pmo ON pm.id = pmo.id_marca
    
    -- join  unidad de medida
    INNER JOIN unidad_medida um ON p.id_UM = um.id

    -- join  costo y precio del producto
    INNER JOIN costo_producto cp ON p.id = cp.id_producto
    INNER JOIN precio_producto pp ON cp.id = pp.id_costo

    -- join proveedor  producto
    INNER JOIN producto_proveedor ppv ON p.id = ppv.id_producto
    INNER JOIN proveedor prov ON ppv.id_proveedor = prov.id
    
    WHERE p.estado = 1 -- Solo productos activos
    ORDER BY p.nombre;
END;
GO

-- insertar producto

CREATE PROCEDURE sp_insertar_producto
	@nombre varchar
as
begin 
	INSERT INTO producto (id, nombre, codigoProducto, descripcion, id_Subcategoria, id_marca, id_UM, estado)
	VALUES 
end



-- mostrar proveedor

-- registrar proveedor
create procedure sp_reg_proveedor(
 @id int,
@nombre varchar(100)
,@id_identificacion int
,@tipo int
,@sitioWeb varchar(100)
,@id_estado int
)
as
begin

 INSERT INTO [dbo].[proveedor]
           ([id], [nombre], [id_identificacion], [tipo], [sitioWeb], [id_estado])
    VALUES
           (@id, @nombre, @id_identificacion, @tipo, @sitioWeb, @id_estado);

end


-- insertar productos


-- sucursales

CREATE PROCEDURE sp_listarSucursales_All
AS
BEGIN
	SELECT id as ID, nombre as Sucursal, estado as Estado FROM sucursal
END

CREATE PROCEDURE sp_listarSucursales_All_nombre
AS
BEGIN
	SELECT  nombre FROM sucursal
END



-- para la facturacion productos y servicios

CREATE PROCEDURE sp_FlistarProducto_all
AS
BEGIN
	SELECT p.id as ID,p.nombre as PRODUCTO,pc.nombre as CATEGORIA,psc.nombre AS SUBCATEGORIA, p.codigoProducto as CODIGO, pp.precio_venta as PRECIO FROM producto p
	INNER JOIN producto_sub_categoria psc ON p.id_Subcategoria = psc.id
    INNER JOIN producto_categoria pc ON psc.id_cat = pc.id

	INNER JOIN costo_producto cp ON p.id = cp.id_producto
    INNER JOIN precio_producto pp ON cp.id = pp.id_costo

END
select * from producto
CREATE  PROCEDURE sp_FlistarProducto
	@codProd varchar(40)
AS
BEGIN
	SELECT 
		p.id as ID,
		p.nombre as PRODUCTO, 
		pc.nombre as CATEGORIA,
		psc.nombre AS SUBCATEGORIA, 
		p.codigoProducto as CODIGO, 
		pp.precio_venta as PRECIO 
	FROM producto p
		INNER JOIN producto_sub_categoria psc ON p.id_Subcategoria = psc.id
		INNER JOIN producto_categoria pc ON psc.id_cat = pc.id

		INNER JOIN costo_producto cp ON p.id = cp.id_producto
		INNER JOIN precio_producto pp ON cp.id = pp.id_costo
	WHERE @codProd = p.codigoProducto;
END

-- servicios

CREATE PROCEDURE sp_FlistarServicio_all
AS
BEGIN
	SELECT s.nombre as SERVICIO, s.id as CODIGO, ps.precio_venta as PRECIO FROM servicio s
	
    INNER JOIN precio_servicio ps ON s.id = ps.id_servicio

END



-- para filtrar departamentos, por municipios etc
CREATE PROCEDURE sp_mostrar_dept
AS
BEGIN
	SELECT idDep,nombreDep FROM departamento
END

-- seleccionar municipio por departamento

CREATE PROCEDURE sp_mostrar_municipio
	@idDept INT
AS
BEGIN
	SELECT mun.idMun,mun.nombreMun 
	FROM municipio mun
	INNER JOIN departamento d ON mun.idDep = d.idDep
	WHERE d.idDep = @idDept
END


-- seleccionar barrio por municipio

CREATE PROCEDURE sp_mostrar_barrio
	@idMun INT
AS
BEGIN
	SELECT ba.idB,ba.nombreB 
	FROM barrio ba
	INNER JOIN municipio mun ON mun.idMun = ba.idB
	WHERE mun.idMun = @idMun
END

--> para categorias


CREATE PROCEDURE sp_mostrar_categoria
 
AS
BEGIN
   
    SELECT id, nombre, descripcion, estado
    FROM producto_categoria
    
END

-- subcategoria
CREATE PROCEDURE sp_mostrar_subcategoriaYCate
	@idCate int
AS
BEGIN
   
    SELECT psc.id, psc.nombre as SUBCATEGORIA,pc.nombre as CATEGORIA, psc.descripcion as DESCRIPCION, psc.estado
    FROM producto_sub_categoria psc
    INNER JOIN producto_categoria pc ON pc.id=psc.id_cat
	WHERE  pc.nombre = @idCate
END


CREATE PROCEDURE sp_mostrar_subcategoria
AS
BEGIN
   
    SELECT psc.id, psc.nombre as SUBCATEGORIA,pc.nombre as CATEGORIA, psc.descripcion as DESCRIPCION, psc.estado
    FROM producto_sub_categoria psc
    INNER JOIN producto_categoria pc ON pc.id=psc.id_cat
END


CREATE PROCEDURE sp_buscar_subcategoria
	@id int

AS
BEGIN
   
    SELECT psc.id, psc.nombre
    FROM producto_sub_categoria psc
    
	where id= @id and estado = 1
END





CREATE PROCEDURE sp_buscar_producto_categoria
    @id INT = NULL,            
    @nombre VARCHAR(100) = NULL 
AS
BEGIN
   
    SELECT id, nombre, descripcion, estado
    FROM producto_categoria
    WHERE 
        (@id IS NULL OR id = @id)        
        AND (@nombre IS NULL OR nombre LIKE '%' + @nombre + '%') 
END


CREATE PROCEDURE sp_insertar_categoria
	@nombre varchar(100),
	@descripcion varchar(500),
	@estado int
AS
BEGIN
	DECLARE @newId INT;
    SELECT @newId = ISNULL(MAX(id), 0) + 1 FROM producto_categoria;
	INSERT INTO producto_categoria (id,nombre,descripcion,estado)
	VALUES(@newId,@nombre,@descripcion,@estado)
END
select * from producto_categoria
-- insertar sub cate


CREATE PROCEDURE sp_insertar_sub_categoria
	@nombre varchar(100),
	@descripcion varchar(500),
	@estado int,
	@idCat int
AS
BEGIN
	DECLARE @newId INT;
    SELECT @newId = ISNULL(MAX(id), 0) + 1 FROM producto_sub_categoria;
	INSERT INTO producto_sub_categoria (id,nombre,descripcion,estado,id_cat)
	VALUES(@newId,@nombre,@descripcion,@estado,@idCat)
END

-- precio de venta

CREATE PROCEDURE sp_calcular_precio_venta
    @id_producto INT
AS
BEGIN
    DECLARE @costo DECIMAL(9, 2);
    DECLARE @gasto DECIMAL(9, 2);
    DECLARE @margen_ganancia DECIMAL(9, 2);
    DECLARE @precio_venta DECIMAL(9, 2);

    -- Obtener el costo del producto desde la tabla costo_producto
    SELECT @costo = c.costo
    FROM costo_producto c
    WHERE c.id_producto = @id_producto
      AND c.estado = 1;  

    -- Obtener el gasto y margen de ganancia desde la tabla precio_producto
    SELECT @gasto = p.gasto, @margen_ganancia = p.margen_ganancia
    FROM precio_producto p
    WHERE p.id_producto = @id_producto
      AND p.estado = 1;  

    -- Verificar que se obtuvieron todos los valores necesarios
    IF @costo IS NOT NULL AND @gasto IS NOT NULL AND @margen_ganancia IS NOT NULL
    BEGIN
        -- Calcular el precio de venta
        SET @precio_venta = (@costo + @gasto) * (1 + @margen_ganancia / 100);
        
        -- Devolver el precio de venta calculado
        SELECT @precio_venta AS precio_venta;
    END
    ELSE
    BEGIN
        -- Si no se pudo obtener alguno de los valores, devolver un mensaje de error
        PRINT 'Error: No se pudo calcular el precio de venta. Verifique los datos del producto.';
    END
END



/*

create table detalle_producto(
	id int primary key identity(1,1),
	cantidad int not null,
	precio_unitario decimal(9,2) not null,
	total as cantidad * precio_unitario,
	id_producto int foreign key references producto(id),
	id_precio int foreign key references precio_producto(id)
)

*/
CREATE PROCEDURE sp_insertar_detalle_prod
	@idProd int not null,
	@qty int not null,

AS
BEGIN 
END


exec sp_listarSucursales_All
CREATE PROCEDURE sp_listar_comp_tel
AS
BEGIN
	SELECT id,nombre,siglas,estado from compania_telefono
END	


-- venta este sp utilizarlo en la facturacion

CREATE PROCEDURE sp_insertar_venta_producto
	@subtotal decimal(9,2),
	@impuesto decimal(9,2),
	@descuento decimal(9,2),
	@total decimal(9,2),
	@id_tipo_comprobate int,
	@estado int,
	@id_empleado int,
	@id_sucursal int,
	@id_cliente int,
	@id_pago int

AS
BEGIN
	DECLARE @id_nuevo int,@num_comprobante varchar(100), @prefijo varchar(3);
	SELECT @id_nuevo = ISNULL(MAX(id), 0) + 1 FROM venta_producto
	
SET @prefijo = CASE
                    WHEN @id_tipo_comprobate = 1 THEN 'FAC'
                    WHEN @id_tipo_comprobate = 2 THEN 'REC'
                    WHEN @id_tipo_comprobate = 3 THEN 'NC'
                    ELSE 'N/A'
                 END
	SET @num_comprobante = @prefijo+ '000' + CAST(@id_nuevo as varchar(5))
	INSERT INTO venta_producto
			(id,num_comprobante,subtotal,impuesto,descuento,Total,
			tipo_comprobante,estado,id_empleado,id_sucursal,id_cliente, id_tipo_pago)
	Values(@id_nuevo,@num_comprobante,@subtotal,@impuesto,@descuento,@total,
			@id_tipo_comprobate,@estado,@id_empleado,@id_sucursal,@id_cliente,@id_pago);
END

select * from detalle_venta_producto

-- hacer un bulce de inserccion desde el c# para esta vaina 
--> se debe hacer un trigger que reste del stock inventario a su producto
CREATE PROCEDURE sp_insertar_det_venta_prod
	@cantidad int,
	@precioU decimal(9,2),
	@descuento decimal(9,2),
	@impuesto decimal(9,2),
	@total decimal(9,2),
	@id_venta int,
	@producto int,
	@id_promo int
AS
BEGIN
	DECLARE @id_nuevo int;
	SElect @id_nuevo = ISNULL(MAX(id), 0) + 1 FROM detalle_venta_producto 
	INSERT INTO detalle_venta_producto (id,cantidad,precio_unitario,descuento,impuesto,total,id_venta,id_producto,id_promo)
	VALUES (@id_nuevo,@cantidad,@precioU,@descuento,@impuesto,@total,@id_venta,@producto,@id_promo)
END

 


 -- cargos

create procedure sp_cargo_listar
as
begin 
	select id, nombre,id_estado from cargo
	where id_estado =1
end

create  procedure sp_listar_empleado_cargo
 as
 begin
	 SELECT 
		 e.id AS 'CODIGO EMPLEADO',
		 CONCAT(e.nombre1, ' ', e.apellido1) AS Empleado, 
		ISNULL(c.nombre, 'Sin Cargo') AS 'CARGO ACTUAL',	
		ISNULL(tel.telefono, 'Sin Telefono') AS 'TELEFONO',	
		ISNULL(email.email, 'Sin Email') AS 'EMAIL',	
		s.nombre AS SUCURSAL

	FROM empleado e
	LEFT JOIN sucursal s ON e.id_sucursal = s.id
	LEFT JOIN historial_cargo h ON e.id = h.id_empleado AND h.id_estado = 1
	LEFT JOIN cargo c ON h.id_cargo = c.id
	LEFT JOIN empleado_telefono tel ON tel.id_empleado = e.id AND tel.estado = 1
	LEFT JOIN email_empleado email ON email.empleado = e.id AND email.estado = 1
	LEFT JOIN usuario usr ON usr.id_empleado = e.id

 end


 
create  procedure sp_buscar_empleado_cargo

@eid int
 as
 begin
	 SELECT 
		 e.id AS 'CODIGO EMPLEADO',
		 CONCAT(e.nombre1, ' ', e.apellido1) AS Empleado, 
		ISNULL(c.nombre, 'Sin Cargo') AS 'CARGO ACTUAL',	
		ISNULL(tel.telefono, 'Sin Telefono') AS 'TELEFONO',	
		ISNULL(email.email, 'Sin Email') AS 'EMAIL',	
		s.nombre AS SUCURSAL

	FROM empleado e
	LEFT JOIN sucursal s ON e.id_sucursal = s.id
	LEFT JOIN historial_cargo h ON e.id = h.id_empleado AND h.id_estado = 1
	LEFT JOIN cargo c ON h.id_cargo = c.id
	LEFT JOIN empleado_telefono tel ON tel.id_empleado = e.id AND tel.estado = 1
	LEFT JOIN email_empleado email ON email.empleado = e.id AND email.estado = 1
	LEFT JOIN usuario usr ON usr.id_empleado = e.id
	
	where @eid = e.id
 end
 

 /*
	se loguea y captura el empleado -> guardo el id_empleado
	con el id_empleado reviso cual es su cargo actual, 
	y con su cargo actual en c# valido que perfiles se pueden cargar
 
 */

 select * from perfil_cargo
 create procedure sp_lista_acceso
	@cargo int 
 as
 begin 
  select p.nombre as 'PERFILES', pc.id_perfil from perfil p
  inner join perfil_cargo pc on pc.id_perfil= p.id
	where pc.id_cargo =@cargo
 end
 use DB_NicaPOS
 select * from cargo



create  procedure sp_control_acceso_cargo
	@eid int
 as
 begin
	select 
		hc.id_cargo as cargo
	from historial_cargo hc
	inner join cargo c on c.id = hc.id_cargo
	where hc.id_estado =1 and hc.id_empleado = @eid
 end







 perfil, perfil_empleado, historial_cargo, cargo, usuario_rol_empleado


create procedure sp_asignar_empleado_cargo
	@fecha date,
	@motivo varchar(500),
	@id_cargo int,
	@id_empleado int
as
begin
	DECLARE 
		@id_nuevo int, 
		@estado int;
	set @estado =1;
	SElect @id_nuevo = ISNULL(MAX(id), 0) + 1 FROM historial_cargo
	INSERT INTO historial_cargo(id,fecha,motivo,id_cargo,id_empleado,id_estado)
	VALUES (@id_nuevo,@fecha,@motivo,@id_cargo,@id_empleado,@estado)

end

-- flijo pedido y compra


CREATE  PROCEDURE sp_insertar_solicitud_compra
    @id_empleado INT,
    @tipo_solicitud VARCHAR(50),
    @estado INT,
    @subtotal DECIMAL(9, 2),
    @impuesto DECIMAL(9, 2),
    @descuento DECIMAL(9, 2),
    @total DECIMAL(9, 2),
    @id_sucursal INT,
	@fecha_req DATETIME
AS
BEGIN
    -- Manejo de errores
	DECLARE @newId INT;
		SELECT @newId = ISNULL(MAX(id), 0) + 1 FROM solicitud_compra;
    BEGIN TRY
        -- Insertar los datos en la tabla
        INSERT INTO solicitud_compra(
			id,
   
            id_empleado,
            tipo_solicitud,
            estado,
            subtotal,
            impuesto,
            descuento,
            total,
            id_sucursal,
            fecha_solicitud -- fecha_requerida
        )
        VALUES (
			@newId,
       
            @id_empleado,
            @tipo_solicitud,
            @estado,
            @subtotal,
            @impuesto,
            @descuento,
            @total,
            @id_sucursal,
            @fecha_req
        );

        -- Confirmación de éxito
        PRINT 'Solicitud de compra insertada correctamente';
    END TRY
    BEGIN CATCH
        -- Manejo de errores en caso de fallos
        DECLARE @ErrorMessage NVARCHAR(4000);
        DECLARE @ErrorSeverity INT;
        DECLARE @ErrorState INT;

        SELECT 
            @ErrorMessage = ERROR_MESSAGE(),
            @ErrorSeverity = ERROR_SEVERITY(),
            @ErrorState = ERROR_STATE();

        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END;
