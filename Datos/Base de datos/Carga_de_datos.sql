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


-- compañia de telefonos

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
(5, 'Estelí'),
(6, 'Granada'),
(7, 'Jinotega'),
(8, 'León'),
(9, 'Madriz'),
(10, 'Managua'),
(11, 'Masaya'),
(12, 'Matagalpa'),
(13, 'Nueva Segovia'),
(14, 'Rivas'),
(15, 'Río San Juan'),
(16, 'Región Autónoma de la Costa Caribe Norte'),
(17, 'Región Autónoma de la Costa Caribe Sur');


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
(12, 'Santo Tomás', 4),

-- Estelí
(13, 'Estelí', 5),
(14, 'Condega', 5),
(15, 'La Trinidad', 5),

-- Granada 
(16, 'Granada', 6),
(17, 'Nandaime', 6),
(18, 'Diriá', 6),

-- Jinotega
(19, 'Jinotega', 7),
(20, 'San Rafael del Norte', 7),
(21, 'San Sebastián de Yalí', 7),

-- León 
(22, 'León', 8),
(23, 'El Sauce', 8),
(24, 'La Paz Centro', 8),

-- Madriz 
(25, 'Somoto', 9),
(26, 'Palacagüina', 9),
(27, 'San Lucas', 9),

-- Managua 
(28, 'Managua', 10),
(29, 'Ciudad Sandino', 10),
(30, 'Ticuantepe', 10),

-- Masaya 
(31, 'Masaya', 11),
(32, 'Nindirí', 11),
(33, 'Catarina', 11),

-- Matagalpa 
(34, 'Matagalpa', 12),
(35, 'San Ramón', 12),
(36, 'Sébaco', 12),

-- Nueva Segovia 
(37, 'Ocotal', 13),
(38, 'Jalapa', 13),
(39, 'Santa María', 13),

-- Rivas 
(40, 'Rivas', 14),
(41, 'San Juan del Sur', 14),
(42, 'Tola', 14),

-- Río San Juan 
(43, 'San Carlos', 15),
(44, 'El Castillo', 15),
(45, 'San Miguelito', 15),

-- Región Autónoma de la Costa Caribe Norte (ID: 16)
(46, 'Bilwi', 16),
(47, 'Waspam', 16),
(48, 'Prinzapolka', 16),

-- Región Autónoma de la Costa Caribe Sur (ID: 17)
(49, 'Bluefields', 17),
(50, 'Laguna de Perlas', 17),
(51, 'Kukra Hill', 17);



-- municipio

INSERT INTO barrio (idB, nombreB, idMun) VALUES
-- Barrios in Boaco 
(1, 'El Calvario', 1),
(2, 'La Providencia', 1),
(3, 'San José', 1),

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
(12, 'San Martín', 10),

-- Barrios in Estelí 
(13, 'Oscar Gámez', 13),
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

-- Barrios in León 
(22, 'Laborío', 22),
(23, 'Guadalupe', 22),
(24, 'San Felipe', 22),

-- Barrios in Managua 
(25, 'Ciudad Jardín', 28),
(26, 'Monseñor Lezcano', 28),
(27, 'Reparto Schick', 28),

-- Barrios in Masaya 
(28, 'San Jerónimo', 31),
(29, 'El Calvario', 31),
(30, 'Camilo Ortega', 31),

-- Barrios in Matagalpa 
(31, 'Guadalupe', 34),
(32, 'Sabadell', 34),
(33, 'San Francisco', 34),

-- Barrios in Ocotal 
(34, 'Sandino', 37),
(35, 'Teodoro López', 37),
(36, 'Pancasán', 37),

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
(2, 'Avenida 5, Ciudad Jardín', 2, 25, 1); 


-- emails

INSERT INTO email_empleado (id, email, empleado, estado) VALUES
(1, 'jurgen.quint@empresa.com', 1, 1),
(2, 'jorge.urbina@empresa.com', 2, 1);



-- insertar ususarios admins


-- unidades de medida

-- Insertar las unidades básicas 

INSERT INTO tipo_unidad_medida (id,nombre,estado)
VALUES
(1,'Volumen',1),
(2,'Masa',1)
-- Insertar unidades de medida comunes (volumen y masa)
INSERT INTO unidad_medida (id, unidad_medida, descripcion, siglas_um, id_tipo, estado)
VALUES
-- Unidades de Volumen
(1, 'Litros', 'Unidad de volumen estándar', 'L', 1, 1),          -- Litros
(2, 'Mililitros', 'Unidad pequeña de volumen', 'mL', 1, 1),      -- Mililitros
(3, 'Centímetros Cúbicos', 'Unidad de volumen equivalente a mililitro', 'cm³', 1, 1), -- cm³

-- Unidades de Masa
(4, 'Gramos', 'Unidad pequeña de masa', 'g', 2, 1),              -- Gramos
(5, 'Kilogramos', 'Unidad de masa estándar', 'kg', 2, 1),        -- Kilogramos
(6, 'Libras', 'Unidad de peso en el sistema imperial', 'lb', 2, 1), -- Libras
(7, 'Onzas', 'Unidad de peso pequeña', 'oz', 2, 1);              -- Onzas


-- categorias y subcategorias

-- Insertar categorías de productos
INSERT INTO producto_categoria (id, nombre, descripcion, estado)
VALUES
(1, 'Alimentos', 'Productos comestibles de todo tipo', 1), -- Activo
(2, 'Bebidas', 'Bebidas alcohólicas y no alcohólicas', 1), -- Activo
(3, 'Artículos de Higiene', 'Productos para la higiene personal y limpieza', 1); -- Activo


-- Insertar subcategorías de productos
--> select * from producto_sub_categoria
INSERT INTO producto_sub_categoria (id, nombre, descripcion, estado, id_cat)
VALUES
-- Subcategorías de Alimentos (id_cat = 1)
(1, 'Snacks', 'Productos para picar como papas fritas, galletas', 1, 1), -- Activo, pertenece a Alimentos
(2, 'Lácteos', 'Productos lácteos como leche, queso, yogur', 1, 1), -- Activo, pertenece a Alimentos

-- Subcategorías de Bebidas (id_cat = 2)
(3, 'Refrescos', 'Bebidas gaseosas y energéticas', 1, 2), -- Activo, pertenece a Bebidas
(4, 'Jugos', 'Jugos naturales y procesados', 1, 2), -- Activo, pertenece a Bebidas

-- Subcategorías de Artículos de Higiene (id_cat = 3)
(5, 'Desodorantes', 'Desodorantes y antitranspirantes', 1, 3), -- Activo, pertenece a Higiene
(6, 'Jabones', 'Jabones de barra y líquidos', 1, 3); -- Activo, pertenece a Higiene

-- productos

-- producto marca
-- Insertar marcas de productos
INSERT INTO producto_marca (id, nombre, estado)
VALUES
(1, 'Coca-Cola', 1),     -- Activo
(2, 'Nestlé', 1),        -- Activo
(3, 'Colgate', 1);       -- Activo


-- Insertar modelos de productos relacionados con sus marcas
INSERT INTO producto_modelo (id, nombre, estado, id_marca)
VALUES
-- Modelos de Coca-Cola (id_marca = 1)
(1, 'Coca-Cola Regular 500ml', 1, 1),    -- Modelo de Coca-Cola
(2, 'Coca-Cola Zero 500ml', 1, 1),       -- Modelo de Coca-Cola

-- Modelos de Nestlé (id_marca = 2)
(3, 'Nestlé Pureza Vital 1L', 1, 2),     -- Modelo de Nestlé (Agua)
(4, 'Nestlé Milo 500g', 1, 2),           -- Modelo de Nestlé (Cereal en polvo)

-- Modelos de Colgate (id_marca = 3)
(5, 'Colgate Total 12 150g', 1, 3),      -- Modelo de Colgate (Pasta dental)
(6, 'Colgate Triple Acción 150g', 1, 3); -- Modelo de Colgate (Pasta dental)


-- Insertar productos en la tabla "producto"
INSERT INTO producto (id, nombre, codigoProducto, descripcion, id_Subcategoria, id_marca, id_UM, estado)
VALUES
(1, 'Gaseosa Coca-Cola 500ml', '0012345678901', 'Refresco carbonatado Coca-Cola 500ml', 1, 1, 1, 1), -- Bebida, Marca Coca-Cola, Unidad Botella, Activo
(2, 'Papas Fritas Lay', '0023456789012', 'Papas fritas sabor original 200g', 2, 2, 2, 1), -- Snack, Marca Lay's, Unidad Bolsa, Activo
(3, 'Café en Polvo Nescafé 200g', '0034567890123', 'Café soluble Nescafé 200g', 3, 3, 3, 1); -- Café, Marca Nescafé, Unidad Tarro, Activo


-- Insertar costos de los productos en la tabla "costo_producto"
INSERT INTO costo_producto (id, descripcion, costo, id_producto, estado)
VALUES
(1, 'Costo inicial de Gaseosa Coca-Cola', 0.75, 1, 1), -- Producto 1 (Coca-Cola)
(2, 'Costo inicial de Papas Fritas Lays', 1.50, 2, 1), -- Producto 2 (Papas Fritas)
(3, 'Costo inicial de Café en Polvo Nescafé', 3.00, 3, 1); -- Producto 3 (Café)

-- Insertar precios de los productos en la tabla "precio_producto"
INSERT INTO precio_producto (id, id_costo, gasto, margen_ganancia, precio_venta, estado, id_producto)
VALUES
(1, 1, 0.10, 1.00, 1.85, 1, 1), -- Gaseosa Coca-Cola (Costo + Gasto + Margen = Precio Venta)
(2, 2, 0.15, 1.00, 2.65, 1, 2), -- Papas Fritas Lay's
(3, 3, 0.20, 1.00, 4.50, 1, 3); -- Café en Polvo Nescafé


-- Insertar historial de costos de productos
INSERT INTO historial_costo_producto (id, id_costo, motivo, fecha)
VALUES
(1, 1, 'Costo inicial del producto', GETDATE()), -- Gaseosa Coca-Cola
(2, 2, 'Costo inicial del producto', GETDATE()), -- Papas Fritas Lay's
(3, 3, 'Costo inicial del producto', GETDATE()); -- Café en Polvo Nescafé


-- Insertar historial de precios de productos
INSERT INTO historial_precio_producto (id, id_precio, motivo, fecha)
VALUES
(1, 1, 'Precio de venta inicial', GETDATE()), -- Gaseosa Coca-Cola
(2, 2, 'Precio de venta inicial', GETDATE()), -- Papas Fritas Lay's
(3, 3, 'Precio de venta inicial', GETDATE()); -- Café en Polvo Nescafé

select * from producto

-- proveedor

-- Insertar tipos de proveedores
INSERT INTO tipo_proveedor (id, tipo)
VALUES
(1, 'Distribuidor'),
(2, 'Mayorista');


---- Insertar identificación del proveedor (RUC)
INSERT INTO proveedor_identificacion (id, identificacion, tipo, id_estado)
VALUES
(1, 'J031000012345', 1, 1); -- Identificación tipo RUC (id_estado = 1 para activo)


-- Insertar datos del proveedor ficticio
INSERT INTO proveedor (id, nombre, id_identificacion, tipo, sitioWeb, id_estado)
VALUES
(1, 'Distribuidora ABC', 1, 1, 'www.distribuidoraabc.com', 1); -- Tipo distribuidor y activo

-- Insertar correo del proveedor
INSERT INTO proveedor_correo (id, email, id_proveedor, id_estado)
VALUES
(1, 'contacto@distribuidoraramses.com', 1, 1); -- Activo


-- Insertar teléfono del proveedor
INSERT INTO telefono_proveedor (id, telefono, id_comp, id_proveedor, estado)
VALUES
(1, '505-2222-3333', 1, 1, 1); -- activo


-- -- Insertar dirección del proveedor
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
(2, 'Administrador de Tienda', 'Gestiona los aspectos administrativos de la tienda, controla horarios de personal, pagos, beneficios, y mantiene la relación con proveedores.', 22000, 1),
(3, 'Supervisor de Turno', 'Coordina las operaciones durante su turno, asigna tareas, supervisa al personal y asegura que se cumplan los procedimientos establecidos.', 18000, 1),
(4, 'Coordinador de Marketing', 'Diseña y ejecuta campañas de marketing y promociones dentro de la tienda, organiza eventos para atraer clientes y monitorea el rendimiento de las campañas.', 17000, 1),
(5, 'Encargado de Inventarios / Auditor', 'Controla los inventarios, realiza auditorías regulares, gestiona los pedidos a proveedores y asegura la correcta rotación de productos.', 15000, 1),
(6, 'Stocker', 'Repone productos en los estantes, controla la rotación de inventario y realiza inventarios regulares para asegurar la disponibilidad de productos.', 10500, 1),
(7, 'Cajero', 'Realiza cobros, procesa pagos, ofrece atención al cliente y mantiene el área de caja organizada y limpia.', 12000, 1),
(8, 'Asociado de Ventas', 'Atiende a los clientes, ofrece productos adicionales, mantiene el orden en la tienda y asegura la reposición de productos.', 11000, 1),
(9, 'Personal de Seguridad', 'Vigila las instalaciones de la tienda, previene robos y mantiene la seguridad, además de manejar situaciones de emergencia dentro de la tienda.', 13000, 1),
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
    (3,'Nota de Crédito'),
    (4,'Nota de Débito'),
    (5,'Boleta de Venta'),
    (6,'Recibo Proforma'),
    (7,'Comprobante de Pago'),
    (8,'Ticket de Venta'),
    (9,'Factura Proforma'),
    (10,'Factura Electrónica');


INSERT INTO rol (id, nombre, descripcion, id_estado)
VALUES 
(2, 'Administrador de Tienda', 'Gestión operativa diaria de la tienda y monitoreo de ventas.', 1),
(3, 'Supervisor de Turno', 'Coordinación de actividades durante el turno y resolución de problemas inmediatos.', 1),
(4, 'Coordinador de Marketing', 'Desarrollo y ejecución de campañas de marketing, análisis de tendencias y promoción de productos.', 1),
(5, 'Encargado de Inventarios / Auditor', 'Gestión y control de inventarios, realización de auditorías y reposición de productos.', 1),
(6, 'Stocker', 'Reposición de productos en estantes, organización del almacén y verificación de fechas de caducidad.', 1),
(7, 'Cajero', 'Procesamiento de pagos, manejo de efectivo y atención al cliente en el área de cajas.', 1),
(8, 'Asociado de Ventas', 'Asistencia a clientes, promoción de productos y resolución de consultas.', 1),
(9, 'Personal de Seguridad', 'Monitoreo de seguridad, prevención de robos y supervisión de cámaras.', 1),
(10, 'Gerente de Tienda', 'Liderazgo del equipo, supervisión de metas y solución de problemas mayores.', 1),
(11, 'Administrador General', 'Gestión global del negocio, toma de decisiones estratégicas y supervisión de equipos.', 1);

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
