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

CREATE TABLE PROYECTOFINAL.DireccionEmpleado (
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


ALTER TABLE PROYECTOFINAL.DireccionEmpleado ADD CONSTRAINT FK_Empleado_DireEmp FOREIGN KEY (FK_Empleado) REFERENCES PROYECTOFINAL.Empleado(PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.DireccionEmpleado IS 'Tabla que almacena la direccion de los empleados,Pk_DireccionEmpleado,Calle,Colonia,CP,Estado,NumExterior,NumInterior,FK_Empleado.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.PK_DireccionEmpleado IS 'se utilizo el tipo integer para el Primary key porque es tipo numerico.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 por que es de tipo alfanumerico igual que en la columna calle, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.CP IS 'se utilizo el tipo char con rango de 5 porque siempre deve de ser 5 digitos El Codigo postal.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.Estado IS 'se uso varchar2 con rango de 50 porque es para tipo alfanumerico,y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es para tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionEmpleado.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo que se uso en la primary key en su tabla principal).';



--Tabla TelefonosEmpleado--

CREATE TABLE PROYECTOFINAL.TelefonosEmpleado(
PK_TelefonosEmpleado integer PRIMARY KEY,
TelefonoMovil varchar2(15) NOT NULL,
TelefonoLocal varchar2(15) NOT NULL,
FK_Empleado integer
);


ALTER TABLE PROYECTOFINAL.TelefonosEmpleado ADD CONSTRAINT FK_Empleado_TeleEmp FOREIGN KEY (FK_Empleado) REFERENCES PROYECTOFINAL.Empleado (PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.TelefonosEmpleado IS 'Tabla que almacena los telefonos de los empleados,PK_TelefonosEmpleado,TelefonoMovil,TelefonoLocal,FK_Empleado.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosEmpleado.PK_TelefonosEmpleado IS 'se utilizo el tipo integer porque es para tipo numerico.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosEmpleado.TelefonoMovil IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosEmpleado.TelefonoLocal IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosEmpleado.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo de dato que se utilizo en la primary key de la tabla principal.';



--Tabla Empleado--

CREATE TABLE PROYECTOFINAL.Empleado(
PK_Empleado integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Apellido_Paterno varchar2(50) NOT NULL,
Apellido_Materno varchar2(50) NOT NULL,
Correo varchar2(100) NOT NULL,
FK_Sucursal integer
);


ALTER TABLE PROYECTOFINAL.Empleado ADD CONSTRAINT FK_Sucursal_Empleado FOREIGN KEY (FK_Sucursal) REFERENCES PROYECTOFINAL.Sucursal (PK_Sucursal);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Empleado IS 'Tabla que almacena Los Datos de Empleado,PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal.';
COMMENT ON COLUMN PROYECTOFINAL.Empleado.PK_Empleado IS 'se utilizo el tipo integer porque es para tipo numerico.';
COMMENT ON COLUMN PROYECTOFINAL.Empleado.Nombre IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN PROYECTOFINAL.Empleado.Apellido_Paterno IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN PROYECTOFINAL.Empleado.Apellido_Materno IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN PROYECTOFINAL.Empleado.Correo IS 'se utilizo el tipo varchar2 porque es de tipo alfanumerico.';
COMMENT ON COLUMN PROYECTOFINAL.Empleado.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo que se utilizo en la primary key en su tabla principal.';




--Tabla DetalleDevolucion--

CREATE TABLE PROYECTOFINAL.DetalleDevolucion(
PK_DetalleDevolucion integer PRIMARY KEY,
Cantidad NUMBER NOT  NULL,
Motivo varchar2(200) NOT NULL,
FK_Devolucion integer,
FK_Producto integer
);


ALTER TABLE PROYECTOFINAL.DetalleDevolucion ADD CONSTRAINT FK_Devolucion_DetalleDev FOREIGN KEY (FK_Devolucion) REFERENCES PROYECTOFINAL.Devolucion (PK_Devolucion);

ALTER TABLE PROYECTOFINAL.DetalleDevolucion ADD CONSTRAINT FK_Producto_DetalleDev FOREIGN KEY (FK_Producto) REFERENCES PROYECTOFINAL.Producto (PK_Producto);
 -- --
--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.DetalleDevolucion IS 'Tabla que almacena la informacion de los detalles de las devoluciones, PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleDevolucion.PK_DetalleDevolucion IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleDevolucion.Cantidad IS 'se utilizo el tipo number porque es para datos numericos que representan la cantidad devuelta.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleDevolucion.Motivo IS 'se utilizo el tipo varchar2 con rango de 200 porque es de tipo alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DetalleDevolucion.FK_Devolucion IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleDevolucion.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla Rol--

CREATE TABLE PROYECTOFINAL.Rol(
PK_Rol integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Rol IS 'Tabla que almacena la informacion de los distintos roles que puede tener un usuario,PK_Rol,Nombre.';
COMMENT ON COLUMN PROYECTOFINAL.Rol.PK_Rol IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN PROYECTOFINAL.Rol.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';

--Tabla Devolucion--

CREATE TABLE PROYECTOFINAL.Devolucion(
PK_Devolucion integer PRIMARY KEY,
Fecha DATE NOT NULL,
Motivo varchar2(200) NOT NULL,
FK_Venta integer,
FK_Empleado integer
);


ALTER TABLE PROYECTOFINAL.Devolucion ADD CONSTRAINT FK_Venta_Devolucion FOREIGN KEY (FK_Venta) REFERENCES PROYECTOFINAL.Venta(PK_Venta);

ALTER TABLE PROYECTOFINAL.Devolucion ADD CONSTRAINT FK_Empleado_Devolucion FOREIGN KEY (FK_Empleado) REFERENCES PROYECTOFINAL.Empleado(PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Devolucion IS 'Tabla que almacena la informacion de las devoluciones,PK_Devolucion,Fecha,Motivo,FK_Venta,FK_Empleado.';
COMMENT ON COLUMN PROYECTOFINAL.Devolucion.PK_Devolucion IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN PROYECTOFINAL.Devolucion.Fecha IS 'se utilizo el tipo date porque es de tipo fecha para registrar el momento de la devolucion.';
COMMENT ON COLUMN PROYECTOFINAL.Devolucion.Motivo IS 'se utilizo el tipo varchar2 con rango de 200 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Devolucion.FK_Venta IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Devolucion.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Usuario--

CREATE TABLE PROYECTOFINAL.Usuario(
PK_Usuario integer PRIMARY KEY,
NombreUsuario varchar2(50) NOT NULL,
Password varchar2(100) NOT NULL,
Correo varchar2(100) NOT NULL,
Estatus char(1) NOT NULL,
FK_Rol integer,
FK_Empleado integer
);


ALTER TABLE PROYECTOFINAL.Usuario ADD CONSTRAINT FK_Rol_Usuario FOREIGN KEY (FK_rol) REFERENCES PROYECTOFINAL.Rol(PK_Rol);

ALTER TABLE PROYECTOFINAL.usuario ADD CONSTRAINT FK_Empleado_Usuario FOREIGN KEY (FK_Empleado) REFERENCES PROYECTOFINAL.Empleado(PK_Empleado);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Usuario IS 'Tabla que almacena la informacion de de los datos de los usuarios,PK_Usuario,NombreUsuario,Password,Correo,Estatus,FK_Rol,FK_Empleado.';
COMMENT ON COLUMN PROYECTOFINAL.Usuario.PK_Usuario IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN PROYECTOFINAL.Usuario.NombreUsuario IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Usuario.Password IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Usuario.Correo IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Usuario.Estatus IS 'se utilizo el tipo char con rango de 1 porque solo se necesita un caracter que indique si el usuario esta activo o inactivo.';
COMMENT ON COLUMN PROYECTOFINAL.Usuario.FK_Rol IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Usuario.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Turno--

CREATE TABLE PROYECTOFINAL.Turno(
PK_Turno integer PRIMARY KEY,
HoraInicio DATE NOT NULL,
HoraFin DATE NOT NULL,
FK_Empleado integer,
FK_Caja integer
);


ALTER TABLE PROYECTOFINAL.Turno ADD CONSTRAINT FK_Empleado_Turno FOREIGN KEY (FK_Empleado) REFERENCES PROYECTOFINAL.Empleado(PK_Empleado);

ALTER TABLE PROYECTOFINAL.Turno ADD CONSTRAINT FK_Caja_Turno FOREIGN KEY (FK_Caja) REFERENCES PROYECTOFINAL.Caja(PK_Caja);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Turno IS 'Tabla que almacena la informacion de de los horarios de entrada y salida de los empleados,PK_Turno,HoraInicio,HoraFin,FK_Empleado,FK_Caja.';
COMMENT ON COLUMN PROYECTOFINAL.Turno.PK_Turno IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN PROYECTOFINAL.Turno.HoraInicio IS 'se utilizo el tipo date porque es de tipo fecha para registrar el inicio del turno.';
COMMENT ON COLUMN PROYECTOFINAL.Turno.HoraFin IS 'se utilizo el tipo date porque es de tipo fecha para registrar el fin del turno.';
COMMENT ON COLUMN PROYECTOFINAL.Turno.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Turno.FK_Caja IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Compra--

CREATE TABLE PROYECTOFINAL.Compra(
PK_Compra integer PRIMARY KEY,
Fecha DATE NOT NULL,
Total float NOT NULL,
FK_Empleado integer,
FK_Proveedor integer,
FK_Sucursal integer
);


ALTER TABLE PROYECTOFINAL.Compra ADD CONSTRAINT FK_Empleado_Compra FOREIGN KEY (FK_Empleado) REFERENCES PROYECTOFINAL.Empleado(PK_Empleado);

ALTER TABLE PROYECTOFINAL.Compra ADD CONSTRAINT FK_Proveedor_Compra FOREIGN KEY (FK_Proveedor) REFERENCES PROYECTOFINAL.Proveedor(PK_Proveedor);

ALTER TABLE PROYECTOFINAL.Compra ADD CONSTRAINT FK_Sucursal_Compra FOREIGN KEY (FK_Sucursal) REFERENCES PROYECTOFINAL.Sucursal(PK_Sucursal);

-- COMENTARIOS--
-- --
COMMENT ON TABLE PROYECTOFINAL.Compra IS 'Tabla que almacena la informacion de de las compras,PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal.';
COMMENT ON COLUMN PROYECTOFINAL.Compra.PK_Compra IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN PROYECTOFINAL.Compra.Fecha IS 'se utilizo el tipo date porque es de tipo fecha para registrar el momento de la compra.';
COMMENT ON COLUMN PROYECTOFINAL.Compra.Total IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el monto total.';
COMMENT ON COLUMN PROYECTOFINAL.Compra.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Compra.FK_Proveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Compra.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';

--Tabla Sucursal--

CREATE TABLE PROYECTOFINAL.Sucursal(
PK_Sucursal integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
FK_DireccionSucursal integer
);


ALTER TABLE PROYECTOFINAL.Sucursal ADD CONSTRAINT FK_DireccionSucursal_Sucursal FOREIGN KEY (FK_DireccionSucursal) REFERENCES PROYECTOFINAL.DireccionSucursal(PK_DireccionSucursal);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Sucursal IS 'Tabla que almacena las sucursales de la empresa,PK_Sucursal,Nombre,FK_DireccionSucursal.';
COMMENT ON COLUMN PROYECTOFINAL.Sucursal.PK_Sucursal IS 'se utilizo el tipo integer porque es tipo numerico y es clave primaria.';
COMMENT ON COLUMN PROYECTOFINAL.Sucursal.Nombre IS 'se utilizo el tipo varchar2 con rango de 100 porque es para tipo alfanumerico, y almacena el nombre de la sucursal.';
COMMENT ON COLUMN PROYECTOFINAL.Sucursal.FK_DireccionSucursal IS 'se utilizo de tipo integer porque es la que se utilizo para las primary key y es la misma en su tabla principal.';


--Tabla TelefonosSucursal--

CREATE TABLE PROYECTOFINAL.TelefonosSucursal(
PK_TelefonosSucursal integer PRIMARY KEY,
TelefonoLocal varchar2(15)  NOT NULL,
TelefonoMovil varchar2(15) NOT NULL,
FK_Sucursal integer
);


ALTER TABLE PROYECTOFINAL.TelefonosSucursal ADD CONSTRAINT FK_Sucursal_TeleSuc FOREIGN KEY (FK_Sucursal) REFERENCES PROYECTOFINAL.Sucursal(PK_Sucursal);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.TelefonosSucursal IS 'Tabla que almacena los teléfonos de la sucursal,PK_TelefonosSucursal,TelefonoLocal,TelefonoMovil,FK_Sucursal.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosSucursal.PK_TelefonosSucursal IS 'se utilizo de tipo integer por que es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosSucursal.TelefonoLocal IS 'se utilizo de tipo varchar2 con rango de 15 porque me llego a dar en anteriores casos error por el rango, asi que se utilizo varchar2 que tambien sirve al ser alfanumerico.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosSucursal.TelefonoMovil IS 'se utilizo de tipo varchar2 con rango de 15 porque me llego a dar en anteriores casos error por el rango, asi que se utilizo varchar2 que tambien sirve al ser alfanumerico.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosSucursal.FK_Sucursal IS 'se utilizo de tipo integer porque es la que se utilizo para las primary key y es la misma en su tabla principal.';


--Tabla DireccionSucursal--

CREATE TABLE PROYECTOFINAL.DireccionSucursal(
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
COMMENT ON TABLE PROYECTOFINAL.DireccionSucursal IS 'Tabla que almacena las direcciones de las sucursales,PK_DireccionSucursal,Ciudad,Calle,NumInterior,NumExterior,Colonia,CP,Estado.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.PK_DireccionSucursal IS 'se utilizo de tipo integer por que es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque con tipo numerico da error en el rango y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque con tipo numerico da error en el rango y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.CP IS 'se utilizo el tipo char con rango de 5 porque siempre debe ser de 5 digitos el Codigo Postal.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionSucursal.Estado IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';


--Tabla InventarioDeMovimientos--

CREATE TABLE PROYECTOFINAL.InventarioDeMovimientos(
PK_InventarioMovimiento integer PRIMARY KEY,
TipoMovE_S char(1) NOT NULL,
Cantidad number NOT NULL,
Fecha DATE NOT NULL,
FK_Producto integer,
FK_Sucursal integer,
FK_DetalleVenta integer,
FK_DetalleCompra integer
);


ALTER TABLE PROYECTOFINAL.InventarioDeMovimientos ADD CONSTRAINT FK_Producto_InvenMov FOREIGN KEY (FK_Producto) REFERENCES PROYECTOFINAL.Producto(PK_Producto);

ALTER TABLE PROYECTOFINAL.InventarioDeMovimientos ADD CONSTRAINT FK_Sucursal_InvenMov FOREIGN KEY (FK_Sucursal) REFERENCES PROYECTOFINAL.Sucursal(PK_Sucursal);

ALTER TABLE PROYECTOFINAL.InventarioDeMovimientos ADD CONSTRAINT FK_DetalleVenta_InvenMov FOREIGN KEY (FK_DetalleVenta) REFERENCES PROYECTOFINAL.DetalleVenta(PK_DetalleVenta);

ALTER TABLE PROYECTOFINAL.InventarioDeMovimientos ADD CONSTRAINT FK_DetalleCompra_InvenMov FOREIGN KEY (FK_DetalleCompra) REFERENCES PROYECTOFINAL.DetalleCompra(PK_DetalleCompra);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.InventarioDeMovimientos IS 'Tabla que almacena los movimientos de inventario,PK_InventarioMovimiento,TipoMovE_S,Cantidad,Fecha,FK_Producto,FK_Sucursal,FK_DetalleVenta,FK_DetalleCompra.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.PK_InventarioMovimiento IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.TipoMovE_S IS 'se utilizo el tipo char con rango de 1 porque se almacena una letra que indica si es entrada o salida.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.Cantidad IS 'se utilizo el tipo number porque es tipo numerico para indicar la cantidad del movimiento.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.Fecha IS 'se utilizo el tipo date porque es de tipo fecha para registrar el dia del movimiento.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.FK_DetalleVenta IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.InventarioDeMovimientos.FK_DetalleCompra IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';



--Tabla DetalleCompra--

CREATE TABLE PROYECTOFINAL.DetalleCompra(
PK_DetalleCompra integer PRIMARY KEY,
Cantidad number NOT NULL,
PrecioUnitario float NOT NULL,
FK_Compra integer,
FK_Producto integer
);


ALTER TABLE PROYECTOFINAL.DetalleCompra ADD CONSTRAINT FK_Compra_DetalleCompra FOREIGN KEY (FK_Compra) REFERENCES PROYECTOFINAL.Compra(PK_Compra);

ALTER TABLE PROYECTOFINAL.DetalleCompra ADD CONSTRAINT FK_Producto_DetalleCompra FOREIGN KEY (FK_Producto) REFERENCES PROYECTOFINAL.Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.DetalleCompra IS 'Tabla que almacena el detalle de cada compra realizada, PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleCompra.PK_DetalleCompra IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleCompra.Cantidad IS 'se utilizo el tipo number porque es tipo numerico para indicar la cantidad de productos comprados.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleCompra.PrecioUnitario IS 'se utilizo el tipo float porque es tipo numerico decimal para representar el precio de un solo producto.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleCompra.FK_Compra IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleCompra.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';



--Tabla Caja--

CREATE TABLE PROYECTOFINAL.Caja(
PK_Caja integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Estatus char(1) NOT NULL,
FK_Sucursal integer
);
ALTER TABLE PROYECTOFINAL.Caja
MODIFY Estatus VARCHAR2(50);
SELECT column_name, data_type, data_length
FROM all_tab_columns
WHERE table_name = 'CAJA' AND owner = 'PROYECTOFINAL';



ALTER TABLE PROYECTOFINAL.Caja ADD CONSTRAINT FK_Sucursal_Caja FOREIGN KEY (FK_Sucursal) REFERENCES PROYECTOFINAL.Sucursal(PK_Sucursal);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Caja IS 'Tabla que almacena información de las cajas,PK_Caja,Nombre,Estatus,FK_Sucursal.';
COMMENT ON COLUMN PROYECTOFINAL.Caja.PK_Caja IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Caja.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Caja.Estatus IS 'se utilizo el tipo char con rango de 1 porque se almacena un caracter para indicar si esta activa o inactiva.';
COMMENT ON COLUMN PROYECTOFINAL.Caja.FK_Sucursal IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla MetodoDePago--

CREATE TABLE PROYECTOFINAL.MetodoDePago(
PK_MetodoPago integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion varchar2(200) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.MetodoDePago IS 'Tabla que almacena los métodos de pago disponibles,PK_MetodoPago,Nombre,Descripcion.';
COMMENT ON COLUMN PROYECTOFINAL.MetodoDePago.PK_MetodoPago IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.MetodoDePago.Nombre IS 'se utilizo de tipo varchar2 con rango de 50 porque es alfanumerico y representa el nombre de el metodo de pago.';
COMMENT ON COLUMN PROYECTOFINAL.MetodoDePago.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de el metodo de pago.';


--Tabla Venta--

CREATE TABLE PROYECTOFINAL.Venta(
PK_Venta integer PRIMARY KEY,
Fecha  DATE NOT NULL,
Total float NOT NULL,
FK_Cliente integer,
FK_Empleado integer,
FK_MetodoPago integer,
FK_Caja integer
);


ALTER TABLE PROYECTOFINAL.Venta ADD CONSTRAINT FK_Cliente_Venta FOREIGN KEY (FK_Cliente) REFERENCES PROYECTOFINAL.Cliente(PK_Cliente);

ALTER TABLE PROYECTOFINAL.Venta ADD CONSTRAINT FK_Empleado_Venta FOREIGN KEY (FK_Empleado) REFERENCES PROYECTOFINAL.Empleado(PK_Empleado);

ALTER TABLE PROYECTOFINAL.Venta ADD CONSTRAINT FK_MetodoPago_Venta FOREIGN KEY (FK_MetodoPago) REFERENCES PROYECTOFINAL.MetodoDePago(PK_MetodoPago);

ALTER TABLE PROYECTOFINAL.Venta ADD CONSTRAINT FK_Caja_Venta FOREIGN KEY (FK_Caja) REFERENCES PROYECTOFINAL.Caja(PK_Caja);


-- NO EJECUTAR ESTE ALTER PORQUE ES PARA ELIMINAR UNA RESTRICCION, LA DEJE COMO EJEMPLO PARA MAS ADELANTE--
--ALTER TABLE METODODEPAGO  DROP CONSTRAINT FK_Venta_PK_MetodoDePago;--

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Venta IS 'Tabla que almacena las ventas realizadas,PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja.';
COMMENT ON COLUMN PROYECTOFINAL.Venta.PK_Venta IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Venta.Fecha IS 'se utilizo el tipo date porque se puede ver el dia,mes y año en la cual se hizo la venta.';
COMMENT ON COLUMN PROYECTOFINAL.Venta.Total IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el monto total.';
COMMENT ON COLUMN PROYECTOFINAL.Venta.FK_Cliente IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Venta.FK_Empleado IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Venta.FK_MetodoPago IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Venta.FK_Caja IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal';


--Tabla DireccionCliente--

CREATE TABLE PROYECTOFINAL.DireccionCliente(
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


ALTER TABLE PROYECTOFINAL.DireccionCliente ADD CONSTRAINT FK_Cliente_DireCliente FOREIGN KEY (FK_Cliente) REFERENCES PROYECTOFINAL.Cliente(PK_Cliente);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.DireccionCliente IS 'Tabla que almacena las direcciones de los clientes,PK_DireccionCliente,Calle,Colonia,NumExterior,NumInterior,Estado,CP,Ciudad,FK_Cliente.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.PK_DireccionCliente IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.Estado IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.CP IS 'se utilizo el tipo char con rango de 5 porque siempre deve de ser 5 digitos El Codigo postal..';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionCliente.FK_Cliente IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla Cliente--

CREATE TABLE PROYECTOFINAL.Cliente(
PK_Cliente integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Apellido_Paterno varchar2(50) NOT NULL,
Apellido_Materno varchar2(50) NOT NULL,
Correo varchar2(100) NOT NULL,
FK_TelefonosCliente integer
);


ALTER TABLE PROYECTOFINAL.Cliente ADD CONSTRAINT FK_TelefonosCliente_Cliente FOREIGN KEY (FK_TelefonosCliente) REFERENCES PROYECTOFINAL.TelefonosCliente(PK_TelefonosCliente);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Cliente IS 'Tabla que almacena la información de los clientes,PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente';
COMMENT ON COLUMN PROYECTOFINAL.Cliente.PK_Cliente IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Cliente.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Cliente.Apellido_Paterno IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Cliente.Apellido_Materno IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Cliente.Correo IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Cliente.FK_TelefonosCliente IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla TelefonosCliente--

CREATE TABLE PROYECTOFINAL.TelefonosCliente(
PK_TelefonosCliente integer PRIMARY KEY,
TelefonoMovil varchar2(15) NOT NULL,
TelefonoLocal varchar2(15) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.TelefonosCliente IS 'Tabla que almacena los teléfonos de los clientes,PK_TelefonosCliente,TelefonoMovil,TelefonoLocal.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosCliente.PK_TelefonosCliente IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosCliente.TelefonoMovil IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosCliente.TelefonoLocal IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango,.';


--Tabla Impuesto--

CREATE TABLE PROYECTOFINAL.Impuesto(
PK_Impuesto integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Porcentaje varchar2(50) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Impuesto IS 'Tabla que almacena los impuestos,PK_Impuesto,Nombre,Porcentaje.';
COMMENT ON COLUMN PROYECTOFINAL.Impuesto.PK_Impuesto IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Impuesto.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Impuesto.Porcentaje IS 'se utilizo de tipo varchar con rango de 50 porque se puede ingresar simbolos de porsentaje si es que se requiere.';


--Tabla Producto--

CREATE TABLE PROYECTOFINAL.Producto(
PK_Producto integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
Descripcion varchar2(200) NOT NULL,
StockActual NUMBER NOT NULL,
FK_Categoria integer,
FK_Proveedor integer,
FK_Impuesto integer
);
--se le agrego el precio ya que no tenia la tabla 
ALTER TABLE PROYECTOFINAL.Producto
ADD Precio NUMBER(10, 2);


ALTER TABLE PROYECTOFINAL.Producto ADD CONSTRAINT FK_Categoria_Producto FOREIGN KEY (FK_Categoria) REFERENCES PROYECTOFINAL.Categoria(PK_Categoria);

ALTER TABLE PROYECTOFINAL.Producto ADD CONSTRAINT FK_Proveedor_Producto FOREIGN KEY (FK_Proveedor) REFERENCES PROYECTOFINAL.Proveedor(PK_Proveedor);

ALTER TABLE PROYECTOFINAL.Producto ADD CONSTRAINT FK_Impuesto_Producto FOREIGN KEY (FK_Impuesto) REFERENCES PROYECTOFINAL.Impuesto(PK_Impuesto);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Producto IS 'Tabla que almacena la información de los productos,PK_Producto,Nombre,Descripcion,StockActual,FK_Categoria,FK_Proveedor,FK_Impuesto.';
COMMENT ON COLUMN PROYECTOFINAL.Producto.PK_Producto IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Producto.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Producto.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de el producto.';
COMMENT ON COLUMN PROYECTOFINAL.Producto.StockActual IS 'se utilizo de tipo number para que guarde la cantidad de productos que hay en stock Actualmente.';
COMMENT ON COLUMN PROYECTOFINAL.Producto.FK_Categoria IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Producto.FK_Proveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.Producto.FK_Impuesto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla DetalleVenta--

CREATE TABLE PROYECTOFINAL.DetalleVenta(
PK_DetalleVenta integer PRIMARY KEY,
Cantidad number NOT NULL,
PrecioUnitario float NOT NULL,
Descuento varchar2(50) NOT NULL,
FK_Venta integer,
FK_Producto integer
);


ALTER TABLE PROYECTOFINAL.DetalleVenta ADD CONSTRAINT FK_Venta_DetalleVenta FOREIGN KEY (FK_Venta) REFERENCES PROYECTOFINAL.Venta(PK_Venta);

ALTER TABLE PROYECTOFINAL.DetalleVenta ADD CONSTRAINT FK_Producto_DetalleVenta FOREIGN KEY (FK_Producto) REFERENCES PROYECTOFINAL.Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.DetalleVenta IS 'Tabla que almacena los detalles de cada venta realizada,PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleVenta.PK_DetalleVenta IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleVenta.Cantidad IS 'se utilizo de tipo number porque es para cantidad tipo unidad en entero.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleVenta.PrecioUnitario IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el precio unitario.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleVenta.Descuento IS 'se utilizo de tipo varchar2 con rango de 50 porque se puede incluir simbolos en caso de necesitarlos.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleVenta.FK_Venta IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';
COMMENT ON COLUMN PROYECTOFINAL.DetalleVenta.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla Promocion--

CREATE TABLE PROYECTOFINAL.Promocion(
PK_Promocion integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion Varchar2(200) NOT NULL,
HoraInicio DATE NOT NULL,
HoraFin DATE NOT NULL,
PorcentajeDescuento varchar2(50) NOT NULL,
FK_Producto integer
);


ALTER TABLE PROYECTOFINAL.Promocion ADD CONSTRAINT FK_Producto_Promocion FOREIGN KEY (FK_Producto) REFERENCES PROYECTOFINAL.Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Promocion IS 'Tabla que almacena promociones y descuentos aplicados a productos,PK_Promocion,Nombre,Descripcion,HoraInicio,HoraFin,PorcentajeDescuento,FK_Producto.';
COMMENT ON COLUMN PROYECTOFINAL.Promocion.PK_Promocion IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Promocion.Nombre IS 'se utilizo el tipo varchar2 con rango de 50 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Promocion.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de la promocion.';
COMMENT ON COLUMN PROYECTOFINAL.Promocion.HoraInicio IS 'se utilizo de tipo date para saber la hora en la cual inicio la promocion.';
COMMENT ON COLUMN PROYECTOFINAL.Promocion.HoraFin IS 'se utilizo de tipo date para saber la hora en la cual finalizo la promocion.';
COMMENT ON COLUMN PROYECTOFINAL.Promocion.PorcentajeDescuento IS 'se utilizo de tipo varchar con rango de 50 porque se puede usar simbolos en caso de necesitarlos.';
COMMENT ON COLUMN PROYECTOFINAL.Promocion.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla PrecioHistorico--

CREATE TABLE PROYECTOFINAL.PrecioHistorico(
PK_PrecioHistorico integer PRIMARY KEY,
Precio float,
FechaInicio DATE NOT NULL,
FechaFin DATE NOT NULL,
FK_Producto integer
);


ALTER TABLE PROYECTOFINAL.PrecioHistorico ADD CONSTRAINT FK_Producto_PrecioHist FOREIGN KEY (FK_Producto) REFERENCES PROYECTOFINAL.Producto(PK_Producto);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.PrecioHistorico IS 'Tabla que almacena los precios históricos de los productos,PK_PrecioHistorico,Precio,FechaInicio,FechaFin,FK_Producto.';
COMMENT ON COLUMN PROYECTOFINAL.PrecioHistorico.PK_PrecioHistorico IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.PrecioHistorico.Precio IS 'se utilizo el tipo float porque es de tipo numerico decimal para representar el precio unitario.';
COMMENT ON COLUMN PROYECTOFINAL.PrecioHistorico.FechaInicio IS 'se utilizo de tipo date para saber la fecha, dia mes y año.';
COMMENT ON COLUMN PROYECTOFINAL.PrecioHistorico.FechaFin IS 'se utilizo de tipo date para saber la fecha, dia mes y año.';
COMMENT ON COLUMN PROYECTOFINAL.PrecioHistorico.FK_Producto IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';



--Tabla Categoria--

CREATE TABLE PROYECTOFINAL.Categoria(
PK_Categoria integer PRIMARY KEY,
Nombre varchar2(50) NOT NULL,
Descripcion varchar2(200) NOT NULL
);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Categoria IS 'Tabla que almacena las categorías,PK_Categoria,Nombre,Descripcion.';
COMMENT ON COLUMN PROYECTOFINAL.Categoria.PK_Categoria IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Categoria.Nombre IS 'se utilizo de tipo varchar con rango de 50 ya que al ser alfanumerico pude guardar la categoria con cualquier nombre.';
COMMENT ON COLUMN PROYECTOFINAL.Categoria.Descripcion IS 'se utilizo de tipo varchar2 con rango de 200 para que tenga un alto rango de caracteres para que pueda ser una descripcion extensa de la categoria.';



--Tabla Proveedor--

CREATE TABLE PROYECTOFINAL.Proveedor(
PK_Proveedor integer PRIMARY KEY,
Nombre varchar2(100) NOT NULL,
Correo varchar2(100) NOT NULL,
FK_TelefonosProveedor integer
);


ALTER TABLE PROYECTOFINAL.Proveedor ADD CONSTRAINT FK_TelefonosProveedor_Proveedor FOREIGN KEY (FK_TelefonosProveedor) REFERENCES PROYECTOFINAL.TelefonosProveedor(PK_TelefonosProveedor);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.Proveedor IS 'Tabla que almacena la información de los proveedores.';
COMMENT ON COLUMN PROYECTOFINAL.Proveedor.PK_Proveedor IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.Proveedor.Nombre IS 'se utilizo de tipo varchar con rango de 50 ya que al ser alfanumerico pude guardar el nombre.';
COMMENT ON COLUMN PROYECTOFINAL.Proveedor.Correo IS 'se utilizo el tipo varchar2 con rango de 100 porque es de tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco (sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.Proveedor.FK_TelefonosProveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


--Tabla TelefonosProveedor--

CREATE TABLE PROYECTOFINAL.TelefonosProveedor(
PK_TelefonosProveedor integer PRIMARY KEY,
TelefonoMovil varchar2(15) NOT NULL,
TelefonoLocal varchar2(15) NOT NULL 
);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.TelefonosProveedor IS 'Tabla que almacena los teléfonos de los proveedores.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosProveedor.PK_TelefonosProveedor IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosProveedor.TelefonoMovil IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango,.';
COMMENT ON COLUMN PROYECTOFINAL.TelefonosProveedor.TelefonoLocal IS 'se utilizo el tipo varchar2 con rango de 15 porque con tipo numerico sale error en el rango,.';



--Tabla DireccionProveedor--

CREATE TABLE PROYECTOFINAL.DireccionProveedor(
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


ALTER TABLE PROYECTOFINAL.DireccionProveedor ADD CONSTRAINT FK_Proveedor_DireProv FOREIGN KEY (FK_Proveedor) REFERENCES PROYECTOFINAL.Proveedor(PK_Proveedor);

--COMENTARIOS--
COMMENT ON TABLE PROYECTOFINAL.DireccionProveedor IS 'Tabla que almacena las direcciones de los proveedores,PK_DireccionProveedor,Calle,Colonia,Estado,CP,NumExterior,NumInterior,Ciudad,FK_Proveedor.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.PK_DireccionProveedor IS 'se utilizo el tipo integer porque es tipo numerico y es primary key.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.Calle IS 'se utilizo el tipo varchar2 con rango de 100 porque es de alfanumerico, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.Colonia IS 'se utilizo el tipo varchar2 con rango de 100 por que es de tipo alfanumerico igual que en la columna calle, y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.Estado IS 'se uso varchar2 con rango de 50 porque es para tipo alfanumerico,y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.CP IS 'se utilizo el tipo char con rango de 5 porque siempre deve de ser 5 digitos El Codigo postal.';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.NumExterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.NumInterior IS 'se utilizo el tipo varchar2 con rango de 10 porque al usar de tipo numerico me marca error en el rango de digitos al hacer los insert y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.Ciudad IS 'se utilizo el tipo varchar2 con rango de 100 porque es para tipo alfanumerico y al ser varchar2 se reajusta si se dejan espacios en blanco(sin usar).';
COMMENT ON COLUMN PROYECTOFINAL.DireccionProveedor.FK_Proveedor IS 'se utilizo el tipo integer porque es el mismo tipo que se uso en la primary key en su tabla principal.';


/*INSERTS SIN LLAVES FORENAEAS*/
/*TABLA CATEGORIA*/
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (1, 'Escritura', 'Artículos para escribir como bolígrafos.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (2, 'Papel', 'Distintos tipos de papel como hojas, cartulinas.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (3, 'Organización', 'Productos para archivar y organizar documentos.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (4, 'Tecnología', 'Artículos tecnológicos de uso escolar u oficina.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (5, 'Arte', 'Material para dibujo y pintura.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (6, 'Adhesivos', 'Pegamentos, cintas adhesivas y similares.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (7, 'Oficina', 'Artículos comunes de oficina.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (8, 'Almacenamiento', 'Cajas, carpetas y otros contenedores.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (9, 'Mobiliario', 'Muebles pequeños y accesorios escolares.');
INSERT INTO  PROYECTOFINAL.Categoria (PK_Categoria, Nombre, Descripcion) VALUES (10, 'Accesorios', 'Varios artículos pequeños de papelería.');

/* Inserts para la tabla Impuesto */
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (1, 'IVA General', '16');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (2, 'IEPS Lapiceras', '8');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (3, 'IVA Escolar', '10');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (4, 'IVA Libretas', '12');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (5, 'Impuesto Cuadernos', '5');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (6, 'IVA Promocional', '4');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (7, 'IVA Gomas', '7');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (8, 'Impuesto Extra', '6');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (9, 'IVA Colores', '9');
INSERT INTO  PROYECTOFINAL.Impuesto (PK_Impuesto, Nombre, Porcentaje) VALUES (10, 'IVA Adhesivos', '11');

/* Inserts para la tabla TelefonosCliente */
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (1, '5512345670', '5550123400');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (2, '5512345671', '5550123401');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (3, '5512345672', '5550123402');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (4, '5512345673', '5550123403');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (5, '5512345674', '5550123404');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (6, '5512345675', '5550123405');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (7, '5512345676', '5550123406');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (8, '5512345677', '5550123407');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (9, '5512345678', '5550123408');
INSERT INTO PROYECTOFINAL.TelefonosCliente (PK_TelefonosCliente, TelefonoMovil, TelefonoLocal) VALUES (10, '5512345679', '5550123409');

/* Inserts para la tabla DireccionSucursal */
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (1, 'Xalapa', 'Av. Pipila', 'B1', '102', 'Centro', '91000', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (2, 'Coatepec', 'Calle Lapicera', NULL, '45', 'El Carmen', '91010', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (3, 'Veracruz', 'Pluma Azul', 'A2', '78', 'Zaragoza', '91700', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (4, 'Orizaba', 'Av. Cartulina', NULL, '12', 'Centro', '94300', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (5, 'Poza Rica', 'Boulevard Tinta', 'C', '89', 'Petrolera', '93210', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (6, 'Cordoba', 'Av. Mochila', '1', '34', 'La Luz', '94500', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (7, 'Papantla', 'Papel Bond', NULL, '56', 'Centro', '93400', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (8, 'Minatitlan', 'Calle Goma', NULL, '77', 'Industrial', '96700', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (9, 'Tuxpan', 'Marcador', '2B', '88', 'Reforma', '92770', 'Veracruz');
INSERT INTO PROYECTOFINAL.DireccionSucursal (PK_DireccionSucursal, Ciudad, Calle, NumInterior, NumExterior, Colonia, CP, Estado) VALUES (10, 'Boca del Rio', 'Libreta', NULL, '93', 'Costa Verde', '94290', 'Veracruz');

/*Tabla metodo pago*/
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (1, 'Efectivo', 'Pago en efectivo al momento de la compra.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (2, 'Tarjeta de Débito', 'Pago realizado con tarjeta de débito.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (3, 'Tarjeta de Crédito', 'Pago realizado con tarjeta de crédito.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (4, 'Efectivo', 'Pago en efectivo al momento de la compra.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (5, 'Tarjeta de Débito', 'Pago realizado con tarjeta de débito.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (6, 'Tarjeta de Crédito', 'Pago realizado con tarjeta de crédito.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (7, 'Efectivo', 'Pago en efectivo al momento de la compra.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (8, 'Tarjeta de Débito', 'Pago realizado con tarjeta de débito.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (9, 'Tarjeta de Crédito', 'Pago realizado con tarjeta de crédito.');
INSERT INTO PROYECTOFINAL.MetodoDePago (PK_MetodoPago, Nombre, Descripcion) VALUES (10, 'Tarjeta de Crédito', 'Pago realizado con tarjeta de crédito.');
/* se elimino del 4 al 10 dejando unicamente los primeros 3 */
DELETE FROM PROYECTOFINAL.MetodoDePago WHERE PK_MetodoPago BETWEEN 4 AND 10;

/* Inserts para la tabla TelefonosProveedor */
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (1, '5587654321', '5560123451');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (2, '5587654322', '5560123452');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (3, '5587654323', '5560123453');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (4, '5587654324', '5560123454');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (5, '5587654325', '5560123455');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (6, '5587654326', '5560123456');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (7, '5587654327', '5560123457');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (8, '5587654328', '5560123458');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (9, '5587654329', '5560123459');
INSERT INTO PROYECTOFINAL.TelefonosProveedor (PK_TelefonosProveedor, TelefonoMovil, TelefonoLocal) VALUES (10,'5587654330', '5560123460');

/*TABLA ROL*/
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (1, 'Administrador');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (2, 'Vendedor');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (3, 'Almacén');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (4, 'Compras');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (5, 'Gerente');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (6, 'Cajero');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (7, 'Soporte Técnico');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (8, 'Cliente');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (9, 'Contador');
INSERT INTO PROYECTOFINAL.Rol (PK_Rol, Nombre) VALUES (10, 'Supervisor');

/*INSERTS CON LLAVES FORENAEAS*/
/*TABLA PROVEEDOR*/
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (1, 'Papelería Central', 'centralpapeleria@gmail.com',1);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (2, 'Distribuidora Escolar', 'ventasescolar@gmail.com', 2);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (3, 'OfiMax', 'contactoofimax@gmail.com', 3);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (4, 'Suministros Delta', 'infodelta@gmail.com', 4);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (5, 'Artel S.A.', 'soporteartel@gmail.com', 5);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (6, 'MegaPapelería', 'megapapeleria@gmail.com', 6);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (7, 'Mundo Escolar', 'atencionmundoescolar@gmail.com', 7);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (8, 'Oficina Fácil', 'ventasoficinafacil@gmail.com', 8);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (9, 'Papelería Lupita', 'lupitapape@gmail.com', 9);
INSERT INTO PROYECTOFINAL.Proveedor (PK_Proveedor, Nombre, Correo, FK_TelefonosProveedor) VALUES (10, 'Express Office', 'expressoffice@gmail.com', 10);

/* Inserts para la tabla DireccionProveedor */
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (1, 'Proveedora Central', 'Comercial', 'CDMX', '01000', '45', NULL, 'Ciudad de Mexico', 1);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (2, 'Av. Tintas', 'Industrial', 'Jalisco', '44100', '89', '2B', 'Guadalajara', 2);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (3, 'Lapiceros Norte', 'Centro', 'Nuevo Leon', '64000', '77', NULL, 'Monterrey', 3);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (4, 'Cartones del Sur', 'Fovissste', 'Puebla', '72000', '22', '1', 'Puebla', 4);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (5, 'Pegamentos MX', 'El Carmen', 'CDMX', '03900', '38', NULL, 'Ciudad de Mexico', 5);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (6, 'Distribuidora Escolar', 'Las Americas', 'Yucatan', '97000', '19', NULL, 'Merida', 6);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (7, 'OfiMax', 'Lopez Mateos', 'Jalisco', '45000', '33', '3C', 'Zapopan', 7);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (8, 'Proveedor Plus', 'Roma Norte', 'CDMX', '06700', '11', NULL, 'Ciudad de Mexico', 8);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (9, 'Grupo Escolar', 'Reforma', 'Oaxaca', '68000', '90', '2', 'Oaxaca', 9);
INSERT INTO PROYECTOFINAL.DireccionProveedor (PK_DireccionProveedor, Calle, Colonia, Estado, CP, NumExterior, NumInterior, Ciudad, FK_Proveedor) VALUES (10, 'Papeleria Global', 'Juarez', 'CDMX', '06600', '10', NULL, 'Ciudad de Mexico', 10);

/* Inserts para la tabla Producto */
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (1, 'Cuaderno Profesional', 'Cuaderno de 100 hojas raya', 120, 1, 2, 3);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (2, 'Pluma Azul', 'Pluma tinta azul retractil', 250, 2, 3, 1);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (3, 'Marcador Permanente', 'Marcador negro para superficies lisas', 75, 3, 1, 9);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (4, 'Resaltador Amarillo', 'Resaltador fluorescente', 180, 3, 2, 8);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (5, 'Goma de borrar', 'Goma blanca escolar', 90, 4, 4, 7);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (6, 'Caja de colores', 'Colores largos de madera', 60, 5, 3, 9);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (7, 'Pegamento en barra', 'Pegamento solido escolar', 130, 4, 5, 10);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (8, 'Cartulina Blanca', 'Cartulina tamano carta', 200, 6, 1, 1);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (9, 'Estuche de geometria', 'Juego con regla, compas y escuadra', 45, 7, 6, 6);
INSERT INTO PROYECTOFINAL.Producto (PK_Producto, Nombre, Descripcion, StockActual, FK_Categoria, FK_Proveedor, FK_Impuesto) VALUES (10, 'Lapicera escolar', 'Lapicera de tela con cierre', 80, 8, 2, 2);
--acualizacion para agregar los precios en la tabla producto
UPDATE PROYECTOFINAL.Producto SET Precio = 35.50 WHERE PK_Producto = 1;
UPDATE PROYECTOFINAL.Producto SET Precio = 12.00 WHERE PK_Producto = 2;
UPDATE PROYECTOFINAL.Producto SET Precio = 18.75 WHERE PK_Producto = 3;
UPDATE PROYECTOFINAL.Producto SET Precio = 16.00 WHERE PK_Producto = 4;
UPDATE PROYECTOFINAL.Producto SET Precio = 10.25 WHERE PK_Producto = 5;
UPDATE PROYECTOFINAL.Producto SET Precio = 48.00 WHERE PK_Producto = 6;
UPDATE PROYECTOFINAL.Producto SET Precio = 14.30 WHERE PK_Producto = 7;
UPDATE PROYECTOFINAL.Producto SET Precio = 5.00  WHERE PK_Producto = 8;
UPDATE PROYECTOFINAL.Producto SET Precio = 75.00 WHERE PK_Producto = 9;
UPDATE PROYECTOFINAL.Producto SET Precio = 28.90 WHERE PK_Producto = 10;

/* Inserts para la tabla Promocion */
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (1, 'Promo Regreso a Clases', 'Descuento en cuadernos', TO_DATE('2025-07-01','YYYY-MM-DD'), TO_DATE('2025-07-31','YYYY-MM-DD'), '15', 1);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (2, 'Ofertazo Gomas', 'Mitad de precio en gomas', TO_DATE('2025-07-05','YYYY-MM-DD'), TO_DATE('2025-07-15','YYYY-MM-DD'), '50', 5);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (3, 'Marcadores 3x2', 'Llevate 3 paga 2', TO_DATE('2025-07-10','YYYY-MM-DD'), TO_DATE('2025-07-20','YYYY-MM-DD'), '33', 3);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (4, 'Dia del estudiante', 'Descuento general', TO_DATE('2025-07-01','YYYY-MM-DD'), TO_DATE('2025-07-10','YYYY-MM-DD'), '10', 2);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (5, 'Semana de Colores', 'Descuento en caja de colores', TO_DATE('2025-07-15','YYYY-MM-DD'), TO_DATE('2025-07-22','YYYY-MM-DD'), '20', 6);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (6, 'Promo Pegamento', '2x1 en barra', TO_DATE('2025-07-03','YYYY-MM-DD'), TO_DATE('2025-07-09','YYYY-MM-DD'), '50', 7);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (7, 'Cartulina Loca', 'Precio especial por volumen', TO_DATE('2025-07-12','YYYY-MM-DD'), TO_DATE('2025-07-19','YYYY-MM-DD'), '25', 8);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (8, 'Promo Geometria', 'Descuento escolar', TO_DATE('2025-07-06','YYYY-MM-DD'), TO_DATE('2025-07-12','YYYY-MM-DD'), '18', 9);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (9, 'Lapiceras baratas', 'Liquidacion de modelos anteriores', TO_DATE('2025-07-08','YYYY-MM-DD'), TO_DATE('2025-07-15','YYYY-MM-DD'), '30', 10);
INSERT INTO PROYECTOFINAL.Promocion (PK_Promocion, Nombre, Descripcion, HoraInicio, HoraFin, PorcentajeDescuento, FK_Producto) VALUES (10, 'Todo para el alumno', 'Combo especial', TO_DATE('2025-07-01','YYYY-MM-DD'), TO_DATE('2025-07-31','YYYY-MM-DD'), '20', 4);

/*TABLA PRECIO HISTORICO*/
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (1, 10.50, DATE '2024-01-01', DATE '2024-02-01', 1);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (2, 11.00, DATE '2024-02-02', DATE '2024-03-01', 1);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (3, 8.50, DATE '2024-01-01', DATE '2024-02-01', 2);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (4, 9.50, DATE '2024-02-02', DATE '2024-03-01', 2);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (5, 5.50, DATE '2024-03-01', DATE '2024-04-01', 3);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (6, 6.00, DATE '2024-04-02', DATE '2024-05-01', 3);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (7, 15.00, DATE '2024-01-01', DATE '2024-03-01', 4);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (8, 16.00, DATE '2024-03-02', DATE '2024-05-01', 4);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (9, 12.50, DATE '2024-01-01', DATE '2024-02-01', 5);
INSERT INTO PROYECTOFINAL.PrecioHistorico (PK_PrecioHistorico, Precio, FechaInicio, FechaFin, FK_Producto) VALUES (10, 13.00, DATE '2024-02-02', DATE '2024-03-01', 5);

/*tabla sucursal*/
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (1, 'Sucursal Centro', 1);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (2, 'Sucursal Norte', 2);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (3, 'Sucursal Sur', 3);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (4, 'Sucursal Este', 4);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (5, 'Sucursal Oeste', 5);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (6, 'Sucursal Plaza Museo', 6);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (7, 'Sucursal las americas', 7);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (8, 'Sucursal Coatepec', 8);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (9, 'Sucursal Crystal', 9);
INSERT INTO PROYECTOFINAL.Sucursal (PK_Sucursal, Nombre, FK_DireccionSucursal) VALUES (10,'Sucursal Animas', 10);

-- Tabla Empleado--
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (1, 'Luis', 'Ruiz', 'Sanchez', 'luis@gmail.com', 1);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (2, 'Roque', 'Ruiz', 'Hernandez', 'roque@gmail.com', 2);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (3, 'Enrique', 'Montero', 'Martinez', 'enrique@gmail.com', 3);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (4, 'Abel', 'Cervantez', 'Ruiz', 'abel@gmail.com', 4);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (5, 'Alvaro', 'Ruiz', 'Carrera', 'alvaro@gmail.com', 5);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (6, 'Maria', 'Ramirez', 'Hernandez', 'maria@gmail.com', 6);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (7, 'Alexa', 'Montero', 'Rodriguez', 'alexa@gmail.com', 7);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (8, 'Alex', 'Cervantes', 'Rodriguez', 'alex@gmail.com', 8);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (9, 'Yesica', 'Sanchez', 'Montero', 'yesica@gmail.com', 9);
INSERT INTO PROYECTOFINAL.Empleado (PK_Empleado,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_Sucursal) VALUES (10, 'Katia', 'Montero', 'Rodriguez', 'katia@gmail.com', 10);

/* Inserts para la tabla Caja */
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (1, 'Caja Principal', 'ACTIVA', 1);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (2, 'Caja Secundaria', 'ACTIVA', 1);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (3, 'Caja Escolar', 'ACTIVA', 2);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (4, 'Caja Express', 'INACTIVA', 1);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (5, 'Caja Oficina', 'ACTIVA', 2);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (6, 'Caja Mostrador', 'INACTIVA', 3);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (7, 'Caja Estudiantes', 'ACTIVA', 3);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (8, 'Caja Ventas', 'INACTIVA', 1);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (9, 'Caja Promociones', 'INACTIVA', 2);
INSERT INTO PROYECTOFINAL.Caja (PK_Caja, Nombre, Estatus, FK_Sucursal) VALUES (10, 'Caja Facturación', 'ACTIVA', 3);

/* Inserts para la tabla Turno */
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (1, TO_DATE('2025-07-09 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), 1, 1);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (2, TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 20:00', 'YYYY-MM-DD HH24:MI'), 2, 2);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (3, TO_DATE('2025-07-09 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), 3, 3);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (4, TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 20:00', 'YYYY-MM-DD HH24:MI'), 4, 4);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (5, TO_DATE('2025-07-09 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), 5, 5);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (6, TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 20:00', 'YYYY-MM-DD HH24:MI'), 6, 6);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (7, TO_DATE('2025-07-09 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), 7, 7);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (8, TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 20:00', 'YYYY-MM-DD HH24:MI'), 8, 8);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (9, TO_DATE('2025-07-09 08:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), 9, 9);
INSERT INTO PROYECTOFINAL.Turno (PK_Turno, HoraInicio, HoraFin, FK_Empleado, FK_Caja) VALUES (10,TO_DATE('2025-07-09 14:00', 'YYYY-MM-DD HH24:MI'), TO_DATE('2025-07-09 20:00', 'YYYY-MM-DD HH24:MI'), 10, 10);

/* Inserts para la tabla TelefonoEmpleado */
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (1, '5591234561', '5559234561', 1);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (2, '5591234562', '5559234562', 2);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (3, '5591234563', '5559234563', 3);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (4, '5591234564', '5559234564', 4);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (5, '5591234565', '5559234565', 5);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (6, '5591234566', '5559234566', 6);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (7, '5591234567', '5559234567', 7);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (8, '5591234568', '5559234568', 8);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (9, '5591234569', '5559234569', 9);
INSERT INTO PROYECTOFINAL.TelefonosEmpleado (PK_TelefonosEmpleado, TelefonoMovil, TelefonoLocal, FK_Empleado) VALUES (10, '5591234570', '5559234570', 10);

/* Inserts para la tabla Usuario */
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (1, 'jlopez', 'abc123', 'jlopez@email.com', 'A', 2, 4);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (2, 'mramirez', 'pass456', 'mramirez@email.com', 'A', 1, 7);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (3, 'cvaldez', 'clave789', 'cvaldez@email.com', 'I', 3, 6);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (4, 'laura123', 'pw321', 'laura@email.com', 'A', 1, 8);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (5, 'edu_gomez', 'papel321', 'edu@email.com', 'A', 2, 3);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (6, 'karla.q', 'lapiz987', 'karla@email.com', 'I', 2, 5);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (7, 'ricardo.t', 'goma654', 'ricardo@email.com', 'A', 3, 9);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (8, 'ana.vega', 'cuaderno01', 'ana@email.com', 'A', 1, 2);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (9, 'rangel', 'papelote!', 'rangel@email.com', 'A', 1, 1);
INSERT INTO PROYECTOFINAL.Usuario (PK_Usuario, NombreUsuario, Password, Correo, Estatus, FK_Rol, FK_Empleado) VALUES (10, 'daliah', 'superpass', 'dalia@email.com', 'I', 2, 10);

/* Tabla Compra */
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (1, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 20,1,1,1);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (2, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 15,2,2,2);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (3, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 25,3,3,3);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (4, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 30,4,4,4);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (5, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 20,5,5,5);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (6, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 10,6,6,6);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (7, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 40,7,7,7);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (8, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 20,8,8,8);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (9, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 35,9,9,9);
INSERT INTO PROYECTOFINAL.Compra (PK_Compra,Fecha,Total,FK_Empleado,FK_Proveedor,FK_Sucursal) VALUES (10, TO_DATE('08-07-2025' , 'DD-MM-YYYY'), 20,10,10,10);

/* Tabla Telefono Sucursal */
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (1,'2969711515', '2961234567',1 );
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (2,'2969711414', '2961231111',2 );
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (3,'2969711313', '2961232222', 3);
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (4,'2969711212', '2961233333', 4);
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (5,'2969711111', '2961234444', 5);
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (6,'2969710000', '2961235555', 6);
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (7,'2969711616', '2961236666', 7);
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (8,'2969711717', '2961237777', 8);
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (9,'2969711818', '2961238888', 9);
INSERT INTO PROYECTOFINAL.TelefonosSucursal (PK_TelefonosSucursal, TelefonoLocal, TelefonoMovil, FK_Sucursal) VALUES (10,'2969711919', '2961239999', 10);

/* Tabla Cliente */
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (1, 'Mario', 'Montero', 'Sanchez', 'mario@gmail.com', 1);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (2, 'pedro', 'Guerra', 'Lopez', 'pedro@gmail.com', 2);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (3, 'Jose', 'Guerra', 'Lopez', 'jose@gmail.com', 3);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (4, 'Jesus', 'Lopez', 'Lopez', 'jesus@gmail.com', 4);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (5, 'Leandro', 'Guerra', 'Ramirez', 'leandro@gmail.com', 5);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (6, 'Maria', 'Guerra', 'Martinez', 'maria@gmail.com', 6);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (7, 'Alondra', 'Lopez', 'Lopez', 'alondra@gmail.com', 7);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (8, 'Luisa', 'Sanchez', 'Martinez', 'luisa@gmail.com', 8);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (9, 'Alexa', 'Guerra', 'Lopez', 'alexa@gmail.com', 9);
INSERT INTO PROYECTOFINAL.Cliente (PK_Cliente,Nombre,Apellido_Paterno,Apellido_Materno,Correo,FK_TelefonosCliente) VALUES (10, 'Laura', 'Rodrigues', 'Sanchez', 'laura@gmail.com', 10);

/* Inserts para la tabla DireccionCliente */
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (1, 'Lapicero', 'Centro', '23', '1A', 'Veracruz', '91000', 'Xalapa', 2);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (2, 'Marcador', 'La Luz', '45', NULL, 'Veracruz', '91010', 'Xalapa', 5);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (3, 'Pluma', 'Jardines', '78', 'B3', 'Veracruz', '91015', 'Coatepec', 4);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (4, 'Cartulina', 'Centro', '12', NULL, 'Veracruz', '91020', 'Xalapa', 1);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (5, 'Tinta', 'Zaragoza', '56', NULL, 'Veracruz', '91700', 'Veracruz', 6);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (6, 'Goma', 'Reforma', '88', NULL, 'Veracruz', '94290', 'Boca del Rio', 3);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (7, 'Cuaderno', 'Universidad', '39', NULL, 'Veracruz', '94500', 'Cordoba', 8);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (8, 'Libreta', 'La Paz', '49', '2B', 'Veracruz', '93400', 'Papantla', 9);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (9, 'Papel', 'La Cima', '19', NULL, 'Veracruz', '94300', 'Orizaba', 7);
INSERT INTO PROYECTOFINAL.DireccionCliente (PK_DireccionCliente, Calle, Colonia, NumExterior, NumInterior, Estado, CP, Ciudad, FK_Cliente) VALUES (10, 'Crayon', 'Petrolera', '60', '3', 'Veracruz', '93210', 'Poza Rica', 10);

/* Inserts para la tabla DetalleCompra */
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (1, 100, 5.50, 1, 1);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (2, 50, 15.00, 1, 2);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (3, 200, 2.00, 2, 3);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (4, 80, 3.75, 2, 4);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (5, 150, 6.25, 3, 5);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (6, 60, 7.10, 3, 6);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (7, 90, 4.80, 4, 7);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (8, 120, 2.50, 4, 8);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (9, 110, 3.00, 5, 9);
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto) VALUES (10, 75, 10.00, 5, 10);

/* Tabla Venta */
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (1, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 50,1,1,1,1);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (2, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 20,2,2,2,2);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (3, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 30,3,3,3,3);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (4, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 50,4,4,4,4);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (5, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 40,5,5,5,5);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (6, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 50,6,6,6,6);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (7, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 30,7,7,7,7);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (8, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 20,8,8,8,8);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (9, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 50,9,9,9,9);
INSERT INTO PROYECTOFINAL.Venta (PK_Venta,Fecha,Total,FK_Cliente,FK_Empleado,FK_MetodoPago,FK_Caja) VALUES (10, TO_DATE('08-07-2025', 'DD-MM-YYYY'), 40,10,10,10,10);
-- Actualizar la tabla Venta para usar solo métodos de pago 1, 2, y 3
UPDATE PROYECTOFINAL.Venta SET FK_MetodoPago = MOD(PK_Venta - 1, 3) + 1;

/* Inserts para la tabla Devolucion */
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (1, TO_DATE('2025-07-01', 'YYYY-MM-DD'), 'Producto dañado', 1, 1);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (2, TO_DATE('2025-07-02', 'YYYY-MM-DD'), 'Error en pedido', 2, 2);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (3, TO_DATE('2025-07-03', 'YYYY-MM-DD'), 'Cambio por color', 3, 3);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (4, TO_DATE('2025-07-04', 'YYYY-MM-DD'), 'Cliente no satisfecho', 4, 4);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (5, TO_DATE('2025-07-05', 'YYYY-MM-DD'), 'Defecto de fábrica', 5, 5);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (6, TO_DATE('2025-07-06', 'YYYY-MM-DD'), 'No era lo solicitado', 6, 6);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (7, TO_DATE('2025-07-07', 'YYYY-MM-DD'), 'Error de inventario', 7, 7);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (8, TO_DATE('2025-07-08', 'YYYY-MM-DD'), 'Producto incompleto', 8, 8);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (9, TO_DATE('2025-07-09', 'YYYY-MM-DD'), 'Paquete abierto', 9, 9);
INSERT INTO PROYECTOFINAL.Devolucion (PK_Devolucion, Fecha, Motivo, FK_Venta, FK_Empleado) VALUES (10,TO_DATE('2025-07-10', 'YYYY-MM-DD'), 'Cliente cambió de opinión', 10, 10);

/* Tabla Detalle Devolucion */
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (1,5,'El Articulo esta defectuoso',1,1);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (2,2,'El Articulo esta defectuoso',2,2);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (3,1,'El Articulo esta defectuoso',3,3);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (4,4,'El Articulo esta defectuoso',4,4);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (5,1,'El Articulo esta defectuoso',5,5);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (6,5,'El Articulo esta defectuoso',6,6);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (7,5,'El Articulo esta defectuoso',7,7);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (8,1,'El Articulo esta defectuoso',8,8);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (9,2,'El Articulo esta defectuoso',9,9);
INSERT INTO PROYECTOFINAL.DetalleDevolucion (PK_DetalleDevolucion,Cantidad,Motivo,FK_Devolucion,FK_Producto) VALUES (10,5,'El Articulo esta defectuoso',10,10);

/* Tabla Detalle Venta */
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (1,5,5,'$5',1,1);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (2,2,5,'$3',2,2);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (3,1,5,'$1',3,3);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (4,4,3,'$2',4,4);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (5,1,5,'$1',5,5);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (6,5,5,'$5',6,6);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (7,5,5,'$5',7,7);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (8,1,5,'$1',8,8);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (9,2,5,'$2',9,9);
INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta,Cantidad,PrecioUnitario,Descuento,FK_Venta,FK_Producto) VALUES (10,5,5,'$5',10,10);

/* Inserts para la tabla DireccionEmpleado */
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (1, 'Calle Papel', 'Centro', '91000', 'Veracruz', 'Xalapa', '101', '2A', 1);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (2, 'Av. Boligrafo', 'Progreso', '91010', 'Veracruz', 'Xalapa', '45', NULL, 2);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (3, 'Calle Goma', 'Zaragoza', '91700', 'Veracruz', 'Veracruz', '77', NULL, 3);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (4, 'Av. Cartulina', 'El Mirador', '94500', 'Veracruz', 'Cordoba', '39', 'B1', 4);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (5, 'Calle Libreta', 'Petrolera', '93210', 'Veracruz', 'Poza Rica', '12', NULL, 5);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (6, 'Paseo del Lapiz', 'La Cima', '93400', 'Veracruz', 'Papantla', '63', '3C', 6);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (7, 'Av. Cuaderno', 'Costa Verde', '94290', 'Veracruz', 'Boca del Rio', '88', NULL, 7);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (8, 'Calle Marcador', 'Universidad', '94300', 'Veracruz', 'Orizaba', '55', NULL, 8);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (9, 'Diagonal Goma', 'Jardines', '91015', 'Veracruz', 'Coatepec', '90', '1', 9);
INSERT INTO PROYECTOFINAL.DireccionEmpleado (Pk_DireccionEmpleado, Calle, Colonia, CP, Estado, Ciudad, NumExterior, NumInterior, FK_Empleado) VALUES (10, 'Calle Pegamento', 'Reforma', '96700', 'Veracruz', 'Minatitlan', '21', NULL, 10);

/* Inserts para la tabla InventarioDeMovimientos */ 
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (1, 'E', 20, TO_DATE('2025-07-01','YYYY-MM-DD'), 5, 1, NULL, 2);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (2, 'S', 10, TO_DATE('2025-07-02','YYYY-MM-DD'), 2, 4, 6, NULL);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (3, 'E', 50, TO_DATE('2025-07-03','YYYY-MM-DD'), 3, 3, NULL, 4);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (4, 'S', 5, TO_DATE('2025-07-04','YYYY-MM-DD'), 1, 2, 8, NULL);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (5, 'E', 100, TO_DATE('2025-07-05','YYYY-MM-DD'), 7, 5, NULL, 1);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (6, 'S', 15, TO_DATE('2025-07-06','YYYY-MM-DD'), 4, 1, 5, NULL);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (7, 'E', 70, TO_DATE('2025-07-07','YYYY-MM-DD'), 6, 6, NULL, 3);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (8, 'S', 30, TO_DATE('2025-07-08','YYYY-MM-DD'), 8, 3, 7, NULL);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (9, 'E', 25, TO_DATE('2025-07-09','YYYY-MM-DD'), 9, 2, NULL, 5);
INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (PK_InventarioMovimiento, TipoMovE_S, Cantidad, Fecha, FK_Producto, FK_Sucursal, FK_DetalleVenta, FK_DetalleCompra) VALUES (10, 'S', 20, TO_DATE('2025-07-09','YYYY-MM-DD'), 10, 4, 9, NULL);


--FUNCIONES JAIR
/*1-. crea una funcion que reciba el ID_PRODUCTO y devuelva el precio final con impuesto. 
 * El valor debe calcularse usando el porcentaje del impuesto asociado.*/
--funcion 1
--procedimiento funcion 1
CREATE OR REPLACE FUNCTION PROYECTOFINAL.calcular_precio_con_impuesto ( p_id_producto IN NUMBER) RETURN NUMBER
IS
  v_precio       NUMBER;
  v_id_impuesto  NUMBER;
  v_Porcentaje varchar2(50);
  v_precio_final NUMBER;
BEGIN
  -- Obtener el precio y el ID del impuesto del producto
  SELECT Precio, FK_Impuesto
    INTO v_precio, v_id_impuesto
    FROM PROYECTOFINAL.Producto
   WHERE PK_Producto = p_id_producto;

  -- Obtener el porcentaje del impuesto
  SELECT TO_NUMBER(Porcentaje)
    INTO v_porcentaje
    FROM PROYECTOFINAL.Impuesto
   WHERE PK_Impuesto = v_id_impuesto;

  -- Calcular el precio con impuesto
  v_precio_final := v_precio * (1 + (v_porcentaje / 100));

  RETURN v_precio_final;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('Producto o impuesto no encontrado.');
    RETURN NULL;
  WHEN OTHERS THEN
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    RETURN NULL;
END calcular_precio_con_impuesto;

--consulta de las tablas producto e impuesto
SELECT * FROM PROYECTOFINAL.PRODUCTO;
SELECT * FROM PROYECTOFINAL.IMPUESTO;
--consulta general del resultado
SELECT PK_Producto, Nombre, PROYECTOFINAL.calcular_precio_con_impuesto(PK_Producto) AS Precio_Final_Con_Impuesto
FROM PROYECTOFINAL.Producto;


--Funcion 2
/*2-.Diseña una funcion que, dado un ID_CLIENTE, regrese el numero de compras realizadas por ese cliente*/
CREATE OR REPLACE FUNCTION PROYECTOFINAL.contar_compras_cliente ( p_id_cliente IN NUMBER  ) RETURN NUMBER           
IS
  v_num_compras NUMBER;  
BEGIN
  -- Contar cuántas ventas tiene el cliente con el ID dado
  SELECT COUNT(*)
    INTO v_num_compras
    FROM PROYECTOFINAL.Venta
   WHERE FK_Cliente = p_id_cliente;

  -- Devolver el número de compras
  RETURN v_num_compras;

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    -- Si no encuentra ventas para ese cliente, devolver 0
    RETURN 0;
  WHEN OTHERS THEN
    -- Para cualquier otro error, devolver NULL y mostrar mensaje
    DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    RETURN NULL;
END contar_compras_cliente;

--consultas de tablas venta y cliente 
SELECT * FROM PROYECTOFINAL.VENTA;
SELECT * FROM PROYECTOFINAL.CLIENTE;
--consulta general del resultado
SELECT c.PK_Cliente, c.Nombre, PROYECTOFINAL.contar_compras_cliente(c.PK_Cliente) AS Numero_de_Compras
FROM PROYECTOFINAL.Cliente c;





--vistas materializadas ANGELES
/*1-Crea una vista materializada que muestre el stock actual de cada producto calculando: SUM(ENTRADAS) - SUM(SALIDAS) desde 
 * la tabla INVENTARIO_DE_MOVIMIENTOS.*/
/*ESTE ES PARA CREAR UNA VISTA MATERIALIZADA*/
CREATE MATERIALIZED VIEW PROYECTOFINAL.MV_StockGeneralProducto
BUILD IMMEDIATE -- Indica que la vista debe ser construida inmediatamente al momento de ejecutar esta sentencia.
REFRESH ON DEMAND --la vista no se actualiza automáticamente, sino manualmente mediante una instrucción 
AS
SELECT 
    p.PK_Producto,
    p.Nombre AS NombreProducto,
    p.Descripcion,
    p.StockActual AS StockInicial,
    /*Suma todas las entradas (movimientos con TipoMovE_S = 'E') del producto.
	Usa NVL(..., 0) para evitar NULL si no hay movimientos.*/
    NVL(SUM(CASE WHEN im.TipoMovE_S = 'E' THEN im.Cantidad ELSE 0 END), 0) AS TotalEntradas,
    /* Igual que arriba, pero para las salidas */
    NVL(SUM(CASE WHEN im.TipoMovE_S = 'S' THEN im.Cantidad ELSE 0 END), 0) AS TotalSalidas,
    p.StockActual 
    /*Calcula el stock total actualizado:*/
        + NVL(SUM(CASE WHEN im.TipoMovE_S = 'E' THEN im.Cantidad ELSE 0 END), 0)
        - NVL(SUM(CASE WHEN im.TipoMovE_S = 'S' THEN im.Cantidad ELSE 0 END), 0)
        AS StockGeneral
FROM 
    PROYECTOFINAL.Producto p
LEFT JOIN 
    PROYECTOFINAL.InventarioDeMovimientos im ON p.PK_Producto = im.FK_Producto
    /*Se hace un LEFT JOIN con InventarioDeMovimientos para que productos sin movimientos también aparezcan.*/
GROUP BY 
    p.PK_Producto, p.Nombre, p.Descripcion, p.StockActual; 
	/*Se agrupa por los campos del producto para poder usar SUM(...) correctamente.*/

/*Consultas*/
SELECT * FROM PROYECTOFINAL.MV_StockGeneralProducto; -- Muestra toda la información calculada para cada producto.
SELECT PK_Producto, STOCKGENERAL FROM PROYECTOFINAL.MV_StockGeneralProducto; --Devuelve solo el ID del producto y su stock general calculado.
SELECT * FROM PROYECTOFINAL.InventarioDeMovimientos ;-- Muestra los movimientos registrados (entradas y salidas) para todos los productos.
SELECT * FROM PROYECTOFINAL.Producto;-- Muestra la información base de cada producto, 
--incluyendo StockActual, que representa el stock antes de aplicar movimientos.



/*2-Diseña una vista materializada que resuma las ventas totales por empleado,
 *mostrando el nombre completo del empleado, el total de ventas y el número de tickets.*/
/*creacion de vista materializada*/
CREATE MATERIALIZED VIEW PROYECTOFINAL.MV_VentasPorEmpleado
BUILD IMMEDIATE --Indica que la vista debe construirse de inmediato al ejecutar esta instrucción
REFRESH ON DEMAND--Establece que la vista se actualizará manualmente (no automáticamente)
AS
SELECT
    e.PK_Empleado, --Selecciona la clave primaria del empleado
    e.Nombre || ' ' || e.Apellido_Paterno || ' ' || e.Apellido_Materno AS NombreCompleto,--Concatena el nombre y los apellidos 
    --del empleado para formar su nombre completo
    COUNT(v.PK_Venta) AS NumeroTickets,--Cuenta cuántas ventas ha realizado el empleado (número de tickets generados)
    NVL(SUM(v.Total), 0) AS TotalVentas--Suma el total de dinero vendido por el empleado (si no hay ventas, devuelve 0)
FROM 
    PROYECTOFINAL.Empleado e --Indica que los datos provienen de la tabla Empleado, con alias "e"
LEFT JOIN
    PROYECTOFINAL.Venta v ON e.PK_Empleado = v.FK_Empleado--Se hace una unión externa (LEFT JOIN) con la tabla Venta
-- Para incluir también a los empleados que aún no han realizado ventas
GROUP BY
    e.PK_Empleado, e.Nombre, e.Apellido_Paterno, e.Apellido_Materno;--Agrupa los resultados por cada 
    --empleado (necesario para COUNT y SUM)

/*Consulta*/
SELECT * FROM PROYECTOFINAL.MV_VentasPorEmpleado;--Muestra todos los registros almacenados 
--en la vista materializada de ventas por empleado





--MARIOOO
-- Este disparador se activa después de insertar una nueva compra en la tabla (DETALLECOMPRA)
CREATE OR REPLACE TRIGGER trg_insertar_movimiento_compra
AFTER INSERT ON PROYECTOFINAL.DetalleCompra
FOR EACH ROW
DECLARE
  v_id_sucursal INTEGER;
BEGIN -- Obtener la sucursal desde la tabla Compra usando el FK_Compra del nuevo detalle insertado
  SELECT FK_Sucursal INTO v_id_sucursal
  FROM PROYECTOFINAL.Compra
  WHERE PK_Compra = :NEW.FK_Compra;

  INSERT INTO PROYECTOFINAL.InventarioDeMovimientos (
    PK_InventarioMovimiento,
    TipoMovE_S,
    Cantidad,
    Fecha,
    FK_Producto,
    FK_Sucursal,
    FK_DetalleCompra
  )
  VALUES (seq_InventarioMovimiento.NEXTVAL,'E', :NEW.Cantidad, SYSDATE, :NEW.FK_Producto, v_id_sucursal, :NEW.PK_DetalleCompra);
END;


--SECUENCIA DE EL PRIMER DISPARADOR--
CREATE SEQUENCE seq_InventarioMovimiento
START WITH 11
INCREMENT BY 1
NOCACHE;

--INSERTS DE EJEMPLO--
--insert en la tabla compra--
INSERT INTO PROYECTOFINAL.Compra (PK_Compra, Fecha, Total, FK_Empleado, FK_Proveedor, FK_Sucursal)
 VALUES (11, SYSDATE, 200.00, 1, 1, 1);

-- insert en la tabla DetalleCompra--
INSERT INTO PROYECTOFINAL.DetalleCompra (PK_DetalleCompra, Cantidad, PrecioUnitario, FK_Compra, FK_Producto)
VALUES (22, 10, 20.00, 11, 1);

SELECT * FROM PROYECTOFINAL.INVENTARIODEMOVIMIENTOS;

--DELETE FROM INVENTARIODEMOVIMIENTOS WHERE PK_INVENTARIOMOVIMIENTO = 11;--



-- segundo disparador Validar Promoción--
-- Este disparador impide insertar promociones con más del 50% de descuento--
-- o con una fecha de fin anterior a la de inicio.--
CREATE OR REPLACE TRIGGER trg_validar_promocion
BEFORE INSERT ON PROYECTOFINAL.Promocion
FOR EACH ROW
BEGIN
  -- Validar que el porcentaje de descuento no sea mayor al 50
  IF :NEW.PorcentajeDescuento > 50 THEN
    RAISE_APPLICATION_ERROR(-20001, 'El porcentaje de descuento no puede ser mayor al 50%.');
  END IF;

  -- Validar que la fecha de fin no sea menor que la fecha de inicio
  IF :NEW.HoraFin < :NEW.HoraInicio THEN
    RAISE_APPLICATION_ERROR(-20002, 'La fecha de fin no puede ser menor que la fecha de inicio.');
  END IF;
END;



--SECUENCIA DE EL SEGUNDO DISPARADOR--
CREATE SEQUENCE SEQ_PROMOCION
START WITH 11
INCREMENT BY 1
NOCACHE;

SELECT * FROM PROYECTOFINAL.promocion;

--Ejemplo de insert--
--Insert en la tabla Promocion--
INSERT INTO PROYECTOFINAL.Promocion(PK_Promocion,Nombre,Descripcion,HoraInicio,HoraFin,PorcentajeDescuento,FK_Producto)
VALUES (SEQ_PROMOCION.NEXTVAL,'Promo de Verano','Descuento especial por temporada',TO_DATE('2025-07-21', 'YYYY-MM-DD'),TO_DATE('2025-07-30', 'YYYY-MM-DD'),25,1);

--DELETE FROM promocion WHERE PK_promocion = 12;--



--Vista Numero 2--
--Vista con LEFT JOIN y LIKE:--

CREATE OR REPLACE VIEW PROYECTOFINAL.V_clientes_ciudad AS SELECT * FROM cliente c LEFT JOIN direccioncliente d ON c.PK_Cliente = d.FK_Cliente WHERE ciudad LIKE 'X%';


SELECT * FROM PROYECTOFINAL.V_clientes_ciudad;







/*PROCEDIMIENTOS PEDROO H*/
/*1. Crea un procedimiento que registre una nueva venta y actualice automáticamente el
total si el número de productos supera 3, aplicando un descuento del 10%.*/

CREATE OR REPLACE PROCEDURE PROYECTOFINAL.registrar_venta_con_descuento (
  p_fecha        IN DATE,
  p_fk_cliente   IN NUMBER,
  p_fk_empleado  IN NUMBER,
  p_fk_metodopago IN NUMBER,
  p_fk_caja      IN NUMBER,
  -- Aquí recibimos los productos y cantidades en un tipo TABLE o como parámetros separados, para el ejemplo lo simplifico
  p_productos    IN SYS.ODCINUMBERLIST,  -- lista de IDs de productos
  p_cantidades   IN SYS.ODCINUMBERLIST   -- lista de cantidades por producto
)
IS
  v_pk_venta        NUMBER;
  v_total           NUMBER := 0;
  v_cantidad_total  NUMBER := 0;
  v_descuento       NUMBER := 0;
  v_precio_unitario NUMBER;
BEGIN
  -- Generar nuevo ID para Venta
  SELECT NVL(MAX(PK_Venta), 0) + 1 INTO v_pk_venta FROM PROYECTOFINAL.Venta;

  -- Insertar registro en Venta con total 0 (se actualizará luego)
  INSERT INTO PROYECTOFINAL.Venta (PK_Venta, Fecha, Total, FK_Cliente, FK_Empleado, FK_MetodoPago, FK_Caja)
  VALUES (v_pk_venta, p_fecha, 0, p_fk_cliente, p_fk_empleado, p_fk_metodopago, p_fk_caja);

  -- Recorrer los productos para insertar detalles y calcular total y cantidad
  FOR i IN 1 .. p_productos.COUNT LOOP
    -- Obtener precio unitario del producto
    SELECT Precio -- si tu tabla Producto tiene campo Precio, si no deberías modificar esto
      INTO v_precio_unitario
      FROM PROYECTOFINAL.Producto
     WHERE PK_Producto = p_productos(i);

    -- Insertar detalle de venta
    INSERT INTO PROYECTOFINAL.DetalleVenta (PK_DetalleVenta, Cantidad, PrecioUnitario, Descuento, FK_Venta, FK_Producto)
    VALUES (
      (SELECT NVL(MAX(PK_DetalleVenta), 0) + 1 FROM PROYECTOFINAL.DetalleVenta),
      p_cantidades(i),
      v_precio_unitario,
      '0', -- inicialmente sin descuento
      v_pk_venta,
      p_productos(i)
    );

    -- Acumular total y cantidad
    v_total := v_total + (v_precio_unitario * p_cantidades(i));
    v_cantidad_total := v_cantidad_total + p_cantidades(i);
  END LOOP;

  -- Verificar si hay más de 3 productos para aplicar descuento del 10%
  IF v_cantidad_total > 3 THEN
    v_descuento := v_total * 0.10; -- 10%
    v_total := v_total - v_descuento;

    -- Actualizar detalle de venta para reflejar descuento (opcional, para simplificar lo dejamos en 0)
    -- Podrías actualizar cada detalle si quieres reflejar el descuento en cada producto
  END IF;

  -- Actualizar total en tabla Venta
  UPDATE PROYECTOFINAL.Venta
     SET Total = v_total
   WHERE PK_Venta = v_pk_venta;

  COMMIT;

  DBMS_OUTPUT.PUT_LINE('Venta registrada con ID: ' || v_pk_venta || ', Total: ' || v_total);

EXCEPTION
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Error al registrar venta: ' || SQLERRM);
END registrar_venta_con_descuento;

--Consulta para llamar al procedimiento
BEGIN
  PROYECTOFINAL.registrar_venta_con_descuento(
    p_fecha         => SYSDATE,
    p_fk_cliente    => 1,       -- ID del cliente
    p_fk_empleado   => 1,       -- ID del empleado
    p_fk_metodopago => 1,       -- ID del método de pago
    p_fk_caja       => 1,       -- ID de la caja
    p_productos     => SYS.ODCINUMBERLIST(1, 2, 3, 4),     -- IDs de productos vendidos
    p_cantidades    => SYS.ODCINUMBERLIST(1, 1, 1, 2)      -- Cantidades correspondientes
  );
END;

-- Ver la última venta registrada
SELECT * FROM PROYECTOFINAL.Venta ORDER BY PK_Venta DESC;
-- Ver los detalles de esa venta
SELECT * FROM PROYECTOFINAL.DetalleVenta WHERE FK_Venta = (SELECT MAX(PK_Venta) FROM PROYECTOFINAL.Venta);



/*2. Diseña un procedimiento que reciba un ID_PROVEEDOR y elimine todos los registros
de compras asociadas a ese proveedor (controla restricciones).*/
CREATE OR REPLACE PROCEDURE PROYECTOFINAL.eliminar_compras_por_proveedor (p_id_proveedor IN NUMBER)
IS
BEGIN
  -- Primero eliminar los detalles de compra que pertenecen a las compras del proveedor
  DELETE FROM PROYECTOFINAL.DetalleCompra
   WHERE FK_Compra IN (
     SELECT PK_Compra FROM PROYECTOFINAL.Compra WHERE FK_Proveedor = p_id_proveedor
   );

  -- Luego eliminar las compras del proveedor
  DELETE FROM PROYECTOFINAL.Compra
   WHERE FK_Proveedor = p_id_proveedor;

  COMMIT;

  DBMS_OUTPUT.PUT_LINE('Compras y detalles eliminados correctamente para proveedor ID: ' || p_id_proveedor);

EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No se encontraron compras para el proveedor ID: ' || p_id_proveedor);
  WHEN OTHERS THEN
    ROLLBACK;
    DBMS_OUTPUT.PUT_LINE('Error al eliminar compras: ' || SQLERRM);
END eliminar_compras_por_proveedor;


--consultas
SELECT * FROM PROYECTOFINAL.Compra WHERE FK_Proveedor = 10;
--Ejecutar el procedimiento para eliminar compras del proveedor 5
BEGIN
  PROYECTOFINAL.eliminar_compras_por_proveedor(5);
END;
-- Consultar si aún existen compras para el proveedor 5
SELECT * 
FROM PROYECTOFINAL.Compra
WHERE FK_Proveedor = 5;
--Consultar si aún existen detalles de compra asociados a proveedor 5
SELECT dc.* 
FROM PROYECTOFINAL.DetalleCompra dc
JOIN PROYECTOFINAL.Compra c ON dc.FK_Compra = c.PK_Compra
WHERE c.FK_Proveedor = 5;
-- (Opcional) Verificar que el proveedor 5 sigue existiendo (no se elimina proveedor)
SELECT * FROM PROYECTOFINAL.Proveedor WHERE PK_Proveedor = 5;




--Vista 1--
/*Crea una vista que muestre productos vendidos más de 5 veces, cuyo precio
unitario después del impuesto sea mayor a $200. Usa JOIN, *, +, y operadores
AND.*/
CREATE OR REPLACE VIEW PROYECTOFINAL.Vw_Productos_Vendidos_Premium AS
SELECT 
  p.PK_Producto,
  p.Nombre,
  SUM(vd.Cantidad) AS Total_Vendido,
  PROYECTOFINAL.calcular_precio_con_impuesto(p.PK_Producto) AS Precio_Con_Impuesto
FROM 
  PROYECTOFINAL.Producto p,
  PROYECTOFINAL.DetalleVenta vd,
  PROYECTOFINAL.Venta v
WHERE
  vd.FK_Producto = p.PK_Producto
  AND vd.FK_Venta = v.PK_Venta(+)
GROUP BY
  p.PK_Producto,
  p.Nombre
HAVING
  SUM(vd.Cantidad) > 5
  AND PROYECTOFINAL.calcular_precio_con_impuesto(p.PK_Producto) > 200;

SELECT *FROM PROYECTOFINAL.Vw_Productos_Vendidos_Premium;



