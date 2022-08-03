-- Obtener 43 --
CREATE PROCEDURE GetSolicitudMecanicoEncabezado(
@ID_Solicitud		INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Solicitud, '') != '' 
SELECT * FROM SolicitudMecanico_Encabezado WHERE ID_Solicitud = @ID_Solicitud
ELSE
SELECT * FROM SolicitudMecanico_Encabezado
GO
EXEC GetSolicitudMecanicoEncabezado @ID_Solicitud = 1
GO