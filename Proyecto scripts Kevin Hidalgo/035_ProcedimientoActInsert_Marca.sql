-- Actualiza e Insertar 35 --
CREATE PROCEDURE Marca_IA(
@ID_Marca			INT,
@Clave_Marca		VARCHAR(30),
@LugarFundacion		VARCHAR(30),
@AñoFundacion		INT,
@SitioWeb			VARCHAR(150)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM Marca_Info WHERE Clave_Marca = @Clave_Marca)
BEGIN
	UPDATE Marca_Info
	SET	
		Clave_Marca = @Clave_Marca,		
		LugarFundacion = @LugarFundacion,
		AñoFundacion = @AñoFundacion,
		SitioWeb = @SitioWeb
	WHERE 
		Clave_Marca = @Clave_Marca
END
	ELSE
BEGIN 
	INSERT INTO Marca_Info(Clave_Marca,LugarFundacion,AñoFundacion,SitioWeb)
	VALUES (@Clave_Marca,@LugarFundacion,@AñoFundacion,@SitioWeb)
END

EXEC Marca_IA 
@ID_Marca = '1',@Clave_Marca = 'PRETUL',@LugarFundacion = 'Mexico',@AñoFundacion = '1993', @SitioWeb = 'https:distribuidordeherramientas.com'
GO