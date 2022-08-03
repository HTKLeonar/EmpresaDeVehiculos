--Actualizar e Insertar 49--
CREATE PROCEDURE FacturaEncabezado_IA(
@NoFactura		INT,
@ClienteF		VARCHAR(4),
@Fecha			DATE,
@Hora			TIME
)AS
SET NOCOUNT ON
IF EXISTS (SELECT * FROM FacturaEncabezado WHERE NoFactura = @NoFactura)
BEGIN
	UPDATE	FacturaEncabezado
		SET
			ClienteF = @ClienteF,
			Fecha = @Fecha,
			Hora = @Hora
		WHERE
			NoFactura = @NoFactura
		END
	ELSE
BEGIN
	INSERT INTO FacturaEncabezado (ClienteF,Fecha,Hora)
	VALUES (@ClienteF,@Fecha,@Hora)
END

EXEC FacturaEncabezado_IA 
@NoFactura = '1', @ClienteF = 'CCC1', @Fecha = '2022-04-18', @Hora = '13:00:00'
GO