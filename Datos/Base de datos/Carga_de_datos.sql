-- carga de datos:

-- carga de estados comunes 

-- actualizar el historial de cargo porque se agrego el estado
INSERT INTO estado (id, nombre) VALUES
(1, 'Activo'),        
(2, 'Inactivo'),     
(3, 'Pendiente'),     
(4, 'Bloqueado'),     
(5, 'Eliminado'),    
(6, 'Aprobado'),     
(7, 'Rechazado'),     
(8, 'Suspendido');   


-- compa�ia de telefonos

insert into compania_telefono (id, nombre, siglas,estado)
values
(1, 'Claro','CL',1),
(2, 'Tigo','TG',1)

-- departamentos de nicaragua

-- Insert departments and autonomous regions of Nicaragua
INSERT INTO departamento (idDep, nombreDep) VALUES
(1, 'Boaco'),
(2, 'Carazo'),
(3, 'Chinandega'),
(4, 'Chontales'),
(5, 'Estel�'),
(6, 'Granada'),
(7, 'Jinotega'),
(8, 'Le�n'),
(9, 'Madriz'),
(10, 'Managua'),
(11, 'Masaya'),
(12, 'Matagalpa'),
(13, 'Nueva Segovia'),
(14, 'Rivas'),
(15, 'R�o San Juan'),
(16, 'Regi�n Aut�noma de la Costa Caribe Norte'),
(17, 'Regi�n Aut�noma de la Costa Caribe Sur');


-- inserccion de los muinicipios
INSERT INTO municipio (idMun, nombreMun, idDep) VALUES
-- Boaco 
(1, 'Boaco', 1),
(2, 'Camoapa', 1),
(3, 'San Lorenzo', 1),

-- Carazo 
(4, 'Jinotepe', 2),
(5, 'Diriamba', 2),
(6, 'San Marcos', 2),

-- Chinandega 
(7, 'Chinandega', 3),
(8, 'Corinto', 3),
(9, 'El Viejo', 3),

-- Chontales 
(10, 'Juigalpa', 4),
(11, 'Acoyapa', 4),
(12, 'Santo Tom�s', 4),

-- Estel�
(13, 'Estel�', 5),
(14, 'Condega', 5),
(15, 'La Trinidad', 5),

-- Granada 
(16, 'Granada', 6),
(17, 'Nandaime', 6),
(18, 'Diri�', 6),

-- Jinotega
(19, 'Jinotega', 7),
(20, 'San Rafael del Norte', 7),
(21, 'San Sebasti�n de Yal�', 7),

-- Le�n 
(22, 'Le�n', 8),
(23, 'El Sauce', 8),
(24, 'La Paz Centro', 8),

-- Madriz 
(25, 'Somoto', 9),
(26, 'Palacag�ina', 9),
(27, 'San Lucas', 9),

-- Managua 
(28, 'Managua', 10),
(29, 'Ciudad Sandino', 10),
(30, 'Ticuantepe', 10),

-- Masaya 
(31, 'Masaya', 11),
(32, 'Nindir�', 11),
(33, 'Catarina', 11),

-- Matagalpa 
(34, 'Matagalpa', 12),
(35, 'San Ram�n', 12),
(36, 'S�baco', 12),

-- Nueva Segovia 
(37, 'Ocotal', 13),
(38, 'Jalapa', 13),
(39, 'Santa Mar�a', 13),

-- Rivas 
(40, 'Rivas', 14),
(41, 'San Juan del Sur', 14),
(42, 'Tola', 14),

-- R�o San Juan 
(43, 'San Carlos', 15),
(44, 'El Castillo', 15),
(45, 'San Miguelito', 15),

-- Regi�n Aut�noma de la Costa Caribe Norte (ID: 16)
(46, 'Bilwi', 16),
(47, 'Waspam', 16),
(48, 'Prinzapolka', 16),

-- Regi�n Aut�noma de la Costa Caribe Sur (ID: 17)
(49, 'Bluefields', 17),
(50, 'Laguna de Perlas', 17),
(51, 'Kukra Hill', 17);



-- municipio

INSERT INTO barrio (idB, nombreB, idMun) VALUES
-- Barrios in Boaco 
(1, 'El Calvario', 1),
(2, 'La Providencia', 1),
(3, 'San Jos�', 1),

-- Barrios in Jinotepe 
(4, 'Santa Isabel', 4),
(5, 'La Cruz', 4),
(6, 'San Antonio', 4),

-- Barrios in Chinandega 
(7, 'El Rosario', 7),
(8, 'Santa Ana', 7),
(9, 'Reparto El Limonal', 7),

-- Barrios in Juigalpa 
(10, 'La Libertad', 10),
(11, 'El Tamarindo', 10),
(12, 'San Mart�n', 10),

-- Barrios in Estel� 
(13, 'Oscar G�mez', 13),
(14, 'Libertad', 13),
(15, 'Boris Vega', 13),

-- Barrios in Granada 
(16, 'La Islita', 16),
(17, 'Xalteva', 16),
(18, 'El Cementerio', 16),

-- Barrios in Jinotega 
(19, 'El Pantanal', 19),
(20, 'San Antonio', 19),
(21, 'Loma Verde', 19),

-- Barrios in Le�n 
(22, 'Labor�o', 22),
(23, 'Guadalupe', 22),
(24, 'San Felipe', 22),

-- Barrios in Managua 
(25, 'Ciudad Jard�n', 28),
(26, 'Monse�or Lezcano', 28),
(27, 'Reparto Schick', 28),

-- Barrios in Masaya 
(28, 'San Jer�nimo', 31),
(29, 'El Calvario', 31),
(30, 'Camilo Ortega', 31),

-- Barrios in Matagalpa 
(31, 'Guadalupe', 34),
(32, 'Sabadell', 34),
(33, 'San Francisco', 34),

-- Barrios in Ocotal 
(34, 'Sandino', 37),
(35, 'Teodoro L�pez', 37),
(36, 'Pancas�n', 37),

-- Barrios in Rivas 
(37, 'La Puebla', 40),
(38, 'La Virgen', 40),
(39, 'San Pedro', 40),

-- Barrios in Bluefields
(40, 'Beholden', 49),
(41, 'Loma Fresca', 49),
(42, 'Central', 49);
insert into barrio(idB, nombreB, idMun) VALUES
(43, 'Altagracia', 1)

INSERT INTO tienda (id,nombre,RUC,telefono,razon_social)
values
(1,'El Matracazo','J00102003100017','22667788','El Mercadito S.A')

-- direccion de la tienda

INSERT INTO direccion_tienda (id,direccion,id_barrio,id_tienda,estado)
values 
(1,'De los semaforos de la racachaca 2 1/2 c al Norte',43,1,1)
-- sucursal
INSERT INTO sucursal (id,nombre,estado)
VALUES
(1,'Racachaca',1)
-- telefono sucursal
insert into sucursal_telefono (id,telefono,id_comp,id_sucursal,estado)
VALUES
(1,'8763890',1,1,1)
-- direccion de la sucursal 
INSERT INTO sucurusal_direccion (id,direccion,id_barrio,estado,id_sucursal)
values 
(1,'De los semaforos de la racachaca 2 1/2 c al Norte',43,1,1)

insert into tipo_identificacion (id, tipo)
values
(1,'Cedula'),
(2,'Pasaporte')

-- empleados

INSERT INTO empleado (id, nombre1, nombre2, apellido1, apellido2, genero, fecha_nacimiento, identificacion, id_estado, id_sucursal) VALUES
(1, 'Jurgen', 'Alejandro', 'Quintanilla', 'Paiz', 1, '1990-05-12', '0010908091067T', 1, 1), 
(2, 'Jorge', 'Luis', 'Nunez', 'Urbina', 1, '1985-07-23', '001230785J', 1, 1),
(3, 'Nathaly', 'Akira', 'Alaniz', 'Escorcia', 0, '1985-07-23', '00719850723X', 1, 1);


INSERT INTO empleado_telefono (id, telefono, id_comp, id_empleado, estado) VALUES
(1, '505-1234-5678', 1, 1, 1), 
(2, '505-9876-5432', 2, 2, 1), 
(3, '505-9876-5432', 2, 2, 1);

INSERT INTO empleado_direccion (id, direccion, idEmpleado, idBarrio, estado) VALUES
(1, 'Calle 1, Boaco Centro', 1, 1, 1), 
(2, 'Avenida 5, Ciudad Jard�n', 2, 25, 1); 


-- emails

INSERT INTO email_empleado (id, email, empleado, estado) VALUES
(1, 'jurgen.quint@empresa.com', 1, 1),
(2, 'jorge.urbina@empresa.com', 2, 1);



-- insertar ususarios admins


-- unidades de medida

-- Insertar las unidades b�sicas 

INSERT INTO tipo_unidad_medida (id,nombre,estado)
VALUES
(1,'Volumen',1),
(2,'Masa',1)
-- Insertar unidades de medida comunes (volumen y masa)
INSERT INTO unidad_medida (id, unidad_medida, descripcion, siglas_um, id_tipo, estado)
VALUES
-- Unidades de Volumen
(1, 'Litros', 'Unidad de volumen est�ndar', 'L', 1, 1),          -- Litros
(2, 'Mililitros', 'Unidad peque�a de volumen', 'mL', 1, 1),      -- Mililitros
(3, 'Cent�metros C�bicos', 'Unidad de volumen equivalente a mililitro', 'cm�', 1, 1), -- cm�

-- Unidades de Masa
(4, 'Gramos', 'Unidad peque�a de masa', 'g', 2, 1),              -- Gramos
(5, 'Kilogramos', 'Unidad de masa est�ndar', 'kg', 2, 1),        -- Kilogramos
(6, 'Libras', 'Unidad de peso en el sistema imperial', 'lb', 2, 1), -- Libras
(7, 'Onzas', 'Unidad de peso peque�a', 'oz', 2, 1);              -- Onzas


-- categorias y subcategorias

-- Insertar categor�as de productos
INSERT INTO producto_categoria (id, nombre, descripcion, estado)
VALUES
(1, 'Alimentos', 'Productos comestibles de todo tipo', 1), -- Activo
(2, 'Bebidas', 'Bebidas alcoh�licas y no alcoh�licas', 1), -- Activo
(3, 'Art�culos de Higiene', 'Productos para la higiene personal y limpieza', 1); -- Activo


-- Insertar subcategor�as de productos
--> select * from producto_sub_categoria
INSERT INTO producto_sub_categoria (id, nombre, descripcion, estado, id_cat)
VALUES
-- Subcategor�as de Alimentos (id_cat = 1)
(1, 'Snacks', 'Productos para picar como papas fritas, galletas', 1, 1), -- Activo, pertenece a Alimentos
(2, 'L�cteos', 'Productos l�cteos como leche, queso, yogur', 1, 1), -- Activo, pertenece a Alimentos

-- Subcategor�as de Bebidas (id_cat = 2)
(3, 'Refrescos', 'Bebidas gaseosas y energ�ticas', 1, 2), -- Activo, pertenece a Bebidas
(4, 'Jugos', 'Jugos naturales y procesados', 1, 2), -- Activo, pertenece a Bebidas

-- Subcategor�as de Art�culos de Higiene (id_cat = 3)
(5, 'Desodorantes', 'Desodorantes y antitranspirantes', 1, 3), -- Activo, pertenece a Higiene
(6, 'Jabones', 'Jabones de barra y l�quidos', 1, 3); -- Activo, pertenece a Higiene

-- productos

-- producto marca
-- Insertar marcas de productos
INSERT INTO producto_marca (id, nombre, estado)
VALUES
(1, 'Coca-Cola', 1),     -- Activo
(2, 'Nestl�', 1),        -- Activo
(3, 'Colgate', 1);       -- Activo


-- Insertar modelos de productos relacionados con sus marcas
INSERT INTO producto_modelo (id, nombre, estado, id_marca)
VALUES
-- Modelos de Coca-Cola (id_marca = 1)
(1, 'Coca-Cola Regular 500ml', 1, 1),    -- Modelo de Coca-Cola
(2, 'Coca-Cola Zero 500ml', 1, 1),       -- Modelo de Coca-Cola

-- Modelos de Nestl� (id_marca = 2)
(3, 'Nestl� Pureza Vital 1L', 1, 2),     -- Modelo de Nestl� (Agua)
(4, 'Nestl� Milo 500g', 1, 2),           -- Modelo de Nestl� (Cereal en polvo)

-- Modelos de Colgate (id_marca = 3)
(5, 'Colgate Total 12 150g', 1, 3),      -- Modelo de Colgate (Pasta dental)
(6, 'Colgate Triple Acci�n 150g', 1, 3); -- Modelo de Colgate (Pasta dental)


-- Insertar productos en la tabla "producto"
INSERT INTO producto (id, nombre, codigoProducto, descripcion, id_Subcategoria, id_marca, id_UM, estado)
VALUES
(1, 'Gaseosa Coca-Cola 500ml', '0012345678901', 'Refresco carbonatado Coca-Cola 500ml', 1, 1, 1, 1), -- Bebida, Marca Coca-Cola, Unidad Botella, Activo
(2, 'Papas Fritas Lay', '0023456789012', 'Papas fritas sabor original 200g', 2, 2, 2, 1), -- Snack, Marca Lay's, Unidad Bolsa, Activo
(3, 'Caf� en Polvo Nescaf� 200g', '0034567890123', 'Caf� soluble Nescaf� 200g', 3, 3, 3, 1); -- Caf�, Marca Nescaf�, Unidad Tarro, Activo


-- Insertar costos de los productos en la tabla "costo_producto"
INSERT INTO costo_producto (id, descripcion, costo, id_producto, estado)
VALUES
(1, 'Costo inicial de Gaseosa Coca-Cola', 0.75, 1, 1), -- Producto 1 (Coca-Cola)
(2, 'Costo inicial de Papas Fritas Lays', 1.50, 2, 1), -- Producto 2 (Papas Fritas)
(3, 'Costo inicial de Caf� en Polvo Nescaf�', 3.00, 3, 1); -- Producto 3 (Caf�)

-- Insertar precios de los productos en la tabla "precio_producto"
INSERT INTO precio_producto (id, id_costo, gasto, margen_ganancia, precio_venta, estado, id_producto)
VALUES
(1, 1, 0.10, 1.00, 1.85, 1, 1), -- Gaseosa Coca-Cola (Costo + Gasto + Margen = Precio Venta)
(2, 2, 0.15, 1.00, 2.65, 1, 2), -- Papas Fritas Lay's
(3, 3, 0.20, 1.00, 4.50, 1, 3); -- Caf� en Polvo Nescaf�


-- Insertar historial de costos de productos
INSERT INTO historial_costo_producto (id, id_costo, motivo, fecha)
VALUES
(1, 1, 'Costo inicial del producto', GETDATE()), -- Gaseosa Coca-Cola
(2, 2, 'Costo inicial del producto', GETDATE()), -- Papas Fritas Lay's
(3, 3, 'Costo inicial del producto', GETDATE()); -- Caf� en Polvo Nescaf�


-- Insertar historial de precios de productos
INSERT INTO historial_precio_producto (id, id_precio, motivo, fecha)
VALUES
(1, 1, 'Precio de venta inicial', GETDATE()), -- Gaseosa Coca-Cola
(2, 2, 'Precio de venta inicial', GETDATE()), -- Papas Fritas Lay's
(3, 3, 'Precio de venta inicial', GETDATE()); -- Caf� en Polvo Nescaf�

select * from producto

-- proveedor

-- Insertar tipos de proveedores
INSERT INTO tipo_proveedor (id, tipo)
VALUES
(1, 'Distribuidor'),
(2, 'Mayorista');


---- Insertar identificaci�n del proveedor (RUC)
INSERT INTO proveedor_identificacion (id, identificacion, tipo, id_estado)
VALUES
(1, 'J031000012345', 1, 1); -- Identificaci�n tipo RUC (id_estado = 1 para activo)


-- Insertar datos del proveedor ficticio
INSERT INTO proveedor (id, nombre, id_identificacion, tipo, sitioWeb, id_estado)
VALUES
(1, 'Distribuidora ABC', 1, 1, 'www.distribuidoraabc.com', 1); -- Tipo distribuidor y activo

-- Insertar correo del proveedor
INSERT INTO proveedor_correo (id, email, id_proveedor, id_estado)
VALUES
(1, 'contacto@distribuidoraramses.com', 1, 1); -- Activo


-- Insertar tel�fono del proveedor
INSERT INTO telefono_proveedor (id, telefono, id_comp, id_proveedor, estado)
VALUES
(1, '505-2222-3333', 1, 1, 1); -- activo


-- -- Insertar direcci�n del proveedor
INSERT INTO proveedor_direccion (id, direccion, id_proveedor, idBarrio, estado)
VALUES
(1, 'Calle Principal, Edificio 10', 1, 1, 1); -- barrio id = 1, Activo


--

INSERT INTO producto_proveedor (id, id_producto, id_proveedor) VALUES
(1, 1, 1),  
(2, 2, 1), 
(3, 3, 1),  
(4, 1, 1);  


-- insertar modulos (perfiles)
insert into perfil(id,nombre,descripcion,id_estado)
values
(2,'Negocio','Configuracion del negocio',1),
(3,'Inventario','Accesso al inventario',1),
(4,'Caja','acceso a caja',1),
(5,'Reportes','Acceso al modulo de reportes',1),
(6,'Sistema','del sistema',1),
(7,'Facturacion','Modulo de facturacion y gestiones de venta',1);



-- carga de datos usuarios
-- Insert users into the "usuario" table
INSERT INTO usuario (id, username, contra, id_empleado,id_estado) VALUES
(1, 'jquint', 'admin', 1,1),
(2, 'admin.jorge', '12345', 2,1); 

-- insertar perfiles

INSERT INTO perfil (id, nombre, descripcion, id_estado) VALUES
(1, 'Admin', 'Administrador del sistema con acceso completo', 1); -- Active Admin Profile

INSERT INTO cargo (id, nombre, descripcion, salario, id_estado) VALUES
(1, 'Administrador General', 'Cargo administrativo con acceso completo al sistema', 5000.00, 1);

INSERT INTO historial_cargo (id, fecha, motivo, id_cargo, id_empleado) VALUES
(1, GETDATE(), 'Ascenso a Administrador General', 1, 1), 
(2, GETDATE(), 'Ascenso a Administrador General', 1, 2); 

INSERT INTO perfil_empleado (id, id_perfil, id_cargo) VALUES
(1, 1, 1), --> id, id_perfil, id_cargo (Full acceso, administrador general )
(2, 1, 2); 

INSERT INTO rol (id, nombre, descripcion, id_estado) VALUES
(1, 'Admin', 'Rol con acceso completo a todas las funcionalidades del sistema', 1); -- Active Admin Role


INSERT INTO rol_perfil_empleado (id, id_perfil_empleado, id_rol) VALUES
(1, 1, 1),
(2, 2, 1); 

INSERT INTO usuario_rol_empleado (id, id_rol_perfil_empleado, id_usuario, id_estado) VALUES
(1, 1, 1, 1), 
(2, 2, 2, 1); 

-- Insertar permisos (full  access)
-- Insert additional common permissions into the "permiso" table
INSERT INTO permiso (id, nombre, estado) VALUES
(1, 'Acceso Completo', 1),      -- Full access
(2, 'Ver', 1),                  -- View/read permission
(3, 'Crear', 1),                -- Create permission
(4, 'Editar', 1),               -- Edit permission
(5, 'Eliminar', 1),             -- Delete permission
(6, 'Gestionar Usuarios', 1),   -- Manage users
(7, 'Gestionar Roles', 1),      -- Manage roles and profiles
(8, 'Ver Reportes', 1),         -- View reports
(9, 'Exportar Datos', 1),       -- Export data
(10, 'Aprobar', 1);             -- Approve actions or requests


INSERT INTO usuario_permiso_empleado (id, id_usuario_rol_empleado, id_permiso) VALUES
(1, 1, 1), -- Admin user 1 (Jurgen)  full access
(2, 2, 1); -- Admin user 2 (Jorge)  full access


insert into cliente (id, nombre_completo)
values(1, 'Cliente Regular')

insert into rol (id,nombre,descripcion,id_estado)
values

select * from cargo

insert into cargo (id,nombre,descripcion,salario,id_estado)


INSERT INTO cargo (id, nombre, descripcion, salario, id_estado)
VALUES
(2, 'Administrador de Tienda', 'Gestiona los aspectos administrativos de la tienda, controla horarios de personal, pagos, beneficios, y mantiene la relaci�n con proveedores.', 22000, 1),
(3, 'Supervisor de Turno', 'Coordina las operaciones durante su turno, asigna tareas, supervisa al personal y asegura que se cumplan los procedimientos establecidos.', 18000, 1),
(4, 'Coordinador de Marketing', 'Dise�a y ejecuta campa�as de marketing y promociones dentro de la tienda, organiza eventos para atraer clientes y monitorea el rendimiento de las campa�as.', 17000, 1),
(5, 'Encargado de Inventarios / Auditor', 'Controla los inventarios, realiza auditor�as regulares, gestiona los pedidos a proveedores y asegura la correcta rotaci�n de productos.', 15000, 1),
(6, 'Stocker', 'Repone productos en los estantes, controla la rotaci�n de inventario y realiza inventarios regulares para asegurar la disponibilidad de productos.', 10500, 1),
(7, 'Cajero', 'Realiza cobros, procesa pagos, ofrece atenci�n al cliente y mantiene el �rea de caja organizada y limpia.', 12000, 1),
(8, 'Asociado de Ventas', 'Atiende a los clientes, ofrece productos adicionales, mantiene el orden en la tienda y asegura la reposici�n de productos.', 11000, 1),
(9, 'Personal de Seguridad', 'Vigila las instalaciones de la tienda, previene robos y mantiene la seguridad, adem�s de manejar situaciones de emergencia dentro de la tienda.', 13000, 1),
(10, 'Gerente de Tienda', 'Supervisa las operaciones generales de la tienda, gestiona el personal, controla inventarios, resuelve problemas y coordina las estrategias de negocio.', 25000, 1);




select * from tipo_pago

insert into tipo_pago(id,tipo)
values
(1,'Efectivo'),
(2,'Tarjeta'),
(3,'Otro')

INSERT INTO tipo_comprobante(id,tipo) 
VALUES 
    (1,'Factura'),
    (2,'Recibo'),
    (3,'Nota de Cr�dito'),
    (4,'Nota de D�bito'),
    (5,'Boleta de Venta'),
    (6,'Recibo Proforma'),
    (7,'Comprobante de Pago'),
    (8,'Ticket de Venta'),
    (9,'Factura Proforma'),
    (10,'Factura Electr�nica');


INSERT INTO rol (id, nombre, descripcion, id_estado)
VALUES 
(2, 'Administrador de Tienda', 'Gesti�n operativa diaria de la tienda y monitoreo de ventas.', 1),
(3, 'Supervisor de Turno', 'Coordinaci�n de actividades durante el turno y resoluci�n de problemas inmediatos.', 1),
(4, 'Coordinador de Marketing', 'Desarrollo y ejecuci�n de campa�as de marketing, an�lisis de tendencias y promoci�n de productos.', 1),
(5, 'Encargado de Inventarios / Auditor', 'Gesti�n y control de inventarios, realizaci�n de auditor�as y reposici�n de productos.', 1),
(6, 'Stocker', 'Reposici�n de productos en estantes, organizaci�n del almac�n y verificaci�n de fechas de caducidad.', 1),
(7, 'Cajero', 'Procesamiento de pagos, manejo de efectivo y atenci�n al cliente en el �rea de cajas.', 1),
(8, 'Asociado de Ventas', 'Asistencia a clientes, promoci�n de productos y resoluci�n de consultas.', 1),
(9, 'Personal de Seguridad', 'Monitoreo de seguridad, prevenci�n de robos y supervisi�n de c�maras.', 1),
(10, 'Gerente de Tienda', 'Liderazgo del equipo, supervisi�n de metas y soluci�n de problemas mayores.', 1),
(11, 'Administrador General', 'Gesti�n global del negocio, toma de decisiones estrat�gicas y supervisi�n de equipos.', 1);

 -- para el cargo de admin general
INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES 
(1,1),
(2,1),
(3,1),
(4,1),
(5,1),
(6,1),
(7,1)

-- para el cargo admin tienda

INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES 
(2,2),
(3,2),
(5,2),
(7,2)

/*
1	Administrador General
2	Administrador de Tienda
3	Supervisor de Turno
4	Coordinador de Marketing
5	Encargado de Inventarios / Auditor
6	Stocker
7	Cajero
8	Asociado de Ventas
9	Personal de Seguridad
10	Gerente de Tienda
*/
-- para sup de turno
INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES 
(2,3),
(3,3),
(5,3),
(7,3)

-- para el mae de marketing 
INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES 
(5,4)

-- encargado de inventario
INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES 
(3,5),
(5,5)

-- 6	Stocker

INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES
(3,6)

/*
7	Cajero
8	Asociado de Ventas
9	Personal de Seguridad
10	Gerente de Tienda
*/
INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES
(4,7),
(7,7)

INSERT INTO perfil_cargo(id_perfil,id_cargo)
VALUES
(7,8)
