--Obtener 25--
CREATE PROCEDURE GetServicioInfo(
@ID_ServicioDesc	INT
)AS
SET NOCOUNT ON

IF ISNULL (@ID_ServicioDesc,'') != ''
	SELECT * FROM ServicioDescripcionInfo WHERE ID_ServicioDesc = @ID_ServicioDesc
ELSE
	SELECT * FROM ServicioDescripcionInfo
GO

EXEC GetServicioInfo @ID_ServicioDesc = 1
GO