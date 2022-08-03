--Obtener 52--
CREATE PROCEDURE GetFacturaDetalle(
@NoDetalle	INT
)AS
SET NOCOUNT ON
IF ISNULL (@NoDetalle, '') != ''
	SELECT * FROM FacturaDetalle WHERE NoDetalle = @NoDetalle
ELSE
	SELECT * FROM FacturaDetalle
GO

EXEC GetFacturaDetalle @NoDetalle = 1
GO
