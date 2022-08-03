-- Obtener 27 --
CREATE PROCEDURE GetMecanico(
@ID_Mecanico INT 
)AS
SET NOCOUNT ON
IF ISNULL(@ID_Mecanico, '') != '' 
SELECT * FROM Mecanico WHERE ID_Mecanico = @ID_Mecanico
ELSE
SELECT * FROM Mecanico
GO
EXEC GetMecanico @ID_Mecanico = 1
GO