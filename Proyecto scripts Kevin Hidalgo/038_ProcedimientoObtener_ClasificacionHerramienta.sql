-- Obtener 38--
CREATE PROCEDURE GetClasificacionHerramienta(
@ID_Clave			INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Clave, '') != '' 
SELECT * FROM Clasificacion_Herramienta WHERE ID_Clave = @ID_Clave
ELSE
SELECT * FROM Clasificacion_Herramienta
GO
EXEC GetClasificacionHerramienta @ID_Clave = 1
GO