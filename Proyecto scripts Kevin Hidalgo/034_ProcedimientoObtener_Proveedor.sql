-- Obtener 34 --
CREATE PROCEDURE GetProveedor(
@ID_Proveedor		INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Proveedor, '') != '' 
SELECT * FROM Proveedor WHERE @ID_Proveedor = @ID_Proveedor
ELSE
SELECT * FROM Proveedor
GO
EXEC GetProveedor @ID_Proveedor = 1
GO