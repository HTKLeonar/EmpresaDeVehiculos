--Obtener 50--
CREATE PROCEDURE GetFacturaEncabezado(
@NoFactura	INT
)AS
SET NOCOUNT ON
IF ISNULL (@NoFactura,'') != ''
	SELECT * FROM FacturaEncabezado WHERE NoFactura = @NoFactura
ELSE
	SELECT * FROM FacturaEncabezado
GO

EXEC GetFacturaEncabezado @NoFactura = 1
GO
