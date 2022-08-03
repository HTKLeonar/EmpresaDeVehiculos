--Obtener 21--
CREATE PROCEDURE GetCliente(
@ID_Cliente		INT
)AS
SET NOCOUNT ON

IF ISNULL (@ID_Cliente, '') != ''
SELECT * FROM Cliente WHERE ID_Cliente = @ID_Cliente
ELSE
SELECT * FROM Cliente
GO
--Ejecucion--
EXEC GetCliente @ID_Cliente = 1
GO
