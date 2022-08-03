-- Actualiza e Inserta 20--
CREATE PROCEDURE Cliente_IA(
@ID_Cliente		INT,
@Clave_Cliente	VARCHAR(4),
@Identificacion	VARCHAR(13),
@Direccion		VARCHAR(100),
@TelefonoFijo	VARCHAR(10),
@Celular		VARCHAR(10)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM Cliente WHERE ID_Cliente = @ID_Cliente)
BEGIN
	UPDATE Cliente
	SET	
		Clave_Cliente = @Clave_Cliente,
		Identificacion = @Identificacion,
		Direccion = @Direccion,
		TelefonoFijo = @TelefonoFijo,
		Celular = @Celular
	WHERE 
		ID_Cliente = @ID_Cliente
END
	ELSE
BEGIN 
	INSERT INTO Cliente(Clave_Cliente,Identificacion,Direccion,TelefonoFijo,Celular)
	VALUES (@Clave_Cliente,@Identificacion,@Direccion,@TelefonoFijo,@Celular)
END
--Ejecucion--
EXEC Cliente_IA 
@ID_Cliente = '1' ,@Clave_Cliente = 'CCC1',@Identificacion = 'KSH32K19SK1SK',@Direccion = 'KSJ X 22N',@TelefonoFijo = '045-2342',@Celular = '9991379724'
GO