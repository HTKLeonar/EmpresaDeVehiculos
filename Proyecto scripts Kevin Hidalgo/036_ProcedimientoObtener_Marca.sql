-- Obtener 36 --
CREATE PROCEDURE GetMarca(
@ID_Marca		INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Marca,'') != '' 
SELECT * FROM Marca_Info WHERE ID_Marca = @ID_Marca
ELSE
SELECT * FROM Marca_Info
GO
EXEC GetMarca @ID_Marca = 1
GO