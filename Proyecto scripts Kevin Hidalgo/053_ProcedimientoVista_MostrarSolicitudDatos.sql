--Vista 53--
--Justificacion: Se creo esta vista para asi tener a disposicion los datos importantes de las respectivas tablas maestro/detalle de lo que es
-- en este caso la solicitud que hace el mecanico al gerente para que asi sea mas rápido consultar que datos se pidieron, asi como de igual forma que 
-- herramienta pide dicho mecanico con sus respectivos datos.
CREATE VIEW MostrarSolicitudDatos
AS
SELECT	SE.ID_Solicitud AS 'Numero de solicitud', SE.ClaveMecanico AS 'Solicitud hecha por:', SE.FechaPedido AS 'Fecha del pedido',
		SE.AutorizaPedido AS 'Autorizacion hecha por:',SD.Clave_Herramienta AS 'Clave del pedido',
		SD.Descripcion AS 'Descripcion del pedido',H.Precio AS 'Precio del pedio', H.Clasificacion AS 'Clasificacion a la que pertenece:',
		CH.Stock AS 'Estado del pedido', CH.Marca AS 'Marca del pedido', CH.Material AS 'Material del pedido'
FROM SolicitudMecanico_Encabezado SE
INNER JOIN SolicitudMecanicoDetalle SD ON SE.ID_Solicitud = SD.ID_Solicitud
INNER JOIN Herramienta H ON H.Clave_H = SD.Clave_Herramienta
INNER JOIN Clasificacion_Herramienta CH ON CH.Clave_CH = SD.Categoria
GO

SELECT * FROM MostrarSolicitudDatos