-- Obtener 45 --
CREATE PROCEDURE GetSolicitudMecanicoDetalle(
@ID_Detalle				INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Detalle, '') != '' 
SELECT * FROM SolicitudMecanicoDetalle WHERE ID_Detalle = @ID_Detalle
ELSE
SELECT * FROM SolicitudMecanicoDetalle
GO
EXEC GetSolicitudMecanicoDetalle @ID_Detalle = 1
GO