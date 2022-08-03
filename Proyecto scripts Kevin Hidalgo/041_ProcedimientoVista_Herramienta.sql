--Vista 41--
CREATE VIEW HerramientasVista
AS
SELECT 
	H.Clave_H AS 'Herramienta',
	H.Precio,
	H.Clasificacion AS 'Categoria Herramienta',
	HC.Descripcion,
	HC.Material,
	HC.Marca
FROM Herramienta H
INNER JOIN Clasificacion_Herramienta HC ON H.Clasificacion = HC.Clave_CH

SELECT * FROM HerramientasVista