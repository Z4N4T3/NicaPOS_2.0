-- este es el script ordendado :
-- 1. Tablas básicas sin dependencias

--create database DB_ScriptOrdenado_nicaPOS
--use DB_ScriptOrdenado_nicaPOS
create table estado(
    id int PRIMARY KEY,
    nombre varchar(100) 
);

create table departamento(
	idDep int primary key,
	nombreDep nvarchar(50)
);

create table municipio(
	idMun int primary key,
	nombreMun nvarchar(50),
	idDep int foreign key references departamento(idDep)
);

create table barrio(
	idB int primary key,
	nombreB nvarchar(50),
	idMun int foreign key references municipio(idMun)
);

create table compania_telefono(
	id int primary key,
	nombre varchar(100),
	siglas char(2),
	estado int foreign key references estado(id) not null
);

create table tienda(
	id int primary key,
	nombre varchar(100) not null,
    RUC varchar (100) not null,
    telefono varchar(20) not null,
	razon_social varchar(100) not null
);

create table sucursal (
	id int primary key,
	nombre varchar(100),
	estado int foreign key references estado(id) not null
);

create table tipo_identificacion(
	id int primary key,
	tipo varchar(50) not null
);

create table tipo_proveedor(
	id int primary key,
	tipo varchar(100) not null
);

create table producto_categoria(
    id int PRIMARY KEY,
    nombre varchar(100) not null,
    descripcion varchar(500),
	estado int foreign key references estado(id) not null
);

create table producto_marca(
	id int primary key,
	nombre varchar(100) not null,
	estado int foreign key references estado(id) not null
);

create table tipo_unidad_medida(
	id int primary key,
	nombre varchar(100) not null,
	estado int foreign key references estado(id) not null
);

create table tipo_servicio(
	id int primary key,
	nombre varchar(50) not null,
	siglas varchar(10)
);

create table tipo_movimiento_inv(
	id int primary key,
	mov varchar(50),
	siglas varchar(10)
);

create table tipo_promo(
	id int primary key,
	tipo varchar(100)
);

create table cliente(
	id int primary key,
	nombre_completo varchar (100),
	fecha_registro datetime default getdate() not null
);



create table tipo_pago(
    id int primary key,
    tipo varchar(20)
);

create table tipo_comprobante(
	id int primary key,
	tipo varchar(50)
);

-- 2. Tablas con claves foráneas a las tablas básicas

create table direccion_tienda(
	id int primary key,
	direccion varchar(250) not null,
	id_barrio int foreign key references barrio(idB) not null,
	id_tienda int foreign key references tienda(id) not null,
	estado int foreign key references estado(id) not null
);

create table sucurusal_direccion (
	id int primary key,
	direccion varchar(250) not null,
	id_barrio int foreign key references barrio(idB) not null,
	estado int foreign key references estado(id) not null,
	id_sucursal int foreign key references sucursal(id) not null
);

create table tienda_telefono(
	id int primary key,
	telefono varchar(15) default 'No tiene',
	id_comp int foreign key references compania_telefono(id),
	id_tienda int foreign key references tienda(id),
	estado int foreign key references estado(id) not null
);

create table sucursal_telefono(
	id int primary key,
	telefono varchar(15) default 'No tiene',
	id_comp int foreign key references compania_telefono(id),
	id_sucursal int foreign key references sucursal(id),
	estado int foreign key references estado(id) not null
);

create table empleado(
    id int PRIMARY KEY,
    nombre1 varchar(100) not null,
    nombre2 varchar(100),
    apellido1 varchar(100) not null,
    apellido2 varchar(100),
    genero bit,
    fecha_nacimiento date,
    identificacion varchar(100),
    id_estado int FOREIGN KEY references estado(id) not null,
	id_sucursal int foreign key references sucursal(id) not null
);
/*

ALTER TABLE cliente
    ADD id INT IDENTITY(1,1) PRIMARY KEY;
*/


create table empleado_telefono(
	id int primary key,
	telefono varchar(15) default 'No tiene',
	id_comp int foreign key references compania_telefono(id),
	id_empleado int foreign key references empleado(id),
	estado int foreign key references estado(id) not null
);

create table empleado_direccion(
	id int primary key,
	direccion nvarchar(250) not null,
	idEmpleado int foreign key references empleado(id),
	idBarrio int foreign key references barrio(idB),
	estado int FOREIGN KEY references estado(id) not null
);

create table email_empleado(
	id int primary key,
	email varchar(100) not null,
	empleado int foreign key references empleado(id),
	estado int FOREIGN KEY references estado(id) not null,
	CONSTRAINT ck_email_empleado CHECK(email LIKE('__%@___%.___%'))
);

create table usuario(
    id INT PRIMARY KEY IDENTITY(1,1),
    username VARCHAR(25) NOT NULL,
    contra VARCHAR(256) NOT NULL,
    id_empleado INT NOT NULL,
	id_estado INT NOT NULL,
	fecha_creacion datetime default getdate(),
	FOREIGN KEY (id_estado) REFERENCES estado(id),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id)
);

create table perfil(
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
    id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES estado(id)
);

-- se agrego identity psd: que dolor de webos irlo agregando manualmente
create table cargo(
    id int PRIMARY KEY IDENTITY(1,1),
    nombre varchar (100) not null,
    descripcion varchar(500),
    salario decimal(9,2),
    id_estado int FOREIGN KEY references estado(id) not null
);

create table historial_cargo(
    id int PRIMARY KEY,
    fecha date not null,
    motivo varchar(500),
    id_cargo int FOREIGN KEY references cargo(id) not null,
    id_empleado int FOREIGN KEY references empleado(id) not null,
	id_estado int FOREIGN KEY references estado(id) not null
);

 
create table perfil_empleado(
    id INT PRIMARY KEY,
    id_perfil INT NOT NULL,
    id_cargo INT NOT NULL,
    FOREIGN KEY (id_perfil) REFERENCES perfil(id),
    FOREIGN KEY (id_cargo) REFERENCES historial_cargo(id)
);
create table perfil_cargo(
	id int primary key identity(1,1),
	id_perfil int foreign key references perfil(id) not null,
	id_cargo int foreign key references cargo(id) not null
)

create table rol(
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
	id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES estado(id)
);

create table rol_perfil_empleado(
    id INT PRIMARY KEY,
    id_perfil_empleado INT NOT NULL,
    id_rol INT NOT NULL,
    FOREIGN KEY (id_perfil_empleado) REFERENCES perfil_empleado(id),
    FOREIGN KEY (id_rol) REFERENCES rol(id)
);

create table usuario_rol_empleado(
	id int primary key,
	id_rol_perfil_empleado int,
	id_usuario int,
	id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES estado(id),
	foreign key (id_rol_perfil_empleado) references rol_perfil_empleado(id),
	foreign key (id_usuario) references usuario(id)
);

create table permiso(
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
	estado bit default 1 not null
);

create table usuario_permiso_empleado(
	id int primary key,
	id_usuario_rol_empleado int not null,
	id_permiso int not null,
	foreign key (id_permiso) references permiso(id),
	foreign key (id_usuario_rol_empleado) references usuario_rol_empleado(id)
);

create table proveedor_identificacion(
	id int primary key,
	identificacion varchar(100) not null,
	tipo int foreign key references tipo_identificacion(id) not null,
    id_estado int FOREIGN KEY references estado(id) not null
);
-- se agrego identity psd: que dolor de webos irlo agregando manualmente
create table proveedor (
	id int PRIMARY KEY IDENTITY(1,1),
    nombre varchar (100),
	id_identificacion int foreign key references proveedor_identificacion(id) not null,
	tipo int foreign key references tipo_proveedor(id) not null,
    sitioWeb varchar(100),
    id_estado int FOREIGN KEY references estado(id) not null
);

create table proveedor_correo(
	id int primary key,
	email varchar(100) CHECK(email LIKE('__%@___%.___%')),
	id_proveedor int FOREIGN KEY references proveedor(id),
	id_estado int FOREIGN KEY references estado(id) not null
);

create table telefono_proveedor(
	id int primary key,
	telefono varchar(15) default 'No tiene',
	id_comp int foreign key references compania_telefono(id),
	id_proveedor int foreign key references proveedor(id) not null,
    estado int FOREIGN KEY references estado(id) not null
);

create table proveedor_direccion(
	id int primary key,
	direccion nvarchar(250) not null,
	id_proveedor int foreign key references proveedor(id), 
	idBarrio int foreign key references barrio(idB),
	estado int FOREIGN KEY references estado(id) not null
);

create table producto_sub_categoria(
    id int PRIMARY KEY,
    nombre varchar(100) not null,
    descripcion varchar(500),
	estado int foreign key references estado(id) not null,
	id_cat int foreign key references producto_categoria(id) not null
);

create table producto_modelo(
	id int primary key,
	nombre varchar(100) not null,
	estado int foreign key references estado(id) not null,
	id_marca int foreign key references producto_marca(id) not null
);

create table unidad_medida(
	id int primary key,
	unidad_medida varchar(50) not null,
	descripcion varchar(100) not null,
	siglas_um varchar(10),
	id_tipo int foreign key references tipo_unidad_medida(id) not null,
	estado int foreign key references estado(id) not null
);

create table servicio(
	id int PRIMARY KEY,
    nombre varchar(100) not null,
	descripcion varchar(500),
   	id_tipo int foreign key references tipo_servicio(id)
);

create table precio_servicio(
 	id int primary key,
	margen_ganancia decimal(9,2) not null,
	precio_venta decimal(9,2) not null, 
	estado int foreign key references estado(id) not null,
	id_servicio int foreign key references servicio(id) not null
);

create table historial_precio_servicio(
    id int PRIMARY KEY,
    id_precio int foreign key references precio_servicio(id) not null,
    motivo varchar(200) not null,
    fecha date not null
);

create table producto(
	id int PRIMARY KEY,
    nombre varchar(100) not null,
	codigoProducto varchar(40) not null unique,
    descripcion varchar(500),
	id_Subcategoria int foreign key references producto_sub_categoria(id) not null, 
	id_marca int foreign key references producto_marca(id) not null,
	id_UM int foreign key references unidad_medida(id),
	estado int foreign key references estado(id) not null
);

create table costo_producto(
    id int PRIMARY KEY,
    descripcion varchar(100),
    costo decimal(9,2) not null,
	id_producto int foreign key references producto(id) not null,
	estado int foreign key references estado(id) not null
);

create table historial_costo_producto(
    id int PRIMARY KEY,
    id_costo int foreign key references costo_producto(id) not null,
    motivo varchar(200),
    fecha date not null
);

create table precio_producto(
 	id int primary key,
	id_costo int foreign key references costo_producto(id) not null,
	gasto decimal(9,2) not null,
	margen_ganancia decimal(9,2) not null,
	precio_venta decimal(9,2) not null, 
	estado int foreign key references estado(id) not null,
	id_producto int foreign key references producto(id) not null
);

/*
create table detalle_producto(
 	id int primary key,
	id 

)
*/

create table historial_precio_producto(
    id int PRIMARY KEY,
    id_precio int foreign key references precio_producto(id) not null,
    motivo varchar(200) not null,
    fecha date not null
);

create table producto_proveedor(
	id int PRIMARY KEY,
	id_producto int foreign key references producto(id) not null,
	id_proveedor int foreign key references proveedor(id) not null
);

create table inventario(
	id int primary key,
	id_producto int foreign key references producto(id) not null,
	existencia_actual int not null,
	disponibilidad int not null,
	stock_min int,
	stock_max int,
	id_sucursal int foreign key references sucursal(id) not null
);

create table movimiento_inventario(
	id int primary key,
	fecha datetime default getdate() not null,
	cantidad int not null,
	saldo_Mov int not null,
	numerdo_doc int not null,
	id_mov int foreign key references tipo_movimiento_inv(id) not null,
	id_empleado int foreign key references empleado(id) not null,
	id_sucursal int foreign key references sucursal(id) not null,
	id_producto int foreign key references producto(id) not null
);

create table solicitud_compra(
	id int PRIMARY KEY,
	fecha datetime default getdate() not null,
	id_empleado int foreign key references empleado(id),
	tipo_solicitud varchar(50),
	estado int foreign key references estado(id) not null,
	subtotal decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
	Total decimal(9,2) not null,
	id_proveedor int foreign key references proveedor(id) not null,
	id_sucursal int foreign key references sucursal(id) not null
);

create table detalle_solicitud(
    id int PRIMARY KEY,
    cantidad int not null,
    precio_unitario decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
    total decimal(9,2) not null,
    id_producto int foreign key references producto(id),
    id_solicitud int foreign key references solicitud_compra(id)
);

create table pedido(
	id int PRIMARY KEY,
	fecha datetime default getdate() not null,
    subtotal decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
	Total decimal(9,2) not null,
	id_solicitud int foreign key references solicitud_compra(id),
    id_empleado int foreign key references empleado(id),
	estado int foreign key references estado(id) not null,
	id_proveedor int foreign key references proveedor(id) not null,
	id_sucursal int foreign key references sucursal(id) not null
);

create table detalle_pedido(
    id int PRIMARY KEY,
    cantidad int not null,
    precio_unitario decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
    total decimal(9,2) not null,
    id_producto int foreign key references producto(id),
    id_pedido int foreign key references pedido(id)
);

create table orden_compra_producto(
    id int PRIMARY KEY,
	fecha datetime default getdate() not null,
	estado int foreign key references estado(id) not null,
	tipo_orden_compra varchar(50),
    id_proveedor int foreign key references proveedor(id) not null,
    id_pedido int foreign key references pedido(id),
	id_empleado int foreign key references empleado(id),
	subtotal decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
	Total decimal(9,2) not null,
	id_sucursal int foreign key references sucursal(id) not null
);

create table detalle_orden_compra(
    id int PRIMARY KEY,
    cantidad int not null,
    precio_unitario decimal(9,2) not null,
    impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
	Total decimal(9,2) not null,
    id_producto int foreign key references producto(id),
    id_orden_compra int foreign key references orden_compra_producto(id)
);

create table compra_producto(
    id int PRIMARY KEY,
    fecha datetime default getdate() not null,
   	tipo_compra varchar(100),
	subtotal decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
	Total decimal(9,2) not null,
	estado int foreign key references estado(id) not null,
    id_orden_compra int foreign key references orden_compra_producto(id),
	id_empleado int foreign key references empleado(id),
	id_sucursal int foreign key references sucursal(id) not null,
    id_proveedor int foreign key references proveedor(id) not null
);

create table detalle_compra(
    id int PRIMARY KEY,
    cantidad int not null,
    precio_unitario decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
    total decimal(9,2) not null,
    id_producto int foreign key references producto(id),
	id_compra int foreign key references compra_producto(id)
);

create table promocion (
	id int primary key,
	nombre varchar(100),
	fecha_inicio datetime,
	fecha_fin datetime,
    id_estado bit default 0 not null,
	id_tipo int foreign key references tipo_promo(id) not null,
	valor_prom float,
	codigo_descuento varchar(10)
);

create table venta_producto(
	id int primary key,
	fecha datetime default getdate() not null,
	num_comprobante varchar(100) not null,
	subtotal decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
	Total decimal(9,2) not null,
	tipo_comprobante int foreign key references tipo_comprobante(id) not null,
	estado int foreign key references estado(id) not null,	
	id_empleado int foreign key references empleado(id) not null,
	id_sucursal int foreign key references sucursal(id) not null,
	id_cliente int foreign key references cliente(id),
	id_tipo_pago int foreign key references tipo_pago(id)
);
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
create table detalle_venta_producto(
    id int PRIMARY KEY,
	cantidad int not null,
    precio_unitario decimal(9,2) not null,
	descuento decimal(9,2) not null,
	impuesto decimal(9,2) not null,
    total decimal(9,2) not null,
    id_venta int foreign key references venta_producto(id),
	id_producto int foreign key references producto(id),
	id_promo int foreign key references promocion(id)
);

create table venta_servicio(
	id int primary key,
	fecha datetime default getdate() not null,
	num_comprobante varchar(100) not null,
	subtotal decimal(9,2) not null,
	impuesto decimal(9,2) not null,
	descuento decimal(9,2) not null,
	Total decimal(9,2) not null,
	tipo_comprobante int foreign key references tipo_comprobante(id) not null,
	estado int foreign key references estado(id) not null,	
	id_empleado int foreign key references empleado(id)not null,
	id_sucursal int foreign key references sucursal(id) not null,
	id_cliente int foreign key references cliente(id),
	id_tipo_pago int foreign key references tipo_pago(id)
);

create table detalle_venta_servicio(
	id int PRIMARY KEY,
	cantidad int not null,
    precio_unitario decimal(9,2) not null,
	descuento decimal(9,2) not null,
	impuesto decimal(9,2) not null,
    total decimal(9,2) not null,
    id_venta int foreign key references venta_servicio(id),
	id_servicio int foreign key references servicio(id),
	id_promo int foreign key references promocion(id)
);

use DB_NicaPOS

create table caja(
	
	id_caja int primary key identity(1,1),
	nombre varchar(15),
	estado_caja int foreign key references estado(id), -- 1 abierta 2 cerrada 
	fecha_creacion datetime default getdate() not null
)

create table apertura_caja(
	id int primary key identity(1,1),
	id_caja int foreign key references caja(id_caja) not null,
	id_empleado int foreign key references Empleado(id) not null,
	fecha_apertura datetime default getdate() not null,
	monto_inicial decimal(9,2) not null,
	estado int foreign key references estado(id) not null, -- Solicitado, autorizado, denegado 
	fecha_cierre datetime default getdate()

);
create table tipo_movimiento_caja(
	id int primary key identity(1,1),
	nombre varchar(50) not null, -- pago en efectivo, Entrada de efectivo, retiro efectivo
	descripcion varchar(100),
	estado int foreign key references estado(id) not null, -- Solicitado, autorizado, denegado 

);


INSERT INTO tipo_movimiento_caja (nombre, descripcion, estado)
VALUES
('Pago en efectivo', 'Movimientos por pagos realizados en efectivo', 1), 
('Entrada de efectivo', 'Ingresos en efectivo a la caja', 1),          
('Retiro efectivo', 'Retiros en efectivo desde la caja', 1);           

create table movimiento_caja(
	id_mov int primary key identity(1,1),
	id_apertura int foreign key references apertura_caja(id) not null,
	tipo_movimeinto int foreign key references tipo_movimiento_caja(id) not null,
	concepto varchar(50) not null,
	monto decimal(9,2) not null,

	fecha_mov datetime default getdate() not null,
	id_empleado int foreign key references Empleado(id) not null,
);