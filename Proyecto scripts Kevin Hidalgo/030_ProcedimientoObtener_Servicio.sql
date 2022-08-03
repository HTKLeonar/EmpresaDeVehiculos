--Obtener 30--
CREATE PROCEDURE GetServicio(
@ID_Servicio		INT
)AS
SET NOCOUNT ON

IF ISNULL (@ID_Servicio,'') != ''
	SELECT * FROM ServicioACliente WHERE ID_Servicio = @ID_Servicio
ELSE
	SELECT * FROM ServicioACliente
GO

EXEC GetServicio @ID_Servicio = 1
GO