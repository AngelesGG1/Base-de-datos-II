CREATE TABLE DireccionEmpleado (
PK_DireccionEmpleado integer PRIMARY KEY,
Calle varchar2(100) NOT NULL,
Colonia varchar2(100) NOT NULL,
CP char(5) NOT NULL,
Estado varchar2(50) NOT NULL,
Ciudad varchar2(100) NOT NULL,
Num_Exterior varchar2(10) NOT NULL,
Num_Interior varchar2(10),
PK_Empleado integer
);

ALTER TABLE DireccionEmpleado ADD CONSTRAINT FK_Dire_Emp_Empleado FOREIGN KEY (PK_Empleado) REFERENCES Empleado(PK_Empleado);



CREATE TABLE TelefonoEmpleado(
PK_TelefonoEmpleado integer PRIMARY KEY,
Telefono_Movil varchar2(15) NOT NULL,
Telefono_Local varchar2(15) NOT NULL,
PK_Empleado integer
);

ALTER TABLE TelefonoEmpleado ADD CONSTRAINT FK_Tele_Emp_Empleado FOREIGN KEY (PK_Empleado) REFERENCES Empleado (PK_Empleado);


CREATE TABLE Empleado(
PK_Empleado integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Apellido_Paterno varchar2(50) NOT NULL,
Apellido_Materno varchar2(50) NOT NULL,
Correo varchar2(100) NOT NULL,
PK_Sucursal integer
);

ALTER TABLE Empleado ADD CONSTRAINT FK_Empleado_Sucursal FOREIGN KEY (PK_Sucursal) REFERENCES Sucursal (PK_Sucursal);


CREATE TABLE DetalleDevolucion(
PK_DetalleDevolucion integer PRIMARY KEY,
Cantidad NUMBER(10,2) NOT  NULL,
Motivo varchar2(200) NOT NULL,
PK_Devolucion integer,
PK_Producto integer
);

ALTER TABLE DetalleDevolucion ADD CONSTRAINT FK_Detalle_Dev_Devolucion FOREIGN KEY (PK_Devolucion) REFERENCES Devolucion (PK_Devolucion);

ALTER TABLE DetalleDevolucion ADD CONSTRAINT FK_Detalle_Dev_Producto FOREIGN KEY (PK_Producto) REFERENCES Producto (PK_Producto);


CREATE TABLE Rol(
PK_Rol integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL
);


CREATE TABLE Devolucion(
PK_Devolucion integer PRIMARY KEY,
Fecha DATE NOT NULL,
Motivo varchar2(200) NOT NULL,
PK_Venta integer,
PK_Empleado integer
);

ALTER TABLE Devolucion ADD CONSTRAINT FK_Devolucion_Venta FOREIGN KEY (PK_Venta) REFERENCES Venta(PK_Venta);

ALTER TABLE Devolucion ADD CONSTRAINT FK_Devolucion_Empleado FOREIGN KEY (PK_Empleado) REFERENCES Empleado(PK_Empleado);


CREATE TABLE Usuario(
PK_Usuario integer PRIMARY KEY,
Nombre_Usuario varchar2(50) NOT NULL,
Password varchar2(100) NOT NULL,
Correo varchar2(100) NOT NULL,
Status char(1) NOT NULL,
PK_Rol integer,
PK_Empleado integer
);

ALTER TABLE Usuario ADD CONSTRAINT FK_Usuario_PK_Rol FOREIGN KEY (PK_rol) REFERENCES Rol(PK_Rol);

ALTER TABLE usuario ADD CONSTRAINT FK_Usuario_PK_Empleado FOREIGN KEY (PK_Empleado) REFERENCES Empleado(PK_Empleado);


CREATE TABLE Turno(
PK_Turno integer PRIMARY KEY,
Hora_Inicio DATE NOT NULL,
Hora_Fin DATE NOT NULL,
PK_Empleado integer,
PK_Caja integer
);

ALTER TABLE Turno ADD CONSTRAINT FK_Turno_PK_Empleado FOREIGN KEY (PK_Empleado) REFERENCES Empleado(PK_Empleado);

ALTER TABLE Turno ADD CONSTRAINT FK_Turno_PK_Caja FOREIGN KEY (PK_Caja) REFERENCES Caja(PK_Caja);


CREATE TABLE Compra(
PK_Compra integer PRIMARY KEY,
Fecha DATE NOT NULL,
Total NUMBER(10,2) NOT NULL,
PK_Empleado integer,
PK_Proveedor integer,
PK_Sucursal integer
);

ALTER TABLE Compra ADD CONSTRAINT FK_Compra_PK_Empleado FOREIGN KEY (PK_Empleado) REFERENCES Empleado(PK_Empleado);

ALTER TABLE Compra ADD CONSTRAINT FK_Compra_PK_Proveedor FOREIGN KEY (PK_Proveedor) REFERENCES Proveedor(PK_Proveedor);

ALTER TABLE Compra ADD CONSTRAINT FK_Compra_PK_Sucursal FOREIGN KEY (PK_Sucursal) REFERENCES Sucursal(PK_Sucursal);


CREATE TABLE Sucursal(
PK_Sucursal integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
PK_DireccionSucursal integer
);

ALTER TABLE Sucursal ADD CONSTRAINT FK_Sucursal_PK_Direccion_Sucursal FOREIGN KEY (PK_DireccionSucursal) REFERENCES DireccionSucursal(PK_DireccionSucursal);


CREATE TABLE TelefonosSucursal(
PK_TelefonosSucursal integer PRIMARY KEY,
Telefono_Local varchar2(15)  NOT NULL,
Telefono_Movil varchar2(15) NOT NULL,
PK_Sucursal integer
);

ALTER TABLE TelefonosSucursal ADD CONSTRAINT FK_Tele_Suc_PK_Sucursal FOREIGN KEY (PK_Sucursal) REFERENCES Sucursal(PK_Sucursal);


CREATE TABLE DireccionSucursal(
PK_DireccionSucursal integer PRIMARY KEY,
Ciudad varchar2(100) NOT NULL,
Calle varchar2(100) NOT NULL,
Num_Interior varchar2(10),
Num_Exterior varchar2(10),
Colonia varchar2(100) NOT NULL,
CP char(5) NOT NULL,
Estado varchar2(50) NOT NULL
);


CREATE TABLE InventarioDeMovimientos(
PK_InventarioDeMovimientos integer PRIMARY KEY,
Tipo_Mov_E_S char(1) NOT NULL,
Cantidad number(10,2) NOT NULL,
Fecha DATE NOT NULL,
PK_Producto integer,
PK_Sucursal integer,
PK_DetalleVenta integer,
PK_DetalleCompra integer
);

ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_Inven_Mov_PK_Producto FOREIGN KEY (PK_Producto) REFERENCES Producto(PK_Producto);

ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_Inven_Mov_PK_Sucursal FOREIGN KEY (PK_Sucursal) REFERENCES Sucursal(PK_Sucursal);

ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_Inven_Mov_PK_DetalleVenta FOREIGN KEY (PK_DetalleVenta) REFERENCES DetalleVenta(PK_DetalleVenta);

ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_Inven_Mov_PK_DetalleCompra FOREIGN KEY (PK_DetalleCompra) REFERENCES DetalleCompra(PK_DetalleCompra);



CREATE TABLE DetalleCompra(
PK_DetalleCompra integer PRIMARY KEY,
Cantidad number(10,2) NOT NULL,
Precio_Unitario number(10,2) NOT NULL,
PK_compra integer,
PK_producto integer
);

ALTER TABLE DetalleCompra ADD CONSTRAINT FK_Detalle_Compra_PK_Compra FOREIGN KEY (PK_Compra) REFERENCES Compra(PK_Compra);

ALTER TABLE DetalleCompra ADD CONSTRAINT FK_Detalle_Compra_PK_Producto FOREIGN KEY (PK_Producto) REFERENCES Producto(PK_Producto);


CREATE TABLE Caja(
PK_Caja integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Status char(1) NOT NULL,
PK_Sucursal integer
);

ALTER TABLE Caja ADD CONSTRAINT FK_Caja_PK_Sucursal FOREIGN KEY (PK_Sucursal) REFERENCES Sucursal(PK_Sucursal);


CREATE TABLE MetodoDePago(
PK_MetodoDePago integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion varchar2(200) NOT NULL
);



CREATE TABLE Venta(
PK_Venta integer PRIMARY KEY,
Fecha  DATE NOT NULL,
Total number(10,2) NOT NULL,
PK_Cliente integer,
PK_Empleado integer,
PK_MetodoDePago integer,
PK_Caja integer
);

ALTER TABLE Venta ADD CONSTRAINT FK_Venta_PK_Cliente FOREIGN KEY (PK_Cliente) REFERENCES Cliente(PK_Cliente);

ALTER TABLE Venta ADD CONSTRAINT FK_Venta_PK_Empleado FOREIGN KEY (PK_Empleado) REFERENCES Empleado(PK_Empleado);

ALTER TABLE Venta ADD CONSTRAINT FK_Venta_PK_MetodoDePago FOREIGN KEY (PK_MetodoDePago) REFERENCES MetodoDePago(PK_MetodoDePago);

ALTER TABLE Venta ADD CONSTRAINT FK_Venta_PK_Caja FOREIGN KEY (PK_Caja) REFERENCES Caja(PK_Caja);


ALTER TABLE METODODEPAGO  DROP CONSTRAINT FK_Venta_PK_MetodoDePago;


CREATE TABLE DireccionCliente(
PK_DireccionCliente integer PRIMARY KEY,
Calle varchar2(100) NOT NULL,
Colonia varchar2(100) NOT NULL,
Num_Exterior varchar2(10) NOT NULL,
Num_Interior varchar2(10),
Estado varchar2(50) NOT NULL,
CP char(5) NOT NULL,
Ciudad varchar2(100) NOT NULL,
PK_Cliente integer
);

ALTER TABLE DireccionCliente ADD CONSTRAINT FK_Dire_Cliente_PK_Cliente FOREIGN KEY (PK_Cliente) REFERENCES Cliente(PK_Cliente);


CREATE TABLE Cliente(
PK_Cliente integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Apellido_Paterno varchar2(50) NOT NULL,
Apellido_Materno varchar2(50) NOT NULL,
Correo varchar2(100) NOT NULL,
PK_TelefonosCliente integer
);

ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_PK_TelefonosCliente FOREIGN KEY (PK_TelefonosCliente) REFERENCES TelefonosCliente(PK_TelefonosCliente);


CREATE TABLE TelefonosCliente(
PK_TelefonosCliente integer PRIMARY KEY,
Telefono_Movil varchar2(15) NOT NULL,
Telefono_Local varchar2(15) NOT NULL
);


CREATE TABLE Impuesto(
PK_Impuesto integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Porcentaje varchar2(50) NOT NULL
);


CREATE TABLE Producto(
PK_Producto integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
Descripcion varchar2(200) NOT NULL,
Stock_Actual NUMBER NOT NULL,
PK_Categoria integer,
PK_Proveedor integer,
PK_Impuesto integer
);

ALTER TABLE Producto ADD CONSTRAINT FK_Producto_PK_Categoria FOREIGN KEY (PK_Categoria) REFERENCES Categoria(PK_Categoria);

ALTER TABLE Producto ADD CONSTRAINT FK_Producto_PK_Proveedor FOREIGN KEY (PK_Proveedor) REFERENCES Proveedor(PK_Proveedor);

ALTER TABLE Producto ADD CONSTRAINT FK_Producto_PK_Impuesto FOREIGN KEY (PK_Impuesto) REFERENCES Impuesto(PK_Impuesto);


CREATE TABLE DetalleVenta(
PK_DetalleVenta integer PRIMARY KEY,
Cantidad number(10,2) NOT NULL,
Precio_Unitario number(10,2) NOT NULL,
Descuento varchar2(50) NOT NULL,
PK_Venta integer,
PK_Producto integer
);

ALTER TABLE DetalleVenta ADD CONSTRAINT FK_DetalleVenta_PK_Venta FOREIGN KEY (PK_Venta) REFERENCES Venta(PK_Venta);

ALTER TABLE DetalleVenta ADD CONSTRAINT FK_DetalleVenta_PK_Producto FOREIGN KEY (PK_Producto) REFERENCES Producto(PK_Producto);


CREATE TABLE Promocion(
PK_Promocion integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion Varchar2(200) NOT NULL,
Hora_Inicio DATE NOT NULL,
Hora_Fin DATE NOT NULL,
Porcentaje_Descuento varchar2(50) NOT NULL,
PK_Producto integer
);

ALTER TABLE Promocion ADD CONSTRAINT FK_Promocion_PK_Producto FOREIGN KEY (PK_Producto) REFERENCES Producto(PK_Producto);


CREATE TABLE PrecioHistorico(
PK_PrecioHistorico integer PRIMARY KEY,
Precio number(10,2),
Hora_Inicio DATE NOT NULL,
Hora_Fin DATE NOT NULL,
PK_Producto integer
);

ALTER TABLE PrecioHistorico ADD CONSTRAINT FK_Precio_Hist_PK_Producto FOREIGN KEY (PK_Producto) REFERENCES Producto(PK_Producto);


CREATE TABLE Categoria(
PK_Categoria integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion varchar2(200) NOT NULL
);


CREATE TABLE Proveedor(
PK_Proveedor integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
Correo varchar2(100) NOT NULL,
PK_TelefonosProveedor integer
);

ALTER TABLE Proveedor ADD CONSTRAINT FK_Proveedor_PK_TelefonosProveedor FOREIGN KEY (PK_TelefonosProveedor) REFERENCES TelefonosProveedor(PK_TelefonosProveedor);


CREATE TABLE TelefonosProveedor(
PK_TelefonosProveedor integer PRIMARY KEY,
Telefono_Movil varchar2(15) NOT NULL,
Telefono_Local varchar2(15) NOT NULL
);


CREATE TABLE DireccionProveedor(
PK_DireccionProveedor integer PRIMARY KEY,
Calle varchar2(100) NOT NULL,
Colonia varchar2(100) NOT NULL,
Estado varchar2(50) NOT NULL,
CP char(5) NOT NULL,
Num_Exterior varchar2(10) NOT NULL,
Num_Interior varchar2(10),
Ciudad varchar2(100) NOT NULL,
PK_Proveedor integer
);

ALTER TABLE DireccionProveedor ADD CONSTRAINT FK_Dire_Prov_PK_Proveedor FOREIGN KEY (PK_Proveedor) REFERENCES Proveedor(PK_Proveedor);
