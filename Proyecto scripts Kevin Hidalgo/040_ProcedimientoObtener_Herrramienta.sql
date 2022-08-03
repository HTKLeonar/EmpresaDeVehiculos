-- Obtener 40 --
CREATE PROCEDURE GetHerramienta(
@ID_Herramienta			INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Herramienta, '') != '' 
SELECT * FROM Herramienta WHERE ID_Herramienta = @ID_Herramienta
ELSE
SELECT * FROM Herramienta
GO
EXEC GetHerramienta @ID_Herramienta = 1
GO
