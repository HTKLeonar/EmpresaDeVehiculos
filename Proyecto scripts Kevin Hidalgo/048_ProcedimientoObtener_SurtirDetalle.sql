-- Obtener 48 --
CREATE PROCEDURE GetSurtirDetalle(
@NoDetalle			INT
)AS
SET NOCOUNT ON

IF ISNULL(@NoDetalle, '') != '' 
SELECT * FROM SurtirDetalle WHERE NoDetalle = @NoDetalle
ELSE
SELECT * FROM SurtirDetalle
GO
EXEC GetSurtirDetalle @NoDetalle = 1
GO