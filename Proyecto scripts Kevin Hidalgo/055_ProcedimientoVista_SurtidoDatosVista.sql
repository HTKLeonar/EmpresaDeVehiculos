--Vista 55--
--Justificacion: Esta vista se creo con el fin de mostrar los datos importantes de las tablas de Maestro/Detalle del surtido que en esste caso
--el gerente es el que pide al proveedor, esto muestra los materiales que se piden como lo son su clave, el precio asi como la cantidad a pedir
CREATE VIEW SurtidoDatosVista
AS
	SELECT SE.NoSurtido AS 'No de surtido', SE.Clave_Gerente AS 'Pedido por:', SE.Clave_Proveedor AS 'Clave del proveedor',
	SE.FechaSurtido AS 'Fecha del surtido',SD.Herramienta AS 'Clave de la herramienta',SD.Descripcion AS 'Descripción',
	SD.Marca AS 'Marca del pedido',SD.Precio,SD.TotalPedir AS 'Total a pedir del pedido',
	H.Clasificacion AS 'Clasificación a la que pertenece',H.FechaAdquisicion AS 'Fecha de adquisición'
FROM SurtirEncabezado SE 
INNER JOIN SurtirDetalle SD ON SE.NoSurtido = SD.ID_Surtido
INNER JOIN Herramienta H ON H.Clave_H = SD.Herramienta
GO

SELECT * FROM SurtidoDatosVista