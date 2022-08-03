-- Obtener 32 --
CREATE PROCEDURE GetGerente(
@ID_Gerente			INT
)AS
SET NOCOUNT ON

IF ISNULL(@ID_Gerente, '') != '' 
SELECT * FROM Gerente WHERE ID_Gerente = @ID_Gerente
ELSE
SELECT * FROM Gerente
GO
EXEC GetGerente @ID_Gerente = 1
GO