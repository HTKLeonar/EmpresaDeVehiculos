--Actualiza e Inserta 22--
CREATE PROCEDURE Vehiculo_IA(
@ID_Vehiculo	INT,
@Clave_Placa	VARCHAR(7),
@Propietario	VARCHAR(4),
@Modelo			VARCHAR(50),
@Color			VARCHAR(50),
@Marca			VARCHAR(25),
@Año			INT
)AS
SET NOCOUNT ON

IF EXISTS (SELECT * FROM Vehiculo WHERE ID_Vehiculo = @ID_Vehiculo)
BEGIN
	UPDATE Vehiculo
	SET
		Clave_Placa = @Clave_Placa,
		Propietario = @Propietario,
		Modelo = @Modelo,
		Color = @Color,
		Marca = @Marca,
		Año = @Año
	WHERE
		ID_Vehiculo = @ID_Vehiculo
END
	ELSE
BEGIN
	INSERT INTO Vehiculo(Clave_Placa,Propietario,Modelo,Color,Marca,Año)
	VALUES (@Clave_Placa,@Propietario,@Modelo,@Color,@Marca,@Año)
END

EXEC Vehiculo_IA
@ID_Vehiculo = '1', @Clave_Placa = 'KSJ2345',@Propietario = 'CCC1',@Modelo = 'Aveo', @Color = 'Azul',@Marca = 'Chevrolet',@Año = '2010'
