-- Actualiza e Insertar 31 --
CREATE PROCEDURE Gerente_IA(
@ID_Gerente		INT,
@Clave_G		VARCHAR(4),
@Nombre			VARCHAR(30),
@Apellido		VARCHAR(30),
@Telefono		VARCHAR(10),
@Direccion		VARCHAR(100),
@Sueldo			DECIMAL(12,2)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM Gerente WHERE ID_Gerente = @ID_Gerente)
BEGIN
	UPDATE Gerente
	SET	
		Clave_G = @Clave_G,		
		Nombre = @Nombre,
		Apellido = @Apellido,
		Telefono = @Telefono,
		Direccion = @Direccion,
		Sueldo = @Sueldo
	WHERE 
		ID_Gerente = @ID_Gerente
END
	ELSE
BEGIN 
	INSERT INTO Gerente(Clave_G,Nombre,Apellido,Telefono,Direccion,Sueldo)
	VALUES (@Clave_G,@Nombre,@Apellido,@Telefono,@Direccion,@Sueldo)
END

EXEC Gerente_IA 
@ID_Gerente = '1' ,@Clave_G = 'GGG1',@Nombre = 'Alonzo',@Apellido = 'Prieto',@Telefono = '9965896454',@Direccion = '12 X 534',@Sueldo = '200.00'
GO