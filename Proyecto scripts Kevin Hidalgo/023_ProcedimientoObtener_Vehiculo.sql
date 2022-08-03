--Obtener 23--
CREATE PROCEDURE GetVehiculo(
@ID_Vehiculo	INT
)AS
SET NOCOUNT ON

IF ISNULL (@ID_Vehiculo,'') != ''
SELECT * FROM Vehiculo WHERE ID_Vehiculo = @ID_Vehiculo
ELSE
SELECT * FROM Vehiculo
GO

EXEC GetVehiculo @ID_Vehiculo = 1
GO