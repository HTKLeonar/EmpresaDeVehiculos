--Actualiza e Inserta 24--
CREATE PROCEDURE ServicioInfo_IA(
@ID_ServicioDesc		INT,
@Clave_Servicio			VARCHAR(4),
@Descripcion			VARCHAR(200),
@TiempoAproxServicio	TIME
)AS
SET NOCOUNT ON

IF EXISTS (SELECT * FROM ServicioDescripcionInfo WHERE ID_ServicioDesc = @ID_ServicioDesc)
BEGIN
	UPDATE ServicioDescripcionInfo 
	SET
		Clave_Servicio = @Clave_Servicio,
		Descripcion = @Descripcion,
		TiempoAproxServicio = @TiempoAproxServicio
	WHERE
		ID_ServicioDesc = @ID_ServicioDesc
END
	ELSE
BEGIN
	INSERT INTO ServicioDescripcionInfo(Clave_Servicio,Descripcion,TiempoAproxServicio)
	VALUES (@Clave_Servicio,@Descripcion,@TiempoAproxServicio)
END

EXEC ServicioInfo_IA @ID_ServicioDesc = '1', @Clave_Servicio = 'SSS1',@Descripcion = 'Cambio de aceite', @TiempoAproxServicio = '00:25:00'
GO