USE [DB_NicaPOS]
GO
/****** Object:  Table [dbo].[apertura_caja]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[apertura_caja](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_caja] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[fecha_apertura] [datetime] NOT NULL,
	[monto_inicial] [decimal](9, 2) NOT NULL,
	[estado] [int] NOT NULL,
	[fecha_cierre] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[barrio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[barrio](
	[idB] [int] NOT NULL,
	[nombreB] [nvarchar](50) NULL,
	[idMun] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[caja]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[caja](
	[id_caja] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](15) NULL,
	[estado_caja] [int] NULL,
	[fecha_creacion] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_caja] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cargo]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cargo](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
	[salario] [decimal](9, 2) NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente](
	[id] [int] NOT NULL,
	[nombre_completo] [varchar](100) NULL,
	[fecha_registro] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compania_telefono]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compania_telefono](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[siglas] [char](2) NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[compra_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[compra_producto](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[tipo_compra] [varchar](100) NULL,
	[subtotal] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[Total] [decimal](9, 2) NOT NULL,
	[estado] [int] NOT NULL,
	[id_orden_compra] [int] NULL,
	[id_empleado] [int] NULL,
	[id_sucursal] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[costo_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[costo_producto](
	[id] [int] NOT NULL,
	[descripcion] [varchar](100) NULL,
	[costo] [decimal](9, 2) NOT NULL,
	[id_producto] [int] NOT NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[departamento]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[departamento](
	[idDep] [int] NOT NULL,
	[nombreDep] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idDep] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_compra]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_compra](
	[id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[total] [decimal](9, 2) NOT NULL,
	[id_producto] [int] NULL,
	[id_compra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_orden_compra]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_orden_compra](
	[id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[Total] [decimal](9, 2) NOT NULL,
	[id_producto] [int] NULL,
	[id_orden_compra] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_pedido]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_pedido](
	[id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[total] [decimal](9, 2) NOT NULL,
	[id_producto] [int] NULL,
	[id_pedido] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_solicitud]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_solicitud](
	[id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[total] [decimal](9, 2) NOT NULL,
	[id_producto] [int] NULL,
	[id_solicitud] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_venta_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta_producto](
	[id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[total] [decimal](9, 2) NOT NULL,
	[id_venta] [int] NULL,
	[id_producto] [int] NULL,
	[id_promo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[detalle_venta_servicio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[detalle_venta_servicio](
	[id] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[total] [decimal](9, 2) NOT NULL,
	[id_venta] [int] NOT NULL,
	[id_servicio] [int] NOT NULL,
	[id_promo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[direccion_tienda]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[direccion_tienda](
	[id] [int] NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[id_barrio] [int] NOT NULL,
	[id_tienda] [int] NOT NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[email_empleado]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[email_empleado](
	[id] [int] NOT NULL,
	[email] [varchar](100) NOT NULL,
	[empleado] [int] NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado](
	[id] [int] NOT NULL,
	[nombre1] [varchar](100) NOT NULL,
	[nombre2] [varchar](100) NULL,
	[apellido1] [varchar](100) NOT NULL,
	[apellido2] [varchar](100) NULL,
	[genero] [bit] NULL,
	[fecha_nacimiento] [date] NULL,
	[identificacion] [varchar](100) NULL,
	[id_estado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_direccion]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_direccion](
	[id] [int] NOT NULL,
	[direccion] [nvarchar](250) NOT NULL,
	[idEmpleado] [int] NULL,
	[idBarrio] [int] NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[empleado_telefono]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[empleado_telefono](
	[id] [int] NOT NULL,
	[telefono] [varchar](15) NULL,
	[id_comp] [int] NULL,
	[id_empleado] [int] NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[estado]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[estado](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historial_cargo]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historial_cargo](
	[id] [int] NOT NULL,
	[fecha] [date] NOT NULL,
	[motivo] [varchar](500) NULL,
	[id_cargo] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_estado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historial_costo_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historial_costo_producto](
	[id] [int] NOT NULL,
	[id_costo] [int] NOT NULL,
	[motivo] [varchar](200) NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historial_precio_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historial_precio_producto](
	[id] [int] NOT NULL,
	[id_precio] [int] NOT NULL,
	[motivo] [varchar](200) NOT NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[historial_precio_servicio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[historial_precio_servicio](
	[id] [int] NOT NULL,
	[id_precio] [int] NOT NULL,
	[motivo] [varchar](200) NOT NULL,
	[fecha] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[inventario]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[inventario](
	[id] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[existencia_actual] [int] NOT NULL,
	[disponibilidad] [int] NOT NULL,
	[stock_min] [int] NULL,
	[stock_max] [int] NULL,
	[id_sucursal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movimiento_caja]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimiento_caja](
	[id_mov] [int] IDENTITY(1,1) NOT NULL,
	[id_apertura] [int] NOT NULL,
	[tipo_movimeinto] [int] NOT NULL,
	[concepto] [varchar](50) NOT NULL,
	[monto] [decimal](9, 2) NOT NULL,
	[fecha_mov] [datetime] NOT NULL,
	[id_empleado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_mov] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[movimiento_inventario]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[movimiento_inventario](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[cantidad] [int] NOT NULL,
	[saldo_Mov] [int] NOT NULL,
	[numerdo_doc] [int] NOT NULL,
	[id_mov] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[municipio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[municipio](
	[idMun] [int] NOT NULL,
	[nombreMun] [nvarchar](50) NULL,
	[idDep] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idMun] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[orden_compra_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[orden_compra_producto](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[estado] [int] NOT NULL,
	[tipo_orden_compra] [varchar](50) NULL,
	[id_proveedor] [int] NOT NULL,
	[id_pedido] [int] NULL,
	[id_empleado] [int] NULL,
	[subtotal] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[Total] [decimal](9, 2) NOT NULL,
	[id_sucursal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[pedido]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[pedido](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[subtotal] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[Total] [decimal](9, 2) NOT NULL,
	[id_solicitud] [int] NULL,
	[id_empleado] [int] NULL,
	[estado] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfil]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfil_cargo]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil_cargo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_perfil] [int] NOT NULL,
	[id_cargo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[perfil_empleado]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[perfil_empleado](
	[id] [int] NOT NULL,
	[id_perfil] [int] NOT NULL,
	[id_cargo] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[permiso]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[permiso](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[precio_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[precio_producto](
	[id] [int] NOT NULL,
	[id_costo] [int] NOT NULL,
	[gasto] [decimal](9, 2) NOT NULL,
	[margen_ganancia] [decimal](9, 2) NOT NULL,
	[precio_venta] [decimal](9, 2) NOT NULL,
	[estado] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[precio_servicio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[precio_servicio](
	[id] [int] NOT NULL,
	[margen_ganancia] [decimal](9, 2) NOT NULL,
	[precio_venta] [decimal](9, 2) NOT NULL,
	[estado] [int] NOT NULL,
	[id_servicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[codigoProducto] [varchar](40) NOT NULL,
	[descripcion] [varchar](500) NULL,
	[id_Subcategoria] [int] NOT NULL,
	[id_marca] [int] NOT NULL,
	[id_UM] [int] NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_categoria]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_categoria](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_marca]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_marca](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_modelo]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_modelo](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [int] NOT NULL,
	[id_marca] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_proveedor]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_proveedor](
	[id] [int] NOT NULL,
	[id_producto] [int] NOT NULL,
	[id_proveedor] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_sub_categoria]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_sub_categoria](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
	[estado] [int] NOT NULL,
	[id_cat] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[producto_temp]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[producto_temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [nvarchar](255) NULL,
	[precio] [decimal](10, 2) NOT NULL,
	[stock] [int] NOT NULL,
	[estado] [bit] NULL,
	[id_proveedor] [int] NOT NULL,
	[id_Subcategoria] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[promocion]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[promocion](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
	[id_estado] [bit] NOT NULL,
	[id_tipo] [int] NOT NULL,
	[valor_prom] [float] NULL,
	[codigo_descuento] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[id_identificacion] [int] NOT NULL,
	[tipo] [int] NOT NULL,
	[sitioWeb] [varchar](100) NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor_correo]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor_correo](
	[id] [int] NOT NULL,
	[email] [varchar](100) NULL,
	[id_proveedor] [int] NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor_direccion]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor_direccion](
	[id] [int] NOT NULL,
	[direccion] [nvarchar](250) NOT NULL,
	[id_proveedor] [int] NULL,
	[idBarrio] [int] NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor_identificacion]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor_identificacion](
	[id] [int] NOT NULL,
	[identificacion] [varchar](100) NOT NULL,
	[tipo] [int] NOT NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[proveedor_temp]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[proveedor_temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[telefono] [varchar](15) NULL,
	[email] [varchar](100) NULL,
	[direccion] [nvarchar](255) NULL,
	[estado] [int] NOT NULL,
	[fecha_registro] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol_perfil_empleado]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_perfil_empleado](
	[id] [int] NOT NULL,
	[id_perfil_empleado] [int] NOT NULL,
	[id_rol] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[servicio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[servicio](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[descripcion] [varchar](500) NULL,
	[id_tipo_servicio] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[solicitud_compra]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[solicitud_compra](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_empleado] [int] NULL,
	[tipo_solicitud] [varchar](50) NULL,
	[estado] [int] NOT NULL,
	[subtotal] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[Total] [decimal](9, 2) NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[fecha_solicitud] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucursal_telefono]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucursal_telefono](
	[id] [int] NOT NULL,
	[telefono] [varchar](15) NULL,
	[id_comp] [int] NULL,
	[id_sucursal] [int] NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sucurusal_direccion]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sucurusal_direccion](
	[id] [int] NOT NULL,
	[direccion] [varchar](250) NOT NULL,
	[id_barrio] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[telefono_proveedor]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[telefono_proveedor](
	[id] [int] NOT NULL,
	[telefono] [varchar](15) NULL,
	[id_comp] [int] NULL,
	[id_proveedor] [int] NOT NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tienda]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tienda](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[RUC] [varchar](100) NOT NULL,
	[telefono] [varchar](20) NOT NULL,
	[razon_social] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tienda_telefono]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tienda_telefono](
	[id] [int] NOT NULL,
	[telefono] [varchar](15) NULL,
	[id_comp] [int] NULL,
	[id_tienda] [int] NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_comprobante]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_comprobante](
	[id] [int] NOT NULL,
	[tipo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_identificacion]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_identificacion](
	[id] [int] NOT NULL,
	[tipo] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_movimiento_caja]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_movimiento_caja](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_movimiento_inv]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_movimiento_inv](
	[id] [int] NOT NULL,
	[mov] [varchar](50) NULL,
	[siglas] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_pago]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_pago](
	[id] [int] NOT NULL,
	[tipo] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_promo]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_promo](
	[id] [int] NOT NULL,
	[tipo] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_proveedor]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_proveedor](
	[id] [int] NOT NULL,
	[tipo] [varchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_servicio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_servicio](
	[id] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[siglas] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipo_unidad_medida]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipo_unidad_medida](
	[id] [int] NOT NULL,
	[nombre] [varchar](100) NOT NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[unidad_medida]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[unidad_medida](
	[id] [int] NOT NULL,
	[unidad_medida] [varchar](50) NOT NULL,
	[descripcion] [varchar](100) NOT NULL,
	[siglas_um] [varchar](10) NULL,
	[id_tipo] [int] NOT NULL,
	[estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id] [int] NOT NULL,
	[username] [varchar](25) NOT NULL,
	[contra] [varchar](256) NOT NULL,
	[id_empleado] [int] NOT NULL,
	[fecha_creacion] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_permiso_empleado]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_permiso_empleado](
	[id] [int] NOT NULL,
	[id_usuario_rol_empleado] [int] NOT NULL,
	[id_permiso] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario_rol_empleado]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario_rol_empleado](
	[id] [int] NOT NULL,
	[id_rol_perfil_empleado] [int] NULL,
	[id_usuario] [int] NULL,
	[id_estado] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta_producto]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_producto](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[num_comprobante] [varchar](100) NOT NULL,
	[subtotal] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[Total] [decimal](9, 2) NOT NULL,
	[tipo_comprobante] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_cliente] [int] NULL,
	[id_tipo_pago] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta_producto_temp]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_producto_temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_venta] [int] NULL,
	[id_producto] [int] NOT NULL,
	[cantidad] [int] NOT NULL,
	[precio_unitario] [decimal](10, 2) NULL,
	[subtotal]  AS ([cantidad]*[precio_unitario]),
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta_servicio]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_servicio](
	[id] [int] NOT NULL,
	[fecha] [datetime] NOT NULL,
	[num_comprobante] [varchar](100) NOT NULL,
	[subtotal] [decimal](9, 2) NOT NULL,
	[impuesto] [decimal](9, 2) NOT NULL,
	[descuento] [decimal](9, 2) NOT NULL,
	[Total] [decimal](9, 2) NOT NULL,
	[tipo_comprobante] [int] NOT NULL,
	[estado] [int] NOT NULL,
	[id_empleado] [int] NOT NULL,
	[id_sucursal] [int] NOT NULL,
	[id_cliente] [int] NOT NULL,
	[id_tipo_pago] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[venta_temp]    Script Date: 12/2/2024 10:04:33 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[venta_temp](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fecha] [datetime] NOT NULL,
	[id_cliente] [int] NULL,
	[total] [decimal](10, 2) NOT NULL,
	[estado] [int] NOT NULL,
	[id_empleado] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (1, N'El Calvario', 1)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (2, N'La Providencia', 1)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (3, N'San José', 1)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (4, N'Santa Isabel', 4)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (5, N'La Cruz', 4)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (6, N'San Antonio', 4)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (7, N'El Rosario', 7)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (8, N'Santa Ana', 7)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (9, N'Reparto El Limonal', 7)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (10, N'La Libertad', 10)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (11, N'El Tamarindo', 10)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (12, N'San Martín', 10)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (13, N'Oscar Gámez', 13)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (14, N'Libertad', 13)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (15, N'Boris Vega', 13)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (16, N'La Islita', 16)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (17, N'Xalteva', 16)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (18, N'El Cementerio', 16)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (19, N'El Pantanal', 19)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (20, N'San Antonio', 19)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (21, N'Loma Verde', 19)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (22, N'Laborío', 22)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (23, N'Guadalupe', 22)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (24, N'San Felipe', 22)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (25, N'Ciudad Jardín', 28)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (26, N'Monseñor Lezcano', 28)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (27, N'Reparto Schick', 28)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (28, N'San Jerónimo', 31)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (29, N'El Calvario', 31)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (30, N'Camilo Ortega', 31)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (31, N'Guadalupe', 34)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (32, N'Sabadell', 34)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (33, N'San Francisco', 34)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (34, N'Sandino', 37)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (35, N'Teodoro López', 37)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (36, N'Pancasán', 37)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (37, N'La Puebla', 40)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (38, N'La Virgen', 40)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (39, N'San Pedro', 40)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (40, N'Beholden', 49)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (41, N'Loma Fresca', 49)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (42, N'Central', 49)
INSERT [dbo].[barrio] ([idB], [nombreB], [idMun]) VALUES (43, N'Altagracia', 1)
GO
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (1, N'Administrador General', N'Cargo administrativo con acceso completo al sistema', CAST(5000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (2, N'Administrador de Tienda', N'Gestiona los aspectos administrativos de la tienda, controla horarios de personal, pagos, beneficios, y mantiene la relación con proveedores.', CAST(22000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (3, N'Supervisor de Turno', N'Coordina las operaciones durante su turno, asigna tareas, supervisa al personal y asegura que se cumplan los procedimientos establecidos.', CAST(18000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (4, N'Coordinador de Marketing', N'Diseña y ejecuta campañas de marketing y promociones dentro de la tienda, organiza eventos para atraer clientes y monitorea el rendimiento de las campañas.', CAST(17000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (5, N'Encargado de Inventarios / Auditor', N'Controla los inventarios, realiza auditorías regulares, gestiona los pedidos a proveedores y asegura la correcta rotación de productos.', CAST(15000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (6, N'Stocker', N'Repone productos en los estantes, controla la rotación de inventario y realiza inventarios regulares para asegurar la disponibilidad de productos.', CAST(10500.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (7, N'Cajero', N'Realiza cobros, procesa pagos, ofrece atención al cliente y mantiene el área de caja organizada y limpia.', CAST(12000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (8, N'Asociado de Ventas', N'Atiende a los clientes, ofrece productos adicionales, mantiene el orden en la tienda y asegura la reposición de productos.', CAST(11000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (9, N'Personal de Seguridad', N'Vigila las instalaciones de la tienda, previene robos y mantiene la seguridad, además de manejar situaciones de emergencia dentro de la tienda.', CAST(13000.00 AS Decimal(9, 2)), 1)
INSERT [dbo].[cargo] ([id], [nombre], [descripcion], [salario], [id_estado]) VALUES (10, N'Gerente de Tienda', N'Supervisa las operaciones generales de la tienda, gestiona el personal, controla inventarios, resuelve problemas y coordina las estrategias de negocio.', CAST(25000.00 AS Decimal(9, 2)), 1)
GO
INSERT [dbo].[cliente] ([id], [nombre_completo], [fecha_registro]) VALUES (1, N'Cliente Regular', CAST(N'2024-11-12T11:42:58.227' AS DateTime))
GO
INSERT [dbo].[compania_telefono] ([id], [nombre], [siglas], [estado]) VALUES (1, N'Claro', N'CL', 1)
INSERT [dbo].[compania_telefono] ([id], [nombre], [siglas], [estado]) VALUES (2, N'Tigo', N'TG', 1)
GO
INSERT [dbo].[costo_producto] ([id], [descripcion], [costo], [id_producto], [estado]) VALUES (1, N'Costo inicial de Gaseosa Coca-Cola', CAST(0.75 AS Decimal(9, 2)), 1, 1)
INSERT [dbo].[costo_producto] ([id], [descripcion], [costo], [id_producto], [estado]) VALUES (2, N'Costo inicial de Papas Fritas Lays', CAST(1.50 AS Decimal(9, 2)), 2, 1)
INSERT [dbo].[costo_producto] ([id], [descripcion], [costo], [id_producto], [estado]) VALUES (3, N'Costo inicial de Café en Polvo Nescafé', CAST(3.00 AS Decimal(9, 2)), 3, 1)
GO
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (1, N'Boaco')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (2, N'Carazo')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (3, N'Chinandega')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (4, N'Chontales')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (5, N'Estelí')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (6, N'Granada')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (7, N'Jinotega')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (8, N'León')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (9, N'Madriz')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (10, N'Managua')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (11, N'Masaya')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (12, N'Matagalpa')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (13, N'Nueva Segovia')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (14, N'Rivas')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (15, N'Río San Juan')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (16, N'Región Autónoma de la Costa Caribe Norte')
INSERT [dbo].[departamento] ([idDep], [nombreDep]) VALUES (17, N'Región Autónoma de la Costa Caribe Sur')
GO
INSERT [dbo].[direccion_tienda] ([id], [direccion], [id_barrio], [id_tienda], [estado]) VALUES (1, N'De los semaforos de la racachaca 2 1/2 c al Norte', 43, 1, 1)
GO
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (1, N'jurgen.quint@empresa.com', 1, 1)
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (2, N'jorge.urbina@empresa.com', 2, 1)
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (3, N'juan.perez@ejemplo.com', NULL, 1)
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (4, N'juan.perez@ejemplo.com', NULL, 1)
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (5, N'mandrea@email.com', NULL, 1)
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (6, N'ana.lopez@ejemplo.com', NULL, 1)
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (7, N'ana.lopez@ejemplo.com', 8, 1)
INSERT [dbo].[email_empleado] ([id], [email], [empleado], [estado]) VALUES (8, N'mario@email.com', 9, 1)
GO
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (1, N'Jurgen', N'Alejandro', N'Quintanilla', N'Paiz', 1, CAST(N'1990-05-12' AS Date), N'0010908091067T', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (2, N'Jorge', N'Luis', N'Nunez', N'Urbina', 1, CAST(N'1985-07-23' AS Date), N'001230785J', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (3, N'Nathaly', N'Akira', N'Alaniz', N'Escorcia', 0, CAST(N'1985-07-23' AS Date), N'00719850723X', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (4, N'Juan', N'Carlos', N'Pérez', N'González', 1, CAST(N'1985-05-15' AS Date), N'1234567890', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (5, N'Miriam', N'Andrea', N'Lopez', N'Hernandez', 0, CAST(N'2001-01-01' AS Date), N'888-010101-9087Y', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (6, N'asdasd', N'asdasd', N'asdasd', N'asdasda', 0, CAST(N'2024-11-05' AS Date), N'123123123T', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (7, N'asdasd', N'asdasd', N'asdasd', N'asdasd', 0, CAST(N'2024-11-18' AS Date), N'123123123', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (8, N'Ana', N'María', N'Lopez', N'Martínez', 0, CAST(N'1992-07-20' AS Date), N'9876543210', 1, 1)
INSERT [dbo].[empleado] ([id], [nombre1], [nombre2], [apellido1], [apellido2], [genero], [fecha_nacimiento], [identificacion], [id_estado], [id_sucursal]) VALUES (9, N'Mario', N'Medrano', N'Martinez', N'Ozuna', 0, CAST(N'2024-11-18' AS Date), N'888-091212-1298U', 1, 1)
GO
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (1, N'Calle 1, Boaco Centro', 1, 1, 2)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (2, N'Avenida 5, Ciudad Jardín', 2, 25, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (3, N'Calle Ficticia 123, Managua', NULL, 3, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (4, N'Calle Ficticia 123, Managua', NULL, 3, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (5, N'de donde venden chicha, 3 c a mi salchicha', NULL, 3, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (6, N'asdasdasdasdasdasdasd', NULL, 4, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (7, N'aasdasdasd', NULL, 1, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (8, N'Avenida Central 456, León', NULL, 5, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (9, N'Avenida Central 456, León', 8, 5, 1)
INSERT [dbo].[empleado_direccion] ([id], [direccion], [idEmpleado], [idBarrio], [estado]) VALUES (10, N'as1123123', 9, 2, 1)
GO
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (1, N'505-1234-5678', 1, 1, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (2, N'505-9876-5432', 2, 2, 2)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (3, N'505-9876-5432', 2, 2, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (4, N'555-1234', 1, NULL, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (5, N'555-1234', 1, NULL, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (6, N'88135026', 1, NULL, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (7, N'4554532', 1, NULL, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (8, N'', 1, NULL, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (9, N'555-9876', 2, NULL, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (10, N'555-9876', 2, 8, 1)
INSERT [dbo].[empleado_telefono] ([id], [telefono], [id_comp], [id_empleado], [estado]) VALUES (11, N'8888888', 1, 9, 1)
GO
INSERT [dbo].[estado] ([id], [nombre]) VALUES (1, N'Activo')
INSERT [dbo].[estado] ([id], [nombre]) VALUES (2, N'Inactivo')
INSERT [dbo].[estado] ([id], [nombre]) VALUES (3, N'Pendiente')
INSERT [dbo].[estado] ([id], [nombre]) VALUES (4, N'Bloqueado')
INSERT [dbo].[estado] ([id], [nombre]) VALUES (5, N'Eliminado')
INSERT [dbo].[estado] ([id], [nombre]) VALUES (6, N'Aprobado')
INSERT [dbo].[estado] ([id], [nombre]) VALUES (7, N'Rechazado')
INSERT [dbo].[estado] ([id], [nombre]) VALUES (8, N'Suspendido')
GO
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (1, CAST(N'2024-10-17' AS Date), N'Ascenso a Administrador General', 1, 1, 1)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (2, CAST(N'2024-10-17' AS Date), N'Ascenso a Administrador General', 1, 2, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (3, CAST(N'2024-11-20' AS Date), N'demotion', 3, 2, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (4, CAST(N'2024-11-20' AS Date), N'demotion', 3, 2, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (5, CAST(N'2024-11-20' AS Date), N'', 1, 3, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (6, CAST(N'2024-11-20' AS Date), N'', 1, 3, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (7, CAST(N'2024-11-20' AS Date), N'', 6, 3, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (8, CAST(N'2024-11-20' AS Date), N'', 1, 6, 1)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (9, CAST(N'2024-11-21' AS Date), N'', 4, 2, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (10, CAST(N'2024-11-22' AS Date), N'', 8, 3, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (11, CAST(N'2024-11-26' AS Date), N'testing', 1, 3, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (12, CAST(N'2024-11-26' AS Date), N'testing', 7, 3, 1)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (13, CAST(N'2024-11-26' AS Date), N'test', 6, 2, 2)
INSERT [dbo].[historial_cargo] ([id], [fecha], [motivo], [id_cargo], [id_empleado], [id_estado]) VALUES (14, CAST(N'2024-11-26' AS Date), N'test', 6, 2, 1)
GO
INSERT [dbo].[historial_costo_producto] ([id], [id_costo], [motivo], [fecha]) VALUES (1, 1, N'Costo inicial del producto', CAST(N'2024-10-22' AS Date))
INSERT [dbo].[historial_costo_producto] ([id], [id_costo], [motivo], [fecha]) VALUES (2, 2, N'Costo inicial del producto', CAST(N'2024-10-22' AS Date))
INSERT [dbo].[historial_costo_producto] ([id], [id_costo], [motivo], [fecha]) VALUES (3, 3, N'Costo inicial del producto', CAST(N'2024-10-22' AS Date))
GO
INSERT [dbo].[historial_precio_producto] ([id], [id_precio], [motivo], [fecha]) VALUES (1, 1, N'Precio de venta inicial', CAST(N'2024-10-22' AS Date))
INSERT [dbo].[historial_precio_producto] ([id], [id_precio], [motivo], [fecha]) VALUES (2, 2, N'Precio de venta inicial', CAST(N'2024-10-22' AS Date))
INSERT [dbo].[historial_precio_producto] ([id], [id_precio], [motivo], [fecha]) VALUES (3, 3, N'Precio de venta inicial', CAST(N'2024-10-22' AS Date))
GO
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (1, N'Boaco', 1)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (2, N'Camoapa', 1)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (3, N'San Lorenzo', 1)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (4, N'Jinotepe', 2)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (5, N'Diriamba', 2)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (6, N'San Marcos', 2)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (7, N'Chinandega', 3)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (8, N'Corinto', 3)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (9, N'El Viejo', 3)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (10, N'Juigalpa', 4)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (11, N'Acoyapa', 4)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (12, N'Santo Tomás', 4)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (13, N'Estelí', 5)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (14, N'Condega', 5)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (15, N'La Trinidad', 5)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (16, N'Granada', 6)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (17, N'Nandaime', 6)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (18, N'Diriá', 6)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (19, N'Jinotega', 7)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (20, N'San Rafael del Norte', 7)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (21, N'San Sebastián de Yalí', 7)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (22, N'León', 8)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (23, N'El Sauce', 8)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (24, N'La Paz Centro', 8)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (25, N'Somoto', 9)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (26, N'Palacagüina', 9)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (27, N'San Lucas', 9)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (28, N'Managua', 10)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (29, N'Ciudad Sandino', 10)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (30, N'Ticuantepe', 10)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (31, N'Masaya', 11)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (32, N'Nindirí', 11)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (33, N'Catarina', 11)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (34, N'Matagalpa', 12)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (35, N'San Ramón', 12)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (36, N'Sébaco', 12)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (37, N'Ocotal', 13)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (38, N'Jalapa', 13)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (39, N'Santa María', 13)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (40, N'Rivas', 14)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (41, N'San Juan del Sur', 14)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (42, N'Tola', 14)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (43, N'San Carlos', 15)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (44, N'El Castillo', 15)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (45, N'San Miguelito', 15)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (46, N'Bilwi', 16)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (47, N'Waspam', 16)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (48, N'Prinzapolka', 16)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (49, N'Bluefields', 17)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (50, N'Laguna de Perlas', 17)
INSERT [dbo].[municipio] ([idMun], [nombreMun], [idDep]) VALUES (51, N'Kukra Hill', 17)
GO
INSERT [dbo].[perfil] ([id], [nombre], [descripcion], [id_estado]) VALUES (1, N'Admin', N'Administrador del sistema con acceso completo', 1)
INSERT [dbo].[perfil] ([id], [nombre], [descripcion], [id_estado]) VALUES (2, N'Negocio', N'Configuracion del negocio', 1)
INSERT [dbo].[perfil] ([id], [nombre], [descripcion], [id_estado]) VALUES (3, N'Compra', N'Accesso al inventario', 1)
INSERT [dbo].[perfil] ([id], [nombre], [descripcion], [id_estado]) VALUES (4, N'Caja', N'acceso a caja', 1)
INSERT [dbo].[perfil] ([id], [nombre], [descripcion], [id_estado]) VALUES (5, N'Reportes', N'Acceso al modulo de reportes', 1)
INSERT [dbo].[perfil] ([id], [nombre], [descripcion], [id_estado]) VALUES (6, N'Sistema', N'del sistema', 1)
INSERT [dbo].[perfil] ([id], [nombre], [descripcion], [id_estado]) VALUES (7, N'Venta', N'Modulo de facturacion y gestiones de venta', 1)
GO
SET IDENTITY_INSERT [dbo].[perfil_cargo] ON 

INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (1, 1, 1)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (2, 2, 1)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (3, 3, 1)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (4, 4, 1)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (5, 5, 1)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (6, 6, 1)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (7, 7, 1)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (8, 2, 2)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (9, 3, 2)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (10, 5, 2)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (11, 7, 2)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (12, 2, 3)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (13, 3, 3)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (14, 5, 3)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (15, 7, 3)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (16, 5, 4)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (17, 3, 5)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (18, 5, 5)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (19, 3, 6)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (20, 4, 7)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (21, 7, 7)
INSERT [dbo].[perfil_cargo] ([id], [id_perfil], [id_cargo]) VALUES (22, 7, 8)
SET IDENTITY_INSERT [dbo].[perfil_cargo] OFF
GO
INSERT [dbo].[perfil_empleado] ([id], [id_perfil], [id_cargo]) VALUES (1, 1, 1)
INSERT [dbo].[perfil_empleado] ([id], [id_perfil], [id_cargo]) VALUES (2, 1, 2)
GO
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (1, N'Acceso Completo', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (2, N'Ver', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (3, N'Crear', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (4, N'Editar', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (5, N'Eliminar', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (6, N'Gestionar Usuarios', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (7, N'Gestionar Roles', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (8, N'Ver Reportes', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (9, N'Exportar Datos', 1)
INSERT [dbo].[permiso] ([id], [nombre], [estado]) VALUES (10, N'Aprobar', 1)
GO
INSERT [dbo].[precio_producto] ([id], [id_costo], [gasto], [margen_ganancia], [precio_venta], [estado], [id_producto]) VALUES (1, 1, CAST(0.10 AS Decimal(9, 2)), CAST(1.00 AS Decimal(9, 2)), CAST(1.85 AS Decimal(9, 2)), 1, 1)
INSERT [dbo].[precio_producto] ([id], [id_costo], [gasto], [margen_ganancia], [precio_venta], [estado], [id_producto]) VALUES (2, 2, CAST(0.15 AS Decimal(9, 2)), CAST(1.00 AS Decimal(9, 2)), CAST(2.65 AS Decimal(9, 2)), 1, 2)
INSERT [dbo].[precio_producto] ([id], [id_costo], [gasto], [margen_ganancia], [precio_venta], [estado], [id_producto]) VALUES (3, 3, CAST(0.20 AS Decimal(9, 2)), CAST(1.00 AS Decimal(9, 2)), CAST(4.50 AS Decimal(9, 2)), 1, 3)
GO
INSERT [dbo].[producto] ([id], [nombre], [codigoProducto], [descripcion], [id_Subcategoria], [id_marca], [id_UM], [estado]) VALUES (1, N'Gaseosa Coca-Cola 500ml', N'0012345678901', N'Refresco carbonatado Coca-Cola 500ml', 1, 1, 1, 1)
INSERT [dbo].[producto] ([id], [nombre], [codigoProducto], [descripcion], [id_Subcategoria], [id_marca], [id_UM], [estado]) VALUES (2, N'Papas Fritas Lay', N'0023456789012', N'Papas fritas sabor original 200g', 2, 2, 2, 1)
INSERT [dbo].[producto] ([id], [nombre], [codigoProducto], [descripcion], [id_Subcategoria], [id_marca], [id_UM], [estado]) VALUES (3, N'Café en Polvo Nescafé 200g', N'0034567890123', N'Café soluble Nescafé 200g', 3, 3, 3, 1)
GO
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (1, N'Alimentos', N'Productos comestibles de todo tipo', 1)
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (2, N'Bebidas', N'Bebidas alcohólicas y no alcohólicas', 1)
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (3, N'Artículos de Higiene', N'Productos para la higiene personal y limpieza', 1)
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (4, N'TEST', N'eSTO ES UNA PRUBEA', 1)
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (5, N'Otro test', N'sadsa', 1)
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (6, N'TTT', N'', 2)
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (7, N'Bebidas Alcoholicas', N'Set de bebidas alcoholicas como Licores y cervezas etc', 1)
INSERT [dbo].[producto_categoria] ([id], [nombre], [descripcion], [estado]) VALUES (8, N'Comida chatarra ', N'jashdkjsahd', 1)
GO
INSERT [dbo].[producto_marca] ([id], [nombre], [estado]) VALUES (1, N'Coca-Cola', 1)
INSERT [dbo].[producto_marca] ([id], [nombre], [estado]) VALUES (2, N'Nestlé', 1)
INSERT [dbo].[producto_marca] ([id], [nombre], [estado]) VALUES (3, N'Colgate', 1)
GO
INSERT [dbo].[producto_modelo] ([id], [nombre], [estado], [id_marca]) VALUES (1, N'Coca-Cola Regular 500ml', 1, 1)
INSERT [dbo].[producto_modelo] ([id], [nombre], [estado], [id_marca]) VALUES (2, N'Coca-Cola Zero 500ml', 1, 1)
INSERT [dbo].[producto_modelo] ([id], [nombre], [estado], [id_marca]) VALUES (3, N'Nestlé Pureza Vital 1L', 1, 2)
INSERT [dbo].[producto_modelo] ([id], [nombre], [estado], [id_marca]) VALUES (4, N'Nestlé Milo 500g', 1, 2)
INSERT [dbo].[producto_modelo] ([id], [nombre], [estado], [id_marca]) VALUES (5, N'Colgate Total 12 150g', 1, 3)
INSERT [dbo].[producto_modelo] ([id], [nombre], [estado], [id_marca]) VALUES (6, N'Colgate Triple Acción 150g', 1, 3)
GO
INSERT [dbo].[producto_proveedor] ([id], [id_producto], [id_proveedor]) VALUES (1, 1, 1)
INSERT [dbo].[producto_proveedor] ([id], [id_producto], [id_proveedor]) VALUES (2, 2, 1)
INSERT [dbo].[producto_proveedor] ([id], [id_producto], [id_proveedor]) VALUES (3, 3, 1)
INSERT [dbo].[producto_proveedor] ([id], [id_producto], [id_proveedor]) VALUES (4, 1, 1)
GO
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (1, N'Snacks', N'Productos para picar como papas fritas, galletas', 1, 1)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (2, N'Lácteos', N'Productos lácteos como leche, queso, yogur', 1, 1)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (3, N'Refrescos', N'Bebidas gaseosas y energéticas', 1, 2)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (4, N'Jugos', N'Jugos naturales y procesados', 1, 2)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (5, N'Desodorantes', N'Desodorantes y antitranspirantes', 1, 3)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (6, N'Jabones', N'Jabones de barra y líquidos', 1, 3)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (7, N'cerveza', N'Moropotente', 1, 1)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (8, N'Comida Chatarra', N'hartazon', 1, 1)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (9, N'Whiskys', N'Licores finos dasdasdasdasdasdsad', 1, 7)
INSERT [dbo].[producto_sub_categoria] ([id], [nombre], [descripcion], [estado], [id_cat]) VALUES (10, N'Hotdogs ', N'asdsa ', 1, 8)
GO
SET IDENTITY_INSERT [dbo].[producto_temp] ON 

INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (14, N'Agua Embotellada', N'Botella de agua natural 500ml', CAST(0.75 AS Decimal(10, 2)), 193, 1, 1, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (15, N'Refresco Coca-Cola', N'Lata de refresco 355ml', CAST(1.00 AS Decimal(10, 2)), 150, 1, 1, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (16, N'Papas Fritas', N'Bolsa de papas fritas clásica 150g', CAST(1.50 AS Decimal(10, 2)), 99, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (17, N'Galletas de Chocolate', N'Paquete de galletas rellenas de chocolate 200g', CAST(2.00 AS Decimal(10, 2)), 16, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (18, N'Barra de Cereal', N'Barra energética con granola y chocolate', CAST(1.20 AS Decimal(10, 2)), 74, 1, 3, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (19, N'Chicles', N'Paquete de chicles de menta', CAST(0.90 AS Decimal(10, 2)), 47, 1, 3, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (20, N'Café Instantáneo', N'Paquete de café instantáneo 100g', CAST(5.00 AS Decimal(10, 2)), 25, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (21, N'Baterías AA', N'Paquete de 2 baterías alcalinas AA', CAST(3.50 AS Decimal(10, 2)), 30, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (22, N'Jugo de Naranja', N'Botella de jugo natural 1L', CAST(2.50 AS Decimal(10, 2)), 48, 1, 1, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (23, N'Leche Entera', N'Litro de leche entera', CAST(1.30 AS Decimal(10, 2)), 55, 1, 1, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (24, N'Pan de Caja', N'Bolsa de pan rebanado', CAST(2.20 AS Decimal(10, 2)), 40, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (25, N'Detergente en Polvo', N'Paquete de detergente para ropa 1kg', CAST(4.50 AS Decimal(10, 2)), 17, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (26, N'Shampoo', N'Botella de shampoo 500ml', CAST(6.00 AS Decimal(10, 2)), 14, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (27, N'Papel Higiénico', N'Paquete de 4 rollos de papel higiénico', CAST(3.80 AS Decimal(10, 2)), 34, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (28, N'Cerveza Lager', N'Lata de cerveza lager 355ml', CAST(1.50 AS Decimal(10, 2)), 100, 1, 1, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (29, N'Aceite de Cocina', N'Botella de aceite vegetal 1L', CAST(3.00 AS Decimal(10, 2)), 20, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (30, N'Huevo', N'Paquete de 12 huevos', CAST(2.50 AS Decimal(10, 2)), 27, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (31, N'Atún en Lata', N'Lata de atún en agua 140g', CAST(1.00 AS Decimal(10, 2)), 40, 1, 3, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (32, N'Sopa Instantánea', N'Vaso de sopa instantánea sabor pollo', CAST(0.80 AS Decimal(10, 2)), 75, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
INSERT [dbo].[producto_temp] ([id], [nombre], [descripcion], [precio], [stock], [estado], [id_proveedor], [id_Subcategoria], [fecha_registro]) VALUES (33, N'Arroz Blanco', N'Bolsa de arroz blanco 1kg', CAST(1.80 AS Decimal(10, 2)), 50, 1, 2, 1, CAST(N'2024-12-02T12:36:22.457' AS DateTime))
SET IDENTITY_INSERT [dbo].[producto_temp] OFF
GO
INSERT [dbo].[proveedor] ([id], [nombre], [id_identificacion], [tipo], [sitioWeb], [id_estado]) VALUES (1, N'Distribuidora ABC', 1, 1, N'www.distribuidoraabc.com', 1)
GO
INSERT [dbo].[proveedor_correo] ([id], [email], [id_proveedor], [id_estado]) VALUES (1, N'contacto@distribuidoraramses.com', 1, 1)
GO
INSERT [dbo].[proveedor_direccion] ([id], [direccion], [id_proveedor], [idBarrio], [estado]) VALUES (1, N'Calle Principal, Edificio 10', 1, 1, 1)
GO
INSERT [dbo].[proveedor_identificacion] ([id], [identificacion], [tipo], [id_estado]) VALUES (1, N'J031000012345', 1, 1)
GO
SET IDENTITY_INSERT [dbo].[proveedor_temp] ON 

INSERT [dbo].[proveedor_temp] ([id], [nombre], [telefono], [email], [direccion], [estado], [fecha_registro]) VALUES (1, N'Proveedor A', N'123456789', N'proveedora@ejemplo.com', N'Calle 123', 1, CAST(N'2024-12-02T12:30:15.597' AS DateTime))
INSERT [dbo].[proveedor_temp] ([id], [nombre], [telefono], [email], [direccion], [estado], [fecha_registro]) VALUES (2, N'Proveedor B', N'987654321', N'proveedorb@ejemplo.com', N'Avenida 456', 1, CAST(N'2024-12-02T12:30:15.597' AS DateTime))
INSERT [dbo].[proveedor_temp] ([id], [nombre], [telefono], [email], [direccion], [estado], [fecha_registro]) VALUES (3, N'Proveedor C', N'555123456', N'proveedorc@ejemplo.com', N'Boulevard 789', 0, CAST(N'2024-12-02T12:30:15.597' AS DateTime))
SET IDENTITY_INSERT [dbo].[proveedor_temp] OFF
GO
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (1, N'Admin', N'Rol con acceso completo a todas las funcionalidades del sistema', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (2, N'Administrador de Tienda', N'Gestión operativa diaria de la tienda y monitoreo de ventas.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (3, N'Supervisor de Turno', N'Coordinación de actividades durante el turno y resolución de problemas inmediatos.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (4, N'Coordinador de Marketing', N'Desarrollo y ejecución de campañas de marketing, análisis de tendencias y promoción de productos.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (5, N'Encargado de Inventarios / Auditor', N'Gestión y control de inventarios, realización de auditorías y reposición de productos.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (6, N'Stocker', N'Reposición de productos en estantes, organización del almacén y verificación de fechas de caducidad.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (7, N'Cajero', N'Procesamiento de pagos, manejo de efectivo y atención al cliente en el área de cajas.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (8, N'Asociado de Ventas', N'Asistencia a clientes, promoción de productos y resolución de consultas.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (9, N'Personal de Seguridad', N'Monitoreo de seguridad, prevención de robos y supervisión de cámaras.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (10, N'Gerente de Tienda', N'Liderazgo del equipo, supervisión de metas y solución de problemas mayores.', 1)
INSERT [dbo].[rol] ([id], [nombre], [descripcion], [id_estado]) VALUES (11, N'Administrador General', N'Gestión global del negocio, toma de decisiones estratégicas y supervisión de equipos.', 1)
GO
INSERT [dbo].[rol_perfil_empleado] ([id], [id_perfil_empleado], [id_rol]) VALUES (1, 1, 1)
INSERT [dbo].[rol_perfil_empleado] ([id], [id_perfil_empleado], [id_rol]) VALUES (2, 2, 1)
GO
INSERT [dbo].[sucursal] ([id], [nombre], [estado]) VALUES (1, N'Racachaca', 1)
GO
INSERT [dbo].[sucursal_telefono] ([id], [telefono], [id_comp], [id_sucursal], [estado]) VALUES (1, N'8763890', 1, 1, 1)
GO
INSERT [dbo].[sucurusal_direccion] ([id], [direccion], [id_barrio], [estado], [id_sucursal]) VALUES (1, N'De los semaforos de la racachaca 2 1/2 c al Norte', 43, 1, 1)
GO
INSERT [dbo].[telefono_proveedor] ([id], [telefono], [id_comp], [id_proveedor], [estado]) VALUES (1, N'505-2222-3333', 1, 1, 1)
GO
INSERT [dbo].[tienda] ([id], [nombre], [RUC], [telefono], [razon_social]) VALUES (1, N'El Matracazo', N'J00102003100017', N'22667788', N'El Mercadito S.A')
GO
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (1, N'Factura')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (2, N'Recibo')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (3, N'Nota de Crédito')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (4, N'Nota de Débito')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (5, N'Boleta de Venta')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (6, N'Recibo Proforma')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (7, N'Comprobante de Pago')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (8, N'Ticket de Venta')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (9, N'Factura Proforma')
INSERT [dbo].[tipo_comprobante] ([id], [tipo]) VALUES (10, N'Factura Electrónica')
GO
INSERT [dbo].[tipo_identificacion] ([id], [tipo]) VALUES (1, N'Cedula')
INSERT [dbo].[tipo_identificacion] ([id], [tipo]) VALUES (2, N'Pasaporte')
GO
SET IDENTITY_INSERT [dbo].[tipo_movimiento_caja] ON 

INSERT [dbo].[tipo_movimiento_caja] ([id], [nombre], [descripcion], [estado]) VALUES (1, N'Pago en efectivo', N'Movimientos por pagos realizados en efectivo', 1)
INSERT [dbo].[tipo_movimiento_caja] ([id], [nombre], [descripcion], [estado]) VALUES (2, N'Entrada de efectivo', N'Ingresos en efectivo a la caja', 1)
INSERT [dbo].[tipo_movimiento_caja] ([id], [nombre], [descripcion], [estado]) VALUES (3, N'Retiro efectivo', N'Retiros en efectivo desde la caja', 1)
SET IDENTITY_INSERT [dbo].[tipo_movimiento_caja] OFF
GO
INSERT [dbo].[tipo_pago] ([id], [tipo]) VALUES (1, N'Efectivo')
INSERT [dbo].[tipo_pago] ([id], [tipo]) VALUES (2, N'Tarjeta')
INSERT [dbo].[tipo_pago] ([id], [tipo]) VALUES (3, N'Otro')
GO
INSERT [dbo].[tipo_proveedor] ([id], [tipo]) VALUES (1, N'Distribuidor')
INSERT [dbo].[tipo_proveedor] ([id], [tipo]) VALUES (2, N'Mayorista')
GO
INSERT [dbo].[tipo_unidad_medida] ([id], [nombre], [estado]) VALUES (1, N'Volumen', 1)
INSERT [dbo].[tipo_unidad_medida] ([id], [nombre], [estado]) VALUES (2, N'Masa', 1)
GO
INSERT [dbo].[unidad_medida] ([id], [unidad_medida], [descripcion], [siglas_um], [id_tipo], [estado]) VALUES (1, N'Litros', N'Unidad de volumen estándar', N'L', 1, 1)
INSERT [dbo].[unidad_medida] ([id], [unidad_medida], [descripcion], [siglas_um], [id_tipo], [estado]) VALUES (2, N'Mililitros', N'Unidad pequeña de volumen', N'mL', 1, 1)
INSERT [dbo].[unidad_medida] ([id], [unidad_medida], [descripcion], [siglas_um], [id_tipo], [estado]) VALUES (3, N'Centímetros Cúbicos', N'Unidad de volumen equivalente a mililitro', N'cm³', 1, 1)
INSERT [dbo].[unidad_medida] ([id], [unidad_medida], [descripcion], [siglas_um], [id_tipo], [estado]) VALUES (4, N'Gramos', N'Unidad pequeña de masa', N'g', 2, 1)
INSERT [dbo].[unidad_medida] ([id], [unidad_medida], [descripcion], [siglas_um], [id_tipo], [estado]) VALUES (5, N'Kilogramos', N'Unidad de masa estándar', N'kg', 2, 1)
INSERT [dbo].[unidad_medida] ([id], [unidad_medida], [descripcion], [siglas_um], [id_tipo], [estado]) VALUES (6, N'Libras', N'Unidad de peso en el sistema imperial', N'lb', 2, 1)
INSERT [dbo].[unidad_medida] ([id], [unidad_medida], [descripcion], [siglas_um], [id_tipo], [estado]) VALUES (7, N'Onzas', N'Unidad de peso pequeña', N'oz', 2, 1)
GO
INSERT [dbo].[usuario] ([id], [username], [contra], [id_empleado], [fecha_creacion]) VALUES (1, N'jquint', N'admin', 1, NULL)
INSERT [dbo].[usuario] ([id], [username], [contra], [id_empleado], [fecha_creacion]) VALUES (2, N'admin.jorge', N'12345', 2, NULL)
INSERT [dbo].[usuario] ([id], [username], [contra], [id_empleado], [fecha_creacion]) VALUES (4, N'Akhi', N'12345', 3, CAST(N'2024-11-22T10:06:11.730' AS DateTime))
GO
INSERT [dbo].[usuario_permiso_empleado] ([id], [id_usuario_rol_empleado], [id_permiso]) VALUES (1, 1, 1)
INSERT [dbo].[usuario_permiso_empleado] ([id], [id_usuario_rol_empleado], [id_permiso]) VALUES (2, 2, 1)
GO
INSERT [dbo].[usuario_rol_empleado] ([id], [id_rol_perfil_empleado], [id_usuario], [id_estado]) VALUES (1, 1, 1, 1)
INSERT [dbo].[usuario_rol_empleado] ([id], [id_rol_perfil_empleado], [id_usuario], [id_estado]) VALUES (2, 2, 2, 1)
GO
INSERT [dbo].[venta_producto] ([id], [fecha], [num_comprobante], [subtotal], [impuesto], [descuento], [Total], [tipo_comprobante], [estado], [id_empleado], [id_sucursal], [id_cliente], [id_tipo_pago]) VALUES (1, CAST(N'2024-11-18T21:33:19.957' AS DateTime), N'FAC0001', CAST(1000.00 AS Decimal(9, 2)), CAST(150.00 AS Decimal(9, 2)), CAST(50.00 AS Decimal(9, 2)), CAST(1100.00 AS Decimal(9, 2)), 1, 1, 1, 1, 1, 2)
GO
SET IDENTITY_INSERT [dbo].[venta_producto_temp] ON 

INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (9, 1, 14, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (10, 1, 25, 1, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (11, 1, 14, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (12, 1, 25, 1, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (13, 1, 14, 2, CAST(100.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (14, 1, 25, 1, CAST(200.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (15, 2, 17, 3, CAST(150.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (16, 2, 16, 1, CAST(250.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (17, 3, 23, 5, CAST(50.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (25, 11, 19, 1, CAST(0.90 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (26, 12, 14, 1, CAST(0.75 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (27, 13, 30, 3, CAST(2.50 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (28, 14, 22, 2, CAST(2.50 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (29, 15, 18, 1, CAST(1.20 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (30, 16, 17, 1, CAST(2.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (31, 16, 19, 2, CAST(0.90 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (32, 16, 26, 1, CAST(6.00 AS Decimal(10, 2)))
INSERT [dbo].[venta_producto_temp] ([id], [id_venta], [id_producto], [cantidad], [precio_unitario]) VALUES (33, 17, 27, 1, CAST(3.80 AS Decimal(10, 2)))
SET IDENTITY_INSERT [dbo].[venta_producto_temp] OFF
GO
SET IDENTITY_INSERT [dbo].[venta_temp] ON 

INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (1, CAST(N'2024-12-02T12:44:32.063' AS DateTime), 1, CAST(0.00 AS Decimal(10, 2)), 1, NULL)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (2, CAST(N'2024-12-02T12:44:32.063' AS DateTime), 2, CAST(0.00 AS Decimal(10, 2)), 1, NULL)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (3, CAST(N'2024-12-02T12:44:32.063' AS DateTime), NULL, CAST(0.00 AS Decimal(10, 2)), 1, NULL)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (7, CAST(N'2024-12-02T17:48:14.237' AS DateTime), 1, CAST(20.40 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (9, CAST(N'2024-12-02T17:49:43.050' AS DateTime), 1, CAST(20.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (11, CAST(N'2024-12-02T18:08:24.300' AS DateTime), 1, CAST(1.04 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (12, CAST(N'2024-12-02T18:16:59.930' AS DateTime), 1, CAST(0.86 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (13, CAST(N'2024-12-02T18:18:18.763' AS DateTime), 1, CAST(0.00 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (14, CAST(N'2024-12-02T18:23:33.283' AS DateTime), 1, CAST(5.75 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (15, CAST(N'2024-12-02T18:40:28.297' AS DateTime), 1, CAST(1.38 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (16, CAST(N'2024-12-02T21:48:28.883' AS DateTime), 1, CAST(17.94 AS Decimal(10, 2)), 1, 1)
INSERT [dbo].[venta_temp] ([id], [fecha], [id_cliente], [total], [estado], [id_empleado]) VALUES (17, CAST(N'2024-12-02T21:55:10.647' AS DateTime), 1, CAST(4.37 AS Decimal(10, 2)), 1, 3)
SET IDENTITY_INSERT [dbo].[venta_temp] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__producto__BCDE77E000BA13AC]    Script Date: 12/2/2024 10:04:34 PM ******/
ALTER TABLE [dbo].[producto] ADD UNIQUE NONCLUSTERED 
(
	[codigoProducto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[apertura_caja] ADD  DEFAULT (getdate()) FOR [fecha_apertura]
GO
ALTER TABLE [dbo].[apertura_caja] ADD  DEFAULT (getdate()) FOR [fecha_cierre]
GO
ALTER TABLE [dbo].[caja] ADD  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[cliente] ADD  DEFAULT (getdate()) FOR [fecha_registro]
GO
ALTER TABLE [dbo].[compra_producto] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[empleado_telefono] ADD  DEFAULT ('No tiene') FOR [telefono]
GO
ALTER TABLE [dbo].[movimiento_caja] ADD  DEFAULT (getdate()) FOR [fecha_mov]
GO
ALTER TABLE [dbo].[movimiento_inventario] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[orden_compra_producto] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[pedido] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[permiso] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[producto_temp] ADD  DEFAULT ((0)) FOR [stock]
GO
ALTER TABLE [dbo].[producto_temp] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[producto_temp] ADD  DEFAULT (getdate()) FOR [fecha_registro]
GO
ALTER TABLE [dbo].[promocion] ADD  DEFAULT ((0)) FOR [id_estado]
GO
ALTER TABLE [dbo].[proveedor_temp] ADD  DEFAULT (getdate()) FOR [fecha_registro]
GO
ALTER TABLE [dbo].[solicitud_compra] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[solicitud_compra] ADD  DEFAULT (getdate()) FOR [fecha_solicitud]
GO
ALTER TABLE [dbo].[sucursal_telefono] ADD  DEFAULT ('No tiene') FOR [telefono]
GO
ALTER TABLE [dbo].[telefono_proveedor] ADD  DEFAULT ('No tiene') FOR [telefono]
GO
ALTER TABLE [dbo].[tienda_telefono] ADD  DEFAULT ('No tiene') FOR [telefono]
GO
ALTER TABLE [dbo].[usuario] ADD  DEFAULT (getdate()) FOR [fecha_creacion]
GO
ALTER TABLE [dbo].[venta_producto] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[venta_servicio] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[venta_temp] ADD  DEFAULT (getdate()) FOR [fecha]
GO
ALTER TABLE [dbo].[venta_temp] ADD  DEFAULT ((1)) FOR [estado]
GO
ALTER TABLE [dbo].[apertura_caja]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[apertura_caja]  WITH CHECK ADD FOREIGN KEY([id_caja])
REFERENCES [dbo].[caja] ([id_caja])
GO
ALTER TABLE [dbo].[apertura_caja]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[barrio]  WITH CHECK ADD FOREIGN KEY([idMun])
REFERENCES [dbo].[municipio] ([idMun])
GO
ALTER TABLE [dbo].[caja]  WITH CHECK ADD FOREIGN KEY([estado_caja])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[cargo]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[compania_telefono]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[compra_producto]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[compra_producto]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[compra_producto]  WITH CHECK ADD FOREIGN KEY([id_orden_compra])
REFERENCES [dbo].[orden_compra_producto] ([id])
GO
ALTER TABLE [dbo].[compra_producto]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[compra_producto]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[costo_producto]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[costo_producto]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[detalle_compra]  WITH CHECK ADD FOREIGN KEY([id_compra])
REFERENCES [dbo].[compra_producto] ([id])
GO
ALTER TABLE [dbo].[detalle_compra]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[detalle_orden_compra]  WITH CHECK ADD FOREIGN KEY([id_orden_compra])
REFERENCES [dbo].[orden_compra_producto] ([id])
GO
ALTER TABLE [dbo].[detalle_orden_compra]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([id_pedido])
REFERENCES [dbo].[pedido] ([id])
GO
ALTER TABLE [dbo].[detalle_pedido]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[detalle_solicitud]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[detalle_solicitud]  WITH CHECK ADD FOREIGN KEY([id_solicitud])
REFERENCES [dbo].[solicitud_compra] ([id])
GO
ALTER TABLE [dbo].[detalle_venta_producto]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[detalle_venta_producto]  WITH CHECK ADD FOREIGN KEY([id_promo])
REFERENCES [dbo].[promocion] ([id])
GO
ALTER TABLE [dbo].[detalle_venta_producto]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta_producto] ([id])
GO
ALTER TABLE [dbo].[detalle_venta_servicio]  WITH CHECK ADD FOREIGN KEY([id_promo])
REFERENCES [dbo].[promocion] ([id])
GO
ALTER TABLE [dbo].[detalle_venta_servicio]  WITH CHECK ADD FOREIGN KEY([id_servicio])
REFERENCES [dbo].[servicio] ([id])
GO
ALTER TABLE [dbo].[detalle_venta_servicio]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta_servicio] ([id])
GO
ALTER TABLE [dbo].[direccion_tienda]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[direccion_tienda]  WITH CHECK ADD FOREIGN KEY([id_barrio])
REFERENCES [dbo].[barrio] ([idB])
GO
ALTER TABLE [dbo].[direccion_tienda]  WITH CHECK ADD FOREIGN KEY([id_tienda])
REFERENCES [dbo].[tienda] ([id])
GO
ALTER TABLE [dbo].[email_empleado]  WITH CHECK ADD FOREIGN KEY([empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[email_empleado]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[empleado_direccion]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[empleado_direccion]  WITH CHECK ADD FOREIGN KEY([idBarrio])
REFERENCES [dbo].[barrio] ([idB])
GO
ALTER TABLE [dbo].[empleado_direccion]  WITH CHECK ADD FOREIGN KEY([idEmpleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[empleado_telefono]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[empleado_telefono]  WITH CHECK ADD FOREIGN KEY([id_comp])
REFERENCES [dbo].[compania_telefono] ([id])
GO
ALTER TABLE [dbo].[empleado_telefono]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[historial_cargo]  WITH CHECK ADD FOREIGN KEY([id_cargo])
REFERENCES [dbo].[cargo] ([id])
GO
ALTER TABLE [dbo].[historial_cargo]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[historial_cargo]  WITH CHECK ADD  CONSTRAINT [FK_historial_cargo_estado] FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[historial_cargo] CHECK CONSTRAINT [FK_historial_cargo_estado]
GO
ALTER TABLE [dbo].[historial_costo_producto]  WITH CHECK ADD FOREIGN KEY([id_costo])
REFERENCES [dbo].[costo_producto] ([id])
GO
ALTER TABLE [dbo].[historial_precio_producto]  WITH CHECK ADD FOREIGN KEY([id_precio])
REFERENCES [dbo].[precio_producto] ([id])
GO
ALTER TABLE [dbo].[historial_precio_servicio]  WITH CHECK ADD FOREIGN KEY([id_precio])
REFERENCES [dbo].[precio_servicio] ([id])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[inventario]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[movimiento_caja]  WITH CHECK ADD FOREIGN KEY([id_apertura])
REFERENCES [dbo].[apertura_caja] ([id])
GO
ALTER TABLE [dbo].[movimiento_caja]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[movimiento_caja]  WITH CHECK ADD FOREIGN KEY([tipo_movimeinto])
REFERENCES [dbo].[tipo_movimiento_caja] ([id])
GO
ALTER TABLE [dbo].[movimiento_inventario]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[movimiento_inventario]  WITH CHECK ADD FOREIGN KEY([id_mov])
REFERENCES [dbo].[tipo_movimiento_inv] ([id])
GO
ALTER TABLE [dbo].[movimiento_inventario]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[movimiento_inventario]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[municipio]  WITH CHECK ADD FOREIGN KEY([idDep])
REFERENCES [dbo].[departamento] ([idDep])
GO
ALTER TABLE [dbo].[orden_compra_producto]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[orden_compra_producto]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[orden_compra_producto]  WITH CHECK ADD FOREIGN KEY([id_pedido])
REFERENCES [dbo].[pedido] ([id])
GO
ALTER TABLE [dbo].[orden_compra_producto]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[orden_compra_producto]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_solicitud])
REFERENCES [dbo].[solicitud_compra] ([id])
GO
ALTER TABLE [dbo].[pedido]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[perfil]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[perfil_cargo]  WITH CHECK ADD FOREIGN KEY([id_cargo])
REFERENCES [dbo].[cargo] ([id])
GO
ALTER TABLE [dbo].[perfil_cargo]  WITH CHECK ADD FOREIGN KEY([id_perfil])
REFERENCES [dbo].[perfil] ([id])
GO
ALTER TABLE [dbo].[perfil_empleado]  WITH CHECK ADD FOREIGN KEY([id_cargo])
REFERENCES [dbo].[historial_cargo] ([id])
GO
ALTER TABLE [dbo].[perfil_empleado]  WITH CHECK ADD FOREIGN KEY([id_perfil])
REFERENCES [dbo].[perfil] ([id])
GO
ALTER TABLE [dbo].[precio_producto]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[precio_producto]  WITH CHECK ADD FOREIGN KEY([id_costo])
REFERENCES [dbo].[costo_producto] ([id])
GO
ALTER TABLE [dbo].[precio_producto]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[precio_servicio]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[precio_servicio]  WITH CHECK ADD FOREIGN KEY([id_servicio])
REFERENCES [dbo].[servicio] ([id])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([id_marca])
REFERENCES [dbo].[producto_marca] ([id])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([id_Subcategoria])
REFERENCES [dbo].[producto_sub_categoria] ([id])
GO
ALTER TABLE [dbo].[producto]  WITH CHECK ADD FOREIGN KEY([id_UM])
REFERENCES [dbo].[unidad_medida] ([id])
GO
ALTER TABLE [dbo].[producto_categoria]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[producto_marca]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[producto_modelo]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[producto_modelo]  WITH CHECK ADD FOREIGN KEY([id_marca])
REFERENCES [dbo].[producto_marca] ([id])
GO
ALTER TABLE [dbo].[producto_proveedor]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto] ([id])
GO
ALTER TABLE [dbo].[producto_proveedor]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[producto_sub_categoria]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[producto_sub_categoria]  WITH CHECK ADD FOREIGN KEY([id_cat])
REFERENCES [dbo].[producto_categoria] ([id])
GO
ALTER TABLE [dbo].[producto_temp]  WITH CHECK ADD FOREIGN KEY([id_Subcategoria])
REFERENCES [dbo].[producto_sub_categoria] ([id])
GO
ALTER TABLE [dbo].[producto_temp]  WITH CHECK ADD  CONSTRAINT [FK_producto_proveedor] FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor_temp] ([id])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[producto_temp] CHECK CONSTRAINT [FK_producto_proveedor]
GO
ALTER TABLE [dbo].[promocion]  WITH CHECK ADD FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tipo_promo] ([id])
GO
ALTER TABLE [dbo].[proveedor]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[proveedor]  WITH CHECK ADD FOREIGN KEY([id_identificacion])
REFERENCES [dbo].[proveedor_identificacion] ([id])
GO
ALTER TABLE [dbo].[proveedor]  WITH CHECK ADD FOREIGN KEY([tipo])
REFERENCES [dbo].[tipo_proveedor] ([id])
GO
ALTER TABLE [dbo].[proveedor_correo]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[proveedor_correo]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[proveedor_direccion]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[proveedor_direccion]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[proveedor_direccion]  WITH CHECK ADD FOREIGN KEY([idBarrio])
REFERENCES [dbo].[barrio] ([idB])
GO
ALTER TABLE [dbo].[proveedor_identificacion]  WITH CHECK ADD FOREIGN KEY([tipo])
REFERENCES [dbo].[tipo_identificacion] ([id])
GO
ALTER TABLE [dbo].[proveedor_identificacion]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[rol]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[rol_perfil_empleado]  WITH CHECK ADD FOREIGN KEY([id_perfil_empleado])
REFERENCES [dbo].[perfil_empleado] ([id])
GO
ALTER TABLE [dbo].[rol_perfil_empleado]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id])
GO
ALTER TABLE [dbo].[servicio]  WITH CHECK ADD  CONSTRAINT [fk_tipo_servicio] FOREIGN KEY([id_tipo_servicio])
REFERENCES [dbo].[tipo_servicio] ([id])
GO
ALTER TABLE [dbo].[servicio] CHECK CONSTRAINT [fk_tipo_servicio]
GO
ALTER TABLE [dbo].[solicitud_compra]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[solicitud_compra]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[solicitud_compra]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[sucursal]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[sucursal_telefono]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[sucursal_telefono]  WITH CHECK ADD FOREIGN KEY([id_comp])
REFERENCES [dbo].[compania_telefono] ([id])
GO
ALTER TABLE [dbo].[sucursal_telefono]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[sucurusal_direccion]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[sucurusal_direccion]  WITH CHECK ADD FOREIGN KEY([id_barrio])
REFERENCES [dbo].[barrio] ([idB])
GO
ALTER TABLE [dbo].[sucurusal_direccion]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[telefono_proveedor]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[telefono_proveedor]  WITH CHECK ADD FOREIGN KEY([id_comp])
REFERENCES [dbo].[compania_telefono] ([id])
GO
ALTER TABLE [dbo].[telefono_proveedor]  WITH CHECK ADD FOREIGN KEY([id_proveedor])
REFERENCES [dbo].[proveedor] ([id])
GO
ALTER TABLE [dbo].[tienda_telefono]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[tienda_telefono]  WITH CHECK ADD FOREIGN KEY([id_comp])
REFERENCES [dbo].[compania_telefono] ([id])
GO
ALTER TABLE [dbo].[tienda_telefono]  WITH CHECK ADD FOREIGN KEY([id_tienda])
REFERENCES [dbo].[tienda] ([id])
GO
ALTER TABLE [dbo].[tipo_movimiento_caja]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[tipo_unidad_medida]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[unidad_medida]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[unidad_medida]  WITH CHECK ADD FOREIGN KEY([id_tipo])
REFERENCES [dbo].[tipo_unidad_medida] ([id])
GO
ALTER TABLE [dbo].[usuario]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[usuario_permiso_empleado]  WITH CHECK ADD FOREIGN KEY([id_permiso])
REFERENCES [dbo].[permiso] ([id])
GO
ALTER TABLE [dbo].[usuario_permiso_empleado]  WITH CHECK ADD FOREIGN KEY([id_usuario_rol_empleado])
REFERENCES [dbo].[usuario_rol_empleado] ([id])
GO
ALTER TABLE [dbo].[usuario_rol_empleado]  WITH CHECK ADD FOREIGN KEY([id_estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[usuario_rol_empleado]  WITH CHECK ADD FOREIGN KEY([id_rol_perfil_empleado])
REFERENCES [dbo].[rol_perfil_empleado] ([id])
GO
ALTER TABLE [dbo].[usuario_rol_empleado]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id])
GO
ALTER TABLE [dbo].[venta_producto]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[venta_producto]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id])
GO
ALTER TABLE [dbo].[venta_producto]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[venta_producto]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[venta_producto]  WITH CHECK ADD FOREIGN KEY([tipo_comprobante])
REFERENCES [dbo].[tipo_comprobante] ([id])
GO
ALTER TABLE [dbo].[venta_producto]  WITH CHECK ADD  CONSTRAINT [fk_tipo_pago_prod] FOREIGN KEY([id_tipo_pago])
REFERENCES [dbo].[tipo_pago] ([id])
GO
ALTER TABLE [dbo].[venta_producto] CHECK CONSTRAINT [fk_tipo_pago_prod]
GO
ALTER TABLE [dbo].[venta_producto_temp]  WITH CHECK ADD FOREIGN KEY([id_producto])
REFERENCES [dbo].[producto_temp] ([id])
GO
ALTER TABLE [dbo].[venta_producto_temp]  WITH CHECK ADD FOREIGN KEY([id_venta])
REFERENCES [dbo].[venta_temp] ([id])
GO
ALTER TABLE [dbo].[venta_servicio]  WITH CHECK ADD FOREIGN KEY([estado])
REFERENCES [dbo].[estado] ([id])
GO
ALTER TABLE [dbo].[venta_servicio]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id])
GO
ALTER TABLE [dbo].[venta_servicio]  WITH CHECK ADD FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[venta_servicio]  WITH CHECK ADD FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[sucursal] ([id])
GO
ALTER TABLE [dbo].[venta_servicio]  WITH CHECK ADD FOREIGN KEY([tipo_comprobante])
REFERENCES [dbo].[tipo_comprobante] ([id])
GO
ALTER TABLE [dbo].[venta_servicio]  WITH CHECK ADD  CONSTRAINT [fk_tipo_pago_serv] FOREIGN KEY([id_tipo_pago])
REFERENCES [dbo].[tipo_pago] ([id])
GO
ALTER TABLE [dbo].[venta_servicio] CHECK CONSTRAINT [fk_tipo_pago_serv]
GO
ALTER TABLE [dbo].[venta_temp]  WITH CHECK ADD  CONSTRAINT [FK_venta_temp_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[empleado] ([id])
GO
ALTER TABLE [dbo].[venta_temp] CHECK CONSTRAINT [FK_venta_temp_empleado]
GO
ALTER TABLE [dbo].[email_empleado]  WITH CHECK ADD  CONSTRAINT [ck_email_empleado] CHECK  (([email] like '__%@___%.___%'))
GO
ALTER TABLE [dbo].[email_empleado] CHECK CONSTRAINT [ck_email_empleado]
GO
ALTER TABLE [dbo].[proveedor_correo]  WITH CHECK ADD CHECK  (([email] like '__%@___%.___%'))
GO
ALTER TABLE [dbo].[venta_producto_temp]  WITH CHECK ADD CHECK  (([cantidad]>(0)))
GO
ALTER TABLE [dbo].[venta_temp]  WITH CHECK ADD  CONSTRAINT [CHK_Venta_Total] CHECK  (([total]>=(0)))
GO
ALTER TABLE [dbo].[venta_temp] CHECK CONSTRAINT [CHK_Venta_Total]
GO
/****** Object:  StoredProcedure [dbo].[AuthUsuario]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[AuthUsuario]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizar_producto_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_actualizar_producto_temp]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_actualizar_proveedor_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_actualizar_proveedor_temp]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_asignar_empleado_cargo]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_asignar_empleado_cargo]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_det_empleado]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_buscar_det_empleado]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_empleado_cargo]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_buscar_empleado_cargo]

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
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_producto_categoria]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_buscar_producto_categoria]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_buscar_subcategoria]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_buscar_subcategoria]
	@id int

AS
BEGIN
   
    SELECT psc.id, psc.nombre
    FROM producto_sub_categoria psc
    
	where id= @id and estado = 1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_calcular_precio_venta]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_calcular_precio_venta]
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
      AND c.estado = 1;  -- Asumiendo que 1 es el estado activo

    -- Obtener el gasto y margen de ganancia desde la tabla precio_producto
    SELECT @gasto = p.gasto, @margen_ganancia = p.margen_ganancia
    FROM precio_producto p
    WHERE p.id_producto = @id_producto
      AND p.estado = 1;  -- Asumiendo que 1 es el estado activo

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
GO
/****** Object:  StoredProcedure [dbo].[sp_cargo_listar]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[sp_cargo_listar]

as
begin 
	select id, nombre,id_estado from cargo
	where id_estado =1
end
GO
/****** Object:  StoredProcedure [dbo].[sp_control_acceso_cargo]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  procedure [dbo].[sp_control_acceso_cargo]
	@eid int
 as
 begin
	select 
		hc.id_cargo as cargo
	from historial_cargo hc
	inner join cargo c on c.id = hc.id_cargo
	where hc.id_estado =1 and hc.id_empleado = @eid
 end

GO
/****** Object:  StoredProcedure [dbo].[sp_control_acceso_u]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_control_acceso_u]
	@UUID int
AS
BEGIN
SELECT p.nombre as Accesso

	FROM usuario_rol_empleado ure
	INNER JOIN rol_perfil_empleado rpe ON ure.id_rol_perfil_empleado = rpe.id
	INNER JOIN perfil_empleado pe on rpe.id_perfil_empleado = pe.id
	INNER JOIN perfil p on pe.id_perfil = p.id
	where ure.id_usuario = @UUID
END
GO
/****** Object:  StoredProcedure [dbo].[sp_crear_producto_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_crear_producto_temp]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_crear_proveedor_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_crear_proveedor_temp]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_crear_usuario]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_crear_usuario]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_CrearEmpleado]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_CrearEmpleado]
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

    -- Insercion de los datos personales del nuevo empleado
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
/****** Object:  StoredProcedure [dbo].[sp_datos_tienda]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_datos_tienda]
AS
BEGIN
	Select id,RUC,nombre,razon_social,telefono from tienda
	where id=1
END
GO
/****** Object:  StoredProcedure [dbo].[sp_desactivar_empleado]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_desactivar_empleado]
    @EmpleadoID INT,
	@estado int
AS
BEGIN
     UPDATE empleado
		SET 
		id_estado = @estado
		WHERE id = @EmpleadoID;
 END
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_empleado]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_eliminar_empleado]
    @EmpleadoID INT
AS
BEGIN
    DELETE FROM empleado
    WHERE id = @EmpleadoID;
    
    SELECT @@ROWCOUNT AS RowsAffected;  
END
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_producto_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_eliminar_producto_temp]
    @id INT,
	@estado bit
AS
BEGIN
     UPDATE producto_temp
    SET estado = @estado 
    WHERE id = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_proveedor_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_eliminar_proveedor_temp]
    @id INT,
	@estado INT

AS
BEGIN
    UPDATE proveedor_temp
    SET estado =0 

    WHERE id = @id;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_eliminar_usuario]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_eliminar_usuario]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_FlistarProducto]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROCEDURE [dbo].[sp_FlistarProducto]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_FlistarProducto_all]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_FlistarProducto_all]
AS
BEGIN
	SELECT p.id as ID,p.nombre as PRODUCTO,pc.nombre as CATEGORIA,psc.nombre AS SUBCATEGORIA, p.codigoProducto as CODIGO, pp.precio_venta as PRECIO FROM producto p
	INNER JOIN producto_sub_categoria psc ON p.id_Subcategoria = psc.id
    INNER JOIN producto_categoria pc ON psc.id_cat = pc.id

	INNER JOIN costo_producto cp ON p.id = cp.id_producto
    INNER JOIN precio_producto pp ON cp.id = pp.id_costo

END
GO
/****** Object:  StoredProcedure [dbo].[sp_FlistarServicio_all]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_FlistarServicio_all]
AS
BEGIN
	SELECT s.nombre as SERVICIO, s.id as CODIGO, ps.precio_venta as PRECIO FROM servicio s
	
    INNER JOIN precio_servicio ps ON s.id = ps.id_servicio

END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_categoria]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertar_categoria]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_det_venta_prod]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertar_det_venta_prod]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_EmpleadoTelefono]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_insertar_EmpleadoTelefono]
	@telefono VARCHAR(15) = NULL,
    @id_compania_telefono INT = NULL,
	@id_empleado INT,
	@id_estado INT
AS
BEGIN
        INSERT INTO empleado_telefono (telefono, id_comp, id_empleado, estado)
        VALUES (@telefono, @id_compania_telefono, @id_empleado, @id_estado);
END
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_solicitud_compra]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_insertar_solicitud_compra]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_sub_categoria]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_insertar_sub_categoria]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_insertar_venta_producto]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_insertar_venta_producto]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_Leer_EmpleadoID]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Leer_EmpleadoID]
    @EmpleadoID INT
AS
BEGIN
    SELECT id, nombre1, nombre2, apellido1, apellido2, genero, fecha_nacimiento, identificacion, id_estado, id_sucursal
    FROM empleado
    WHERE id = @EmpleadoID;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_Leer_Empleados_Todos]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_Leer_Empleados_Todos]
AS
BEGIN
    SELECT id, nombre1, nombre2, apellido1, apellido2, CASE 
            WHEN genero = 1 THEN 'Masculino'
            WHEN genero = 0 THEN 'Femenino'
            ELSE 'Desconocido'
        END AS genero, fecha_nacimiento, identificacion, id_estado, id_sucursal
    FROM empleado;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_leer_productos_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_leer_productos_temp]
AS
BEGIN
    SELECT 
		p.id as ID,
		p.nombre as PRODUCTO, 
		pc.nombre as CATEGORIA,
		psc.nombre AS SUBCATEGORIA, 
		
		p.precio as PRECIO 
    FROM producto_temp p
    INNER JOIN proveedor_temp pr ON p.id_proveedor = pr.id
	INNER JOIN producto_sub_categoria psc ON p.id_Subcategoria = psc.id
    INNER JOIN producto_categoria pc ON psc.id_cat = pc.id
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_leer_proveedores_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_leer_proveedores_temp]
AS
BEGIN
    SELECT * 
    FROM proveedor_temp;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_lista_acceso]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 create procedure [dbo].[sp_lista_acceso]
	@cargo int 
 as
 begin 
  select p.nombre as 'PERFILES', pc.id_perfil from perfil p
  inner join perfil_cargo pc on pc.id_perfil= p.id
	where pc.id_cargo =@cargo
 end
GO
/****** Object:  StoredProcedure [dbo].[sp_listar_comp_tel]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_listar_comp_tel]
AS
BEGIN
	SELECT id,nombre,siglas,estado from compania_telefono
END	
GO
/****** Object:  StoredProcedure [dbo].[sp_listar_det_empleado]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_listar_det_empleado]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_listar_empleado_cargo]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  procedure [dbo].[sp_listar_empleado_cargo]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_listar_ventas]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_listar_ventas]

@fecha_inicio datetime,
@fecha_fin datetime,
@eid int

AS
BEGIN

-- Reporte de ventas con filtros por fecha y monto
	SELECT 
		v.id AS VentaID,
		v.fecha AS FechaVenta,
		v.total AS MontoTotal,
		c.nombre_completo AS Cliente,
		CONCAT(e.nombre1,' ',e.[apellido1]) AS Empleado,
		v.estado AS Estado
	FROM 
		venta_temp v
	LEFT JOIN cliente c ON v.id_cliente = c.id -- Asumiendo una tabla cliente
	LEFT JOIN empleado e ON v.id_empleado = e.id -- Relación con empleado
	WHERE 
		v.fecha BETWEEN @fecha_inicio AND @fecha_fin -- Filtro por rango de fechas
		AND  e.id = @eid
	ORDER BY 
		v.fecha DESC; -- Ordenar por fecha de venta
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listarSucursales_All]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_listarSucursales_All]
AS
BEGIN
	SELECT id as ID, nombre as Sucursal, estado as Estado FROM sucursal
END
GO
/****** Object:  StoredProcedure [dbo].[sp_listarSucursales_All_nombre]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_listarSucursales_All_nombre]
AS
BEGIN
	SELECT  nombre FROM sucursal
END
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_barrio]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_mostrar_barrio]
	@idMun INT
AS
BEGIN
	SELECT ba.idB,ba.nombreB 
	FROM barrio ba
	INNER JOIN municipio mun ON mun.idMun = ba.idB
	WHERE mun.idMun = @idMun
END
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_categoria]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_mostrar_categoria]
 
AS
BEGIN
   
    SELECT id, nombre, descripcion, estado
    FROM producto_categoria
    
END
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_dept]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_mostrar_dept]
AS
BEGIN
	SELECT idDep,nombreDep FROM departamento
END
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_informacion_productos]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_mostrar_informacion_productos]
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
    
    -- Unir con la marca y modelo de producto
    INNER JOIN producto_marca pm ON p.id_marca = pm.id
    INNER JOIN producto_modelo pmo ON pm.id = pmo.id_marca
    
    -- Unir con la unidad de medida
    INNER JOIN unidad_medida um ON p.id_UM = um.id

    -- Unir con el costo y precio del producto
    INNER JOIN costo_producto cp ON p.id = cp.id_producto
    INNER JOIN precio_producto pp ON cp.id = pp.id_costo

    -- Unir con el proveedor del producto
    INNER JOIN producto_proveedor ppv ON p.id = ppv.id_producto
    INNER JOIN proveedor prov ON ppv.id_proveedor = prov.id
    
    WHERE p.estado = 1 -- Solo productos activos
    ORDER BY p.nombre;
END;
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_municipio]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[sp_mostrar_municipio]
	@idDept INT
AS
BEGIN
	SELECT mun.idMun,mun.nombreMun 
	FROM municipio mun
	INNER JOIN departamento d ON mun.idDep = d.idDep
	WHERE d.idDep = @idDept
END
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_subcategoria]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_mostrar_subcategoria]
AS
BEGIN
   
    SELECT psc.id, psc.nombre as SUBCATEGORIA,pc.nombre as CATEGORIA, psc.descripcion as DESCRIPCION, psc.estado
    FROM producto_sub_categoria psc
    INNER JOIN producto_categoria pc ON pc.id=psc.id_cat
END
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_subcategoriaYCate]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_mostrar_subcategoriaYCate]
	@idCate int
AS
BEGIN
   
    SELECT psc.id, psc.nombre as SUBCATEGORIA,pc.nombre as CATEGORIA, psc.descripcion as DESCRIPCION, psc.estado
    FROM producto_sub_categoria psc
    INNER JOIN producto_categoria pc ON pc.id=psc.id_cat
	WHERE  pc.nombre = @idCate
END

GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_usuario]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_mostrar_usuario]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_mostrar_usuario_all]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_mostrar_usuario_all]
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
GO
/****** Object:  StoredProcedure [dbo].[sp_reg_proveedor]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_reg_proveedor](
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
GO
/****** Object:  StoredProcedure [dbo].[sp_UpdateEmpleado]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_UpdateEmpleado]
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
    
    SELECT @@ROWCOUNT AS RowsAffected;  -- Return the number of rows affected
END
GO
/****** Object:  StoredProcedure [dbo].[sp_venta_insertear_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  PROCEDURE [dbo].[sp_venta_insertear_temp]
	@id_cliente int,
	@total DECIMAL(10, 2),
	@id_empleado int
AS
	
BEGIN
	INSERT INTO [dbo].[venta_temp]
           ([id_cliente]
           ,[total]
           ,[estado]
           ,[id_empleado])
		VALUES(@id_cliente,@total,1,@id_empleado);

		 DECLARE @venta_id INT = SCOPE_IDENTITY();

    -- Devolver el ID de la venta
    SELECT @venta_id AS VentaID;
END
GO
/****** Object:  StoredProcedure [dbo].[sp_venta_producto_insertar_temp]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_venta_producto_insertar_temp]
	@id_venta int,
	@id_prod int,
	@qty int,
	@precioU decimal(10,2)
AS
	
BEGIN

INSERT INTO venta_producto_temp (id_venta, id_producto, cantidad, precio_unitario)
		VALUES(@id_venta,@id_prod,@qty,@precioU)
END
GO
/****** Object:  Trigger [dbo].[tr_actualizar_estado_empleado_dir]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create  trigger [dbo].[tr_actualizar_estado_empleado_dir]
on [dbo].[empleado_direccion]
after insert
as
begin
DECLARE @empleado int;
	
	SELECT @empleado = idEmpleado 
    FROM inserted;
	 UPDATE empleado_direccion
    SET estado = 2
    WHERE estado = @empleado 
      AND estado <> 2
      AND id <> (SELECT MAX(id) FROM empleado_telefono WHERE idEmpleado = @empleado);

	UPDATE empleado_direccion
    SET estado = 1
    WHERE id = (SELECT MAX(id) FROM empleado_telefono WHERE idEmpleado = @empleado)
end
GO
ALTER TABLE [dbo].[empleado_direccion] ENABLE TRIGGER [tr_actualizar_estado_empleado_dir]
GO
/****** Object:  Trigger [dbo].[tr_actualizar_estado_empleado_tel]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  trigger [dbo].[tr_actualizar_estado_empleado_tel]
on [dbo].[empleado_telefono]
after insert
as
begin
DECLARE @empleado int;
	
	SELECT @empleado = id_empleado 
    FROM inserted;
	 UPDATE empleado_telefono
    SET estado = 2
    WHERE id_empleado = @empleado 
      AND estado <> 2
      AND id <> (SELECT MAX(id) FROM empleado_telefono WHERE id_empleado = @empleado);

	UPDATE empleado_telefono
    SET estado = 1
    WHERE id = (SELECT MAX(id) FROM empleado_telefono WHERE id_empleado = @empleado)
end

GO
ALTER TABLE [dbo].[empleado_telefono] ENABLE TRIGGER [tr_actualizar_estado_empleado_tel]
GO
/****** Object:  Trigger [dbo].[tr_actualizar_estado_cargo]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create  trigger [dbo].[tr_actualizar_estado_cargo]
on [dbo].[historial_cargo]
after insert
as
begin
DECLARE @empleado int;
	
	SELECT @empleado = id_empleado 
    FROM inserted;
	 UPDATE historial_cargo
    SET id_estado = 2
    WHERE id_empleado = @empleado 
      AND id_estado <> 2
      AND id <> (SELECT MAX(id) FROM historial_cargo WHERE id_empleado = @empleado);

	UPDATE historial_cargo
    SET id_estado = 1
    WHERE id = (SELECT MAX(id) FROM historial_cargo WHERE id_empleado = @empleado)
end

GO
ALTER TABLE [dbo].[historial_cargo] ENABLE TRIGGER [tr_actualizar_estado_cargo]
GO
/****** Object:  Trigger [dbo].[trg_reducir_stock]    Script Date: 12/2/2024 10:04:34 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE  TRIGGER [dbo].[trg_reducir_stock]
ON [dbo].[venta_producto_temp]
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
GO
ALTER TABLE [dbo].[venta_producto_temp] ENABLE TRIGGER [trg_reducir_stock]
GO
