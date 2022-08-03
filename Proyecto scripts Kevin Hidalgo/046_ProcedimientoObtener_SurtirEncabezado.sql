-- Obtener 46 --
CREATE PROCEDURE GetSurtirEncabezado(
@NoSurtido		INT
)AS
SET NOCOUNT ON

IF ISNULL(@NoSurtido, '') != '' 
SELECT * FROM SurtirEncabezado WHERE NoSurtido = @NoSurtido
ELSE
SELECT * FROM SurtirEncabezado
GO
EXEC GetSurtirEncabezado @NoSurtido = 1
GO