--Vista 54--
--Justificacion: Se creo esta vista con el fin de adjuntar y tener a la mano en este caso la tabla de maestro/detalle factura 
--para asi saber que cliente pidio dicho servicio, que fecha y servicio que se le hizo en este caso al vehiculo del cliente, asi como la informacion
--de lo que es el vehiculo como placas y a quien se lo dejaron a cargo (quien hace el servicio)
CREATE VIEW FacturaDatosVista
AS
	SELECT FE.NoFactura, FE.ClienteF AS 'Clave del cliente', FE.Fecha AS 'Fecha de registro',
	FD.Servicio AS 'Clave del Servicio', FD.PrecioServicio,FD.Descripcion AS 'Descripción del Servicio',
	C.Identificacion AS 'Identificacion del cliente:', C.Direccion AS 'Dirección',(C.TelefonoFijo + '' + C.Celular) AS 'Telefonos del Cliente',
	SC.PlacaVehiculo, SC.IngresoVehiculo AS 'Fecha de ingreso del vehiculo',SC.Mecanico AS 'A cargo de:'
FROM FacturaEncabezado FE
INNER JOIN FacturaDetalle FD ON FE.NoFactura = FD.ID_Factura
INNER JOIN Cliente C ON C.Clave_Cliente = FE.ClienteF
INNER JOIN ServicioACliente SC ON SC.ClaveServicio = FD.Servicio
GO

SELECT * FROM FacturaDatosVista