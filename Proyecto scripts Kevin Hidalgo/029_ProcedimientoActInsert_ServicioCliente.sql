-- Actualizar e Insertar 29--
CREATE PROCEDURE ServicioCliente_IA(
@ID_Servicio			INT,
@ClaveServicio			VARCHAR(4),
@Cliente				VARCHAR(4),
@PlacaVehiculo			VARCHAR(7),
@Mecanico				VARCHAR(4),
@IngresoVehiculo		DATE
)AS
SET NOCOUNT ON

IF EXISTS (SELECT * FROM ServicioACliente WHERE ID_Servicio = @ID_Servicio)
BEGIN
	UPDATE ServicioACliente
	SET 
		ClaveServicio = @ClaveServicio,
		Cliente = @Cliente,
		PlacaVehiculo = @PlacaVehiculo,
		Mecanico = @Mecanico,
		IngresoVehiculo = @IngresoVehiculo
	WHERE
		ID_Servicio = @ID_Servicio
END
	ELSE
BEGIN
	INSERT INTO ServicioACliente (ClaveServicio,Cliente,PlacaVehiculo,Mecanico,IngresoVehiculo)
	VALUES (@ClaveServicio,@Cliente,@PlacaVehiculo,@Mecanico,@IngresoVehiculo)
END

EXEC ServicioCliente_IA @ID_Servicio = '1',@ClaveServicio = 'SSS1', @Cliente = 'CCC1', @PlacaVehiculo = 'KSJ2345',
@Mecanico = 'AAA1',@IngresoVehiculo = '2010-05-21'
GO