-- Manejo de usuarios roles, permisos, perfiles  
use DB_NicaPOS;
go

CREATE TABLE usuario(
    id INT PRIMARY KEY,
    username VARCHAR(25) NOT NULL,
    contra VARCHAR(256) NOT NULL,
    id_empleado INT NOT NULL,
	id_estado INT NOT NULL,
	fecha_creacion datetime default getdate(),
	FOREIGN KEY (id_estado) REFERENCES estado(id),
    FOREIGN KEY (id_empleado) REFERENCES empleado(id)
);


CREATE TABLE perfil(
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
    id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES estado(id)
);

create table cargo(

    id int PRIMARY KEY,
    nombre varchar (100) not null,
    descripcion varchar(500),
    salario decimal(9,2),
    id_estado int FOREIGN KEy (id_estado) references estado(id) not null -- tomada de tabla estado

);

create table historial_cargo(
    id int PRIMARY KEY,
    fecha date not null,
    motivo varchar(500),
    id_cargo int FOREIGN KEY (id_cargo) references cargo(id) not null,
    id_empleado int FOREIGN KEY (id_empleado) references empleado(id) not null
);

CREATE TABLE perfil_empleado(
    id INT PRIMARY KEY,
    id_perfil INT NOT NULL,
    id_cargo INT NOT NULL,
    FOREIGN KEY (id_perfil) REFERENCES perfil(id),
    FOREIGN KEY (id_cargo) REFERENCES historial_cargo(id)
);


CREATE TABLE rol(
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(500),
	id_estado INT NOT NULL,
    FOREIGN KEY (id_estado) REFERENCES estado(id)
);

CREATE TABLE rol_perfil_empleado(
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


CREATE TABLE permiso(
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
	estado bit default 1 not null,
);

create table usuario_permiso_empleado(
	id int primary key,
	id_usuario_rol_empleado int not null,
	id_permiso int not null,
	foreign key (id_permiso) references permiso(id),
	foreign key (id_usuario_rol_empleado) references usuario_rol_empleado(id),


);


-- inserccion de usuarios

-- Insert users into the "usuario" table
INSERT INTO usuario (id, username, contra, id_empleado) VALUES
(1, 'jquint', 'admin', 1),
(2, 'admin.jorge', '12345', 2); 

-- insertar perfiles

INSERT INTO perfil (id, nombre, descripcion, id_estado) VALUES
(1, 'Admin', 'Administrador del sistema con acceso completo', 1); -- Active Admin Profile

INSERT INTO cargo (id, nombre, descripcion, salario, id_estado) VALUES
(1, 'Administrador General', 'Cargo administrativo con acceso completo al sistema', 5000.00, 1);

INSERT INTO historial_cargo (id, fecha, motivo, id_cargo, id_empleado) VALUES
(1, GETDATE(), 'Ascenso a Administrador General', 1, 1), 
(2, GETDATE(), 'Ascenso a Administrador General', 1, 2); 


INSERT INTO perfil_empleado (id, id_perfil, id_cargo) VALUES
(1, 1, 1), 
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





