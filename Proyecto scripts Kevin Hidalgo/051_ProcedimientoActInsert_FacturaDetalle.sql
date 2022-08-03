--Actualizar e Insertar 51--
CREATE PROCEDURE FacturaDetalle_IA(
@NoDetalle		INT,
@ID_Factura		INT,
@Servicio		VARCHAR(4),
@Descripcion	VARCHAR(200),
@PrecioServicio	DECIMAL(10,2)
)AS
SET NOCOUNT ON
IF EXISTS (SELECT * FROM FacturaDetalle WHERE NoDetalle = @NoDetalle)
BEGIN
	UPDATE FacturaDetalle
		SET
			ID_Factura = @ID_Factura,
			Servicio = @Servicio,
			Descripcion = @Descripcion,
			PrecioServicio = @PrecioServicio
		WHERE
			NoDetalle = @NoDetalle
		END
	ELSE
BEGIN
	INSERT INTO FacturaDetalle (ID_Factura,Servicio,Descripcion,PrecioServicio)
	VALUES (@ID_Factura,@Servicio,@Descripcion,@PrecioServicio)
END

EXEC FacturaDetalle_IA @NoDetalle = '1', @ID_Factura = '1', @Servicio = 'SSS1', @Descripcion = 'Cambio de aceite',@PrecioServicio = '200'
GO
