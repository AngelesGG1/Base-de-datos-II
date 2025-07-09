--FAVOR DE LEER ESTO ANTES DE CUALQUIER COSA--

--Primero ejecutar cada tabla sin los ALTER--

--Una ves ingreses todas las tablas con exito ahora tendras que ingresar cada ALTER por separado UNO POR UNO--

-- Cada ALTER esta ubicado en su respectiva tabla para que no halla confuciones--

-- OJO EN LA TABLA VENTA EL ULTIMO ALTER NO LO EJECUTES YA QUE ES PARA BORRAR UNA RESTRICCION--
-- Y LO DEJE COMO EJEMPLO QUE MAS ADELANTE NOS PUEDE SERVIR--

--De igual manera si te marca error al ejecutar varios scrips a la misma vez hazlo de uno en uno, ya que yo no tuve--
--Ningun problema al ingresar todo,por lo cual a ti tampoco te deveria de dar error si sigues las instrucciones--

--Los coment puedes ejecutarlos despues de que ya hallas ejecutado todo lo anterior--
--y puedes seleccionarlos todos de cada tabla y ejecutarlos todos con alt + X --



-- Tabla DireccionEmpleado--

CREATE TABLE DireccionEmpleado (
Pk_DireccionEmpleado integer PRIMARY KEY,
Calle varchar2(100) NOT NULL,
Colonia varchar2(100) NOT NULL,
CP char(5) NOT NULL,
Estado varchar2(50) NOT NULL,
Ciudad varchar2(100) NOT NULL,
NumExterior varchar2(10) NOT NULL,
NumInterior varchar2(10),
FK_Empleado integer
);


ALTER TABLE DireccionEmpleado ADD CONSTRAINT FK_Empleado_DireEmp FOREIGN KEY (FK_Empleado) REFERENCES Empleado(PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE DireccionEmpleado IS 'Tabla que almacena la direccion de los empleados,Pk_DireccionEmpleado,Calle,Colonia,CP,Estado,NumExterior,NumInterior,FK_Empleado.';
COMMENT ON COLUMN DireccionEmpleado.PK_DireccionEmpleado IS 'se utilizo el tipo integer para el Primary key porque es tipo numerico.';
COMMENT ON COLUMN DireccionEmpleado.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionEmpleado.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 por que es de tipo alfanumerico igual que en la columna calle, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionEmpleado.CP IS 'se utilizo el tipo char con rango de 5 porque siempre deve de ser 5 digitos El Codigo postal.';
COMMENT ON COLUMN DireccionEmpleado.Estado IS 'se uso varchar2 con rango de 50 porque es para tipo alfanumerico,y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionEmpleado.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es para tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionEmpleado.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionEmpleado.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionEmpleado.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo que se uso en la primary key en su tabla principal).';



--Tabla TelefonosEmpleado--

CREATE TABLE TelefonosEmpleado(
PK_TelefonosEmpleado integer PRIMARY KEY,
TelefonoMovil varchar2(15) NOT NULL,
TelefonoLocal varchar2(15) NOT NULL,
FK_Empleado integer
);


ALTER TABLE TelefonosEmpleado ADD CONSTRAINT FK_Empleado_TeleEmp FOREIGN KEY (FK_Empleado) REFERENCES Empleado (PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE TelefonosEmpleado IS 'Tabla que almacena los telefonos de los empleados,PK_TelefonosEmpleado,TelefonoMovil,TelefonoLocal,FK_Empleado.';
COMMENT ON COLUMN TelefonosEmpleado.PK_TelefonosEmpleado IS 'se utilizo el tipo integer porque es para tipo numerico.';
COMMENT ON COLUMN TelefonosEmpleado.TelefonoMovil IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango.';
COMMENT ON COLUMN TelefonosEmpleado.TelefonoLocal IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango.';
COMMENT ON COLUMN TelefonosEmpleado.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo de dato que se utilizo en la primary key de la tabla principal.';



--Tabla Empleado--

CREATE TABLE Empleado(
PK_Empleado integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Apellido_Paterno varchar2(50) NOT NULL,
Apellido_Materno varchar2(50) NOT NULL,
Correo varchar2(100) NOT NULL,
FK_Sucursal integer
);


ALTER TABLE Empleado ADD CONSTRAINT FK_Sucursal_Empleado FOREIGN KEY (FK_Sucursal) REFERENCES Sucursal (PK_Sucursal);

--COMENTARIOS--
COMMENT ON TABLE Empleado IS 'Tabla que almacena Los Datos de Empleado,PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal.';
COMMENT ON COLUMN Empleado.PK_Empleado IS 'se utilizo el tipo integer porque es para tipo numerico.';
COMMENT ON COLUMN Empleado.Nombre IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN Empleado.Apellido_Paterno IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN Empleado.Apellido_Materno IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN Empleado.Correo IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN Empleado.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo que se utilizo en la primary key en su tabla principal.';




--Tabla DetalleDevolucion--

CREATE TABLE DetalleDevolucion(
PK_DetalleDevolucion integer PRIMARY KEY,
Cantidad NUMBER NOT  NULL,
Motivo varchar2(200) NOT NULL,
FK_Devolucion integer,
FK_Producto integer
);


ALTER TABLE DetalleDevolucion ADD CONSTRAINT FK_Devolucion_DetalleDev FOREIGN KEY (FK_Devolucion) REFERENCES Devolucion (PK_Devolucion);

ALTER TABLE DetalleDevolucion ADD CONSTRAINT FK_Producto_DetalleDev FOREIGN KEY (FK_Producto) REFERENCES Producto (PK_Producto);
 -- --
--COMENTARIOS--
COMMENT ON TABLE DetalleDevolucion IS 'Tabla que almacena la informacion de los detalles de las devoluciones, PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto.';
COMMENT ON COLUMN DetalleDevolucion.PK_DetalleDevolucion IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN DetalleDevolucion.Cantidad IS 'se utilizo el tipo number porque es para datos numericos que representan la cantidad devuelta.';
COMMENT ON COLUMN DetalleDevolucion.Motivo IS 'se utilizo el tipo varchar2 con rango de 200 porque es de tipo alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN DetalleDevolucion.FK_Devolucion IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN DetalleDevolucion.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla Rol--

CREATE TABLE Rol(
PK_Rol integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE Rol IS 'Tabla que almacena la informacion de los distintos roles que puede tener un usuario,PK_Rol,Nombre.';
COMMENT ON COLUMN Rol.PK_Rol IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN Rol.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';

--Tabla Devolucion--

CREATE TABLE Devolucion(
PK_Devolucion integer PRIMARY KEY,
Fecha DATE NOT NULL,
Motivo varchar2(200) NOT NULL,
FK_Venta integer,
FK_Empleado integer
);


ALTER TABLE Devolucion ADD CONSTRAINT FK_Venta_Devolucion FOREIGN KEY (FK_Venta) REFERENCES Venta(PK_Venta);

ALTER TABLE Devolucion ADD CONSTRAINT FK_Empleado_Devolucion FOREIGN KEY (FK_Empleado) REFERENCES Empleado(PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE Devolucion IS 'Tabla que almacena la informacion de las devoluciones,PK_Devolucion,Fecha,Motivo,FK_Venta,FK_Empleado.';
COMMENT ON COLUMN Devolucion.PK_Devolucion IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN Devolucion.Fecha IS 'se utilizo el tipo date porque es de tipo fecha para registrar el momento de la devolucion.';
COMMENT ON COLUMN Devolucion.Motivo IS 'se utilizo el tipo varchar2 con rango de 200 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Devolucion.FK_Venta IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Devolucion.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Usuario--

CREATE TABLE Usuario(
PK_Usuario integer PRIMARY KEY,
NombreUsuario varchar2(50) NOT NULL,
Password varchar2(100) NOT NULL,
Correo varchar2(100) NOT NULL,
Estatus char(1) NOT NULL,
FK_Rol integer,
FK_Empleado integer
);


ALTER TABLE Usuario ADD CONSTRAINT FK_Rol_Usuario FOREIGN KEY (FK_rol) REFERENCES Rol(PK_Rol);

ALTER TABLE usuario ADD CONSTRAINT FK_Empleado_Usuario FOREIGN KEY (FK_Empleado) REFERENCES Empleado(PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE Usuario IS 'Tabla que almacena la informacion de de los datos de los usuarios,PK_Usuario,NombreUsuario,Password,Correo,Estatus,FK_Rol,FK_Empleado.';
COMMENT ON COLUMN Usuario.PK_Usuario IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN Usuario.NombreUsuario IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Usuario.Password IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Usuario.Correo IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Usuario.Estatus IS 'se utilizo el tipo char con rango de 1 porque solo se necesita un caracter que indique si el usuario esta activo o inactivo.';
COMMENT ON COLUMN Usuario.FK_Rol IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Usuario.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Turno--

CREATE TABLE Turno(
PK_Turno integer PRIMARY KEY,
HoraInicio DATE NOT NULL,
HoraFin DATE NOT NULL,
FK_Empleado integer,
FK_Caja integer
);


ALTER TABLE Turno ADD CONSTRAINT FK_Empleado_Turno FOREIGN KEY (FK_Empleado) REFERENCES Empleado(PK_Empleado);

ALTER TABLE Turno ADD CONSTRAINT FK_Caja_Turno FOREIGN KEY (FK_Caja) REFERENCES Caja(PK_Caja);

--COMENTARIOS--
COMMENT ON TABLE Turno IS 'Tabla que almacena la informacion de de los horarios de entrada y salida de los empleados,PK_Turno,HoraInicio,HoraFin,FK_Empleado,FK_Caja.';
COMMENT ON COLUMN Turno.PK_Turno IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN Turno.HoraInicio IS 'se utilizo el tipo date porque es de tipo fecha para registrar el inicio del turno.';
COMMENT ON COLUMN Turno.HoraFin IS 'se utilizo el tipo date porque es de tipo fecha para registrar el fin del turno.';
COMMENT ON COLUMN Turno.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Turno.FK_Caja IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Compra--

CREATE TABLE Compra(
PK_Compra integer PRIMARY KEY,
Fecha DATE NOT NULL,
Total float NOT NULL,
FK_Empleado integer,
FK_Proveedor integer,
FK_Sucursal integer
);


ALTER TABLE Compra ADD CONSTRAINT FK_Empleado_Compra FOREIGN KEY (FK_Empleado) REFERENCES Empleado(PK_Empleado);

ALTER TABLE Compra ADD CONSTRAINT FK_Proveedor_Compra FOREIGN KEY (FK_Proveedor) REFERENCES Proveedor(PK_Proveedor);

ALTER TABLE Compra ADD CONSTRAINT FK_Sucursal_Compra FOREIGN KEY (FK_Sucursal) REFERENCES Sucursal(PK_Sucursal);

-- COMENTARIOS--
-- --
COMMENT ON TABLE Compra IS 'Tabla que almacena la informacion de de las compras,PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal.';
COMMENT ON COLUMN Compra.PK_Compra IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN Compra.Fecha IS 'se utilizo el tipo date porque es de tipo fecha para registrar el momento de la compra.';
COMMENT ON COLUMN Compra.Total IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el monto total.';
COMMENT ON COLUMN Compra.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Compra.FK_Proveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Compra.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Sucursal--

CREATE TABLE Sucursal(
PK_Sucursal integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
FK_DireccionSucursal integer
);


ALTER TABLE Sucursal ADD CONSTRAINT FK_DireccionSucursal_Sucursal FOREIGN KEY (FK_DireccionSucursal) REFERENCES DireccionSucursal(PK_DireccionSucursal);

--COMENTARIOS--
COMMENT ON TABLE Sucursal IS 'Tabla que almacena las sucursales de la empresa,PK_Sucursal,Nombre,FK_DireccionSucursal.';
COMMENT ON COLUMN Sucursal.PK_Sucursal IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN Sucursal.Nombre IS 'se utilizo el tipo varchar2 con rango de 100 porque es para tipo alfanumerico, y almacena el nombre de la sucursal.';
COMMENT ON COLUMN Sucursal.FK_DireccionSucursal IS 'se utilizo de tipo integer porque es la que se utilizo para las primary key y es la misma en su tabla principal.';


--Tabla TelefonosSucursal--

CREATE TABLE TelefonosSucursal(
PK_TelefonosSucursal integer PRIMARY KEY,
TelefonoLocal varchar2(15)  NOT NULL,
TelefonoMovil varchar2(15) NOT NULL,
FK_Sucursal integer
);


ALTER TABLE TelefonosSucursal ADD CONSTRAINT FK_Sucursal_TeleSuc FOREIGN KEY (FK_Sucursal) REFERENCES Sucursal(PK_Sucursal);

--COMENTARIOS--
COMMENT ON TABLE TelefonosSucursal IS 'Tabla que almacena los teléfonos de la sucursal,PK_TelefonosSucursal,TelefonoLocal,TelefonoMovil,FK_Sucursal.';
COMMENT ON COLUMN TelefonosSucursal.PK_TelefonosSucursal IS 'se utilizo de tipo integer por que es tipo numerico y es primary key.';
COMMENT ON COLUMN TelefonosSucursal.TelefonoLocal IS 'se utilizo de tipo varchar2 con rango de 15 porque me llego a dar en anteriores casos error por el rango, asi que se utilizo varchar2 que tambien sirve al ser alfanumerico.';
COMMENT ON COLUMN TelefonosSucursal.TelefonoMovil IS 'se utilizo de tipo varchar2 con rango de 15 porque me llego a dar en anteriores casos error por el rango, asi que se utilizo varchar2 que tambien sirve al ser alfanumerico.';
COMMENT ON COLUMN TelefonosSucursal.FK_Sucursal IS 'se utilizo de tipo integer porque es la que se utilizo para las primary key y es la misma en su tabla principal.';


--Tabla DireccionSucursal--

CREATE TABLE DireccionSucursal(
PK_DireccionSucursal integer PRIMARY KEY,
Ciudad varchar2(100) NOT NULL,
Calle varchar2(100) NOT NULL,
NumInterior varchar2(10),
NumExterior varchar2(10),
Colonia varchar2(100) NOT NULL,
CP char(5) NOT NULL,
Estado varchar2(50) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE DireccionSucursal IS 'Tabla que almacena las direcciones de las sucursales,PK_DireccionSucursal,Ciudad,Calle,NumInterior,NumExterior,Colonia,CP,Estado.';
COMMENT ON COLUMN DireccionSucursal.PK_DireccionSucursal IS 'se utilizo de tipo integer por que es tipo numerico y es primary key.';
COMMENT ON COLUMN DireccionSucursal.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN DireccionSucursal.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN DireccionSucursal.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque con tipo numerico da error en el rango y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN DireccionSucursal.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque con tipo numerico da error en el rango y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN DireccionSucursal.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN DireccionSucursal.CP IS 'se utilizo el tipo char con rango de 5 porque siempre debe ser de 5 digitos el Codigo Postal.';
COMMENT ON COLUMN DireccionSucursal.Estado IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';


--Tabla InventarioDeMovimientos--

CREATE TABLE InventarioDeMovimientos(
PK_InventarioMovimiento integer PRIMARY KEY,
TipoMovE_S char(1) NOT NULL,
Cantidad number NOT NULL,
Fecha DATE NOT NULL,
FK_Producto integer,
FK_Sucursal integer,
FK_DetalleVenta integer,
FK_DetalleCompra integer
);


ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_Producto_InvenMov FOREIGN KEY (FK_Producto) REFERENCES Producto(PK_Producto);

ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_Sucursal_InvenMov FOREIGN KEY (FK_Sucursal) REFERENCES Sucursal(PK_Sucursal);

ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_DetalleVenta_InvenMov FOREIGN KEY (FK_DetalleVenta) REFERENCES DetalleVenta(PK_DetalleVenta);

ALTER TABLE InventarioDeMovimientos ADD CONSTRAINT FK_DetalleCompra_InvenMov FOREIGN KEY (FK_DetalleCompra) REFERENCES DetalleCompra(PK_DetalleCompra);

--COMENTARIOS--
COMMENT ON TABLE InventarioDeMovimientos IS 'Tabla que almacena los movimientos de inventario,PK_InventarioMovimiento,TipoMovE_S,Cantidad,Fecha,FK_Producto,FK_Sucursal,FK_DetalleVenta,FK_DetalleCompra.';
COMMENT ON COLUMN InventarioDeMovimientos.PK_InventarioMovimiento IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN InventarioDeMovimientos.TipoMovE_S IS 'se utilizo el tipo char con rango de 1 porque se almacena una letra que indica si es entrada o salida.';
COMMENT ON COLUMN InventarioDeMovimientos.Cantidad IS 'se utilizo el tipo number porque es tipo numerico para indicar la cantidad del movimiento.';
COMMENT ON COLUMN InventarioDeMovimientos.Fecha IS 'se utilizo el tipo date porque es de tipo fecha para registrar el dia del movimiento.';
COMMENT ON COLUMN InventarioDeMovimientos.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN InventarioDeMovimientos.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN InventarioDeMovimientos.FK_DetalleVenta IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN InventarioDeMovimientos.FK_DetalleCompra IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';



--Tabla DetalleCompra--

CREATE TABLE DetalleCompra(
PK_DetalleCompra integer PRIMARY KEY,
Cantidad number NOT NULL,
PrecioUnitario float NOT NULL,
FK_Compra integer,
FK_Producto integer
);


ALTER TABLE DetalleCompra ADD CONSTRAINT FK_Compra_DetalleCompra FOREIGN KEY (FK_Compra) REFERENCES Compra(PK_Compra);

ALTER TABLE DetalleCompra ADD CONSTRAINT FK_Producto_DetalleCompra FOREIGN KEY (FK_Producto) REFERENCES Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE DetalleCompra IS 'Tabla que almacena el detalle de cada compra realizada, PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto.';
COMMENT ON COLUMN DetalleCompra.PK_DetalleCompra IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN DetalleCompra.Cantidad IS 'se utilizo el tipo number porque es tipo numerico para indicar la cantidad de productos comprados.';
COMMENT ON COLUMN DetalleCompra.PrecioUnitario IS 'se utilizo el tipo float porque es tipo numerico decimal para representar el precio de un solo producto.';
COMMENT ON COLUMN DetalleCompra.FK_Compra IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN DetalleCompra.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';



--Tabla Caja--

CREATE TABLE Caja(
PK_Caja integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Estatus char(1) NOT NULL,
FK_Sucursal integer
);


ALTER TABLE Caja ADD CONSTRAINT FK_Sucursal_Caja FOREIGN KEY (FK_Sucursal) REFERENCES Sucursal(PK_Sucursal);

--COMENTARIOS--
COMMENT ON TABLE Caja IS 'Tabla que almacena información de las cajas,PK_Caja,Nombre,Estatus,FK_Sucursal.';
COMMENT ON COLUMN Caja.PK_Caja IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Caja.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Caja.Estatus IS 'se utilizo el tipo char con rango de 1 porque se almacena un caracter para indicar si esta activa o inactiva.';
COMMENT ON COLUMN Caja.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla MetodoDePago--

CREATE TABLE MetodoDePago(
PK_MetodoPago integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion varchar2(200) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE MetodoDePago IS 'Tabla que almacena los métodos de pago disponibles,PK_MetodoPago,Nombre,Descripcion.';
COMMENT ON COLUMN MetodoDePago.PK_MetodoPago IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN MetodoDePago.Nombre IS 'se utilizo de tipo varchar2 con rango de 50 porque es alfanumerico y representa el nombre de el metodo de pago.';
COMMENT ON COLUMN MetodoDePago.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de el metodo de pago.';


--Tabla Venta--

CREATE TABLE Venta(
PK_Venta integer PRIMARY KEY,
Fecha  DATE NOT NULL,
Total float NOT NULL,
FK_Cliente integer,
FK_Empleado integer,
FK_MetodoPago integer,
FK_Caja integer
);


ALTER TABLE Venta ADD CONSTRAINT FK_Cliente_Venta FOREIGN KEY (FK_Cliente) REFERENCES Cliente(PK_Cliente);

ALTER TABLE Venta ADD CONSTRAINT FK_Empleado_Venta FOREIGN KEY (FK_Empleado) REFERENCES Empleado(PK_Empleado);

ALTER TABLE Venta ADD CONSTRAINT FK_MetodoPago_Venta FOREIGN KEY (FK_MetodoPago) REFERENCES MetodoDePago(PK_MetodoPago);

ALTER TABLE Venta ADD CONSTRAINT FK_Caja_Venta FOREIGN KEY (FK_Caja) REFERENCES Caja(PK_Caja);


-- NO EJECUTAR ESTE ALTER PORQUE ES PARA ELIMINAR UNA RESTRICCION, LA DEJE COMO EJEMPLO PARA MAS ADELANTE--
--ALTER TABLE METODODEPAGO  DROP CONSTRAINT FK_Venta_PK_MetodoDePago;--

--COMENTARIOS--
COMMENT ON TABLE Venta IS 'Tabla que almacena las ventas realizadas,PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja.';
COMMENT ON COLUMN Venta.PK_Venta IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Venta.Fecha IS 'se utilizo el tipo date porque se puede ver el dia,mes y año en la cual se hizo la venta.';
COMMENT ON COLUMN Venta.Total IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el monto total.';
COMMENT ON COLUMN Venta.FK_Cliente IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Venta.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Venta.FK_MetodoPago IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Venta.FK_Caja IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal';


--Tabla DireccionCliente--

CREATE TABLE DireccionCliente(
PK_DireccionCliente integer PRIMARY KEY,
Calle varchar2(100) NOT NULL,
Colonia varchar2(100) NOT NULL,
NumExterior varchar2(10) NOT NULL,
NumInterior varchar2(10),
Estado varchar2(50) NOT NULL,
CP char(5) NOT NULL,
Ciudad varchar2(100) NOT NULL,
FK_Cliente integer
);


ALTER TABLE DireccionCliente ADD CONSTRAINT FK_Cliente_DireCliente FOREIGN KEY (FK_Cliente) REFERENCES Cliente(PK_Cliente);

--COMENTARIOS--
COMMENT ON TABLE DireccionCliente IS 'Tabla que almacena las direcciones de los clientes,PK_DireccionCliente,Calle,Colonia,NumExterior,NumInterior,Estado,CP,Ciudad,FK_Cliente.';
COMMENT ON COLUMN DireccionCliente.PK_DireccionCliente IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN DireccionCliente.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionCliente.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionCliente.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionCliente.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionCliente.Estado IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionCliente.CP IS 'se utilizo el tipo char con rango de 5 porque siempre deve de ser 5 digitos El Codigo postal..';
COMMENT ON COLUMN DireccionCliente.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionCliente.FK_Cliente IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla Cliente--

CREATE TABLE Cliente(
PK_Cliente integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Apellido_Paterno varchar2(50) NOT NULL,
Apellido_Materno varchar2(50) NOT NULL,
Correo varchar2(100) NOT NULL,
FK_TelefonosCliente integer
);


ALTER TABLE Cliente ADD CONSTRAINT FK_TelefonosCliente_Cliente FOREIGN KEY (FK_TelefonosCliente) REFERENCES TelefonosCliente(PK_TelefonosCliente);

--COMENTARIOS--
COMMENT ON TABLE Cliente IS 'Tabla que almacena la información de los clientes,PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente';
COMMENT ON COLUMN Cliente.PK_Cliente IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Cliente.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Cliente.Apellido_Paterno IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Cliente.Apellido_Materno IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Cliente.Correo IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Cliente.FK_TelefonosCliente IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla TelefonosCliente--

CREATE TABLE TelefonosCliente(
PK_TelefonosCliente integer PRIMARY KEY,
TelefonoMovil varchar2(15) NOT NULL,
TelefonoLocal varchar2(15) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE TelefonosCliente IS 'Tabla que almacena los teléfonos de los clientes,PK_TelefonosCliente,TelefonoMovil,TelefonoLocal.';
COMMENT ON COLUMN TelefonosCliente.PK_TelefonosCliente IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN TelefonosCliente.TelefonoMovil IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango.';
COMMENT ON COLUMN TelefonosCliente.TelefonoLocal IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango,.';


--Tabla Impuesto--

CREATE TABLE Impuesto(
PK_Impuesto integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Porcentaje varchar2(50) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE Impuesto IS 'Tabla que almacena los impuestos,PK_Impuesto,Nombre,Porcentaje.';
COMMENT ON COLUMN Impuesto.PK_Impuesto IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Impuesto.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Impuesto.Porcentaje IS 'se utilizo de tipo varchar con rango de 50 porque se puede ingresar simbolos de porsentaje si es que se requiere.';


--Tabla Producto--

CREATE TABLE Producto(
PK_Producto integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
Descripcion varchar2(200) NOT NULL,
StockActual NUMBER NOT NULL,
FK_Categoria integer,
FK_Proveedor integer,
FK_Impuesto integer
);


ALTER TABLE Producto ADD CONSTRAINT FK_Categoria_Producto FOREIGN KEY (FK_Categoria) REFERENCES Categoria(PK_Categoria);

ALTER TABLE Producto ADD CONSTRAINT FK_Proveedor_Producto FOREIGN KEY (FK_Proveedor) REFERENCES Proveedor(PK_Proveedor);

ALTER TABLE Producto ADD CONSTRAINT FK_Impuesto_Producto FOREIGN KEY (FK_Impuesto) REFERENCES Impuesto(PK_Impuesto);

--COMENTARIOS--
COMMENT ON TABLE Producto IS 'Tabla que almacena la información de los productos,PK_Producto,Nombre,Descripcion,StockActual,FK_Categoria,FK_Proveedor,FK_Impuesto.';
COMMENT ON COLUMN Producto.PK_Producto IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Producto.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Producto.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de el producto.';
COMMENT ON COLUMN Producto.StockActual IS 'se utilizo de tipo number para que guarde la cantidad de productos que hay en stock Actualmente.';
COMMENT ON COLUMN Producto.FK_Categoria IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Producto.FK_Proveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN Producto.FK_Impuesto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla DetalleVenta--

CREATE TABLE DetalleVenta(
PK_DetalleVenta integer PRIMARY KEY,
Cantidad number NOT NULL,
PrecioUnitario float NOT NULL,
Descuento varchar2(50) NOT NULL,
FK_Venta integer,
FK_Producto integer
);


ALTER TABLE DetalleVenta ADD CONSTRAINT FK_Venta_DetalleVenta FOREIGN KEY (FK_Venta) REFERENCES Venta(PK_Venta);

ALTER TABLE DetalleVenta ADD CONSTRAINT FK_Producto_DetalleVenta FOREIGN KEY (FK_Producto) REFERENCES Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE DetalleVenta IS 'Tabla que almacena los detalles de cada venta realizada,PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto.';
COMMENT ON COLUMN DetalleVenta.PK_DetalleVenta IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN DetalleVenta.Cantidad IS 'se utilizo de tipo number porque es para cantidad tipo unidad en entero.';
COMMENT ON COLUMN DetalleVenta.PrecioUnitario IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el precio unitario.';
COMMENT ON COLUMN DetalleVenta.Descuento IS 'se utilizo de tipo varchar2 con rango de 50 porque se puede incluir simbolos en caso de necesitarlos.';
COMMENT ON COLUMN DetalleVenta.FK_Venta IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN DetalleVenta.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla Promocion--

CREATE TABLE Promocion(
PK_Promocion integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion Varchar2(200) NOT NULL,
HoraInicio DATE NOT NULL,
HoraFin DATE NOT NULL,
PorcentajeDescuento varchar2(50) NOT NULL,
FK_Producto integer
);


ALTER TABLE Promocion ADD CONSTRAINT FK_Producto_Promocion FOREIGN KEY (FK_Producto) REFERENCES Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE Promocion IS 'Tabla que almacena promociones y descuentos aplicados a productos,PK_Promocion,Nombre,Descripcion,HoraInicio,HoraFin,PorcentajeDescuento,FK_Producto.';
COMMENT ON COLUMN Promocion.PK_Promocion IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Promocion.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Promocion.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de la promocion.';
COMMENT ON COLUMN Promocion.HoraInicio IS 'se utilizo de tipo date para saber la hora en la cual inicio la promocion.';
COMMENT ON COLUMN Promocion.HoraFin IS 'se utilizo de tipo date para saber la hora en la cual finalizo la promocion.';
COMMENT ON COLUMN Promocion.PorcentajeDescuento IS 'se utilizo de tipo varchar con rango de 50 porque se puede usar simbolos en caso de necesitarlos.';
COMMENT ON COLUMN Promocion.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla PrecioHistorico--

CREATE TABLE PrecioHistorico(
PK_PrecioHistorico integer PRIMARY KEY,
Precio float,
FechaInicio DATE NOT NULL,
FechaFin DATE NOT NULL,
FK_Producto integer
);


ALTER TABLE PrecioHistorico ADD CONSTRAINT FK_Producto_PrecioHist FOREIGN KEY (FK_Producto) REFERENCES Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE PrecioHistorico IS 'Tabla que almacena los precios históricos de los productos,PK_PrecioHistorico,Precio,FechaInicio,FechaFin,FK_Producto.';
COMMENT ON COLUMN PrecioHistorico.PK_PrecioHistorico IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PrecioHistorico.Precio IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el precio unitario.';
COMMENT ON COLUMN PrecioHistorico.FechaInicio IS 'se utilizo de tipo date para saber la fecha, dia mes y año.';
COMMENT ON COLUMN PrecioHistorico.FechaFin IS 'se utilizo de tipo date para saber la fecha, dia mes y año.';
COMMENT ON COLUMN PrecioHistorico.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';



--Tabla Categoria--

CREATE TABLE Categoria(
PK_Categoria integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion varchar2(200) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE Categoria IS 'Tabla que almacena las categorías,PK_Categoria,Nombre,Descripcion.';
COMMENT ON COLUMN Categoria.PK_Categoria IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Categoria.Nombre IS 'se utilizo de tipo varchar con rango de 50 ya que al ser alfanumerico pude guardar la categoria con cualquier nombre.';
COMMENT ON COLUMN Categoria.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de la categoria.';



--Tabla Proveedor--

CREATE TABLE Proveedor(
PK_Proveedor integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
Correo varchar2(100) NOT NULL,
FK_TelefonosProveedor integer
);


ALTER TABLE Proveedor ADD CONSTRAINT FK_TelefonosProveedor_Proveedor FOREIGN KEY (FK_TelefonosProveedor) REFERENCES TelefonosProveedor(PK_TelefonosProveedor);

--COMENTARIOS--
COMMENT ON TABLE Proveedor IS 'Tabla que almacena la información de los proveedores.';
COMMENT ON COLUMN Proveedor.PK_Proveedor IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN Proveedor.Nombre IS 'se utilizo de tipo varchar con rango de 50 ya que al ser alfanumerico pude guardar el nombre.';
COMMENT ON COLUMN Proveedor.Correo IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN Proveedor.FK_TelefonosProveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla TelefonosProveedor--

CREATE TABLE TelefonosProveedor(
PK_TelefonosProveedor integer PRIMARY KEY,
TelefonoMovil varchar2(15) NOT NULL,
TelefonoLocal varchar2(15) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE TelefonosProveedor IS 'Tabla que almacena los teléfonos de los proveedores.';
COMMENT ON COLUMN TelefonosProveedor.PK_TelefonosProveedor IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN TelefonosProveedor.TelefonoMovil IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango,.';
COMMENT ON COLUMN TelefonosProveedor.TelefonoLocal IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango,.';



--Tabla DireccionProveedor--

CREATE TABLE DireccionProveedor(
PK_DireccionProveedor integer PRIMARY KEY,
Calle varchar2(100) NOT NULL,
Colonia varchar2(100) NOT NULL,
Estado varchar2(50) NOT NULL,
CP char(5) NOT NULL,
NumExterior varchar2(10) NOT NULL,
NumInterior varchar2(10),
Ciudad varchar2(100) NOT NULL,
FK_Proveedor integer
);


ALTER TABLE DireccionProveedor ADD CONSTRAINT FK_Proveedor_DireProv FOREIGN KEY (FK_Proveedor) REFERENCES Proveedor(PK_Proveedor);

--COMENTARIOS--
COMMENT ON TABLE DireccionProveedor IS 'Tabla que almacena las direcciones de los proveedores,PK_DireccionProveedor,Calle,Colonia,Estado,CP,NumExterior,NumInterior,Ciudad,FK_Proveedor.';
COMMENT ON COLUMN DireccionProveedor.PK_DireccionProveedor IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN DireccionProveedor.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionProveedor.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 por que es de tipo alfanumerico igual que en la columna calle, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionProveedor.Estado IS 'se uso varchar2 con rango de 50 porque es para tipo alfanumerico,y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionProveedor.CP IS 'se utilizo el tipo char con rango de 5 porque siempre deve de ser 5 digitos El Codigo postal.';
COMMENT ON COLUMN DireccionProveedor.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionProveedor.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionProveedor.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es para tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN DireccionProveedor.FK_Proveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';