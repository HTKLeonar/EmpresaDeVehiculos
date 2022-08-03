-- Obtener 19--
CREATE PROCEDURE GetAreaMecanico(
@ID_Area			INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Area, '') != '' 
SELECT * FROM AreaMecanico_Info WHERE ID_Area = @ID_Area
ELSE
SELECT * FROM AreaMecanico_Info
GO
---Ejecucion---
EXEC GetAreaMecanico @ID_Area = 1
GO