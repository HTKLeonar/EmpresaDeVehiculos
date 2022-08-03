-- Actualiza e Insertar 42 --
CREATE PROCEDURE SolicitudMecanicoEncabezado_IA(
@ID_Solicitud		INT,
@ClaveMecanico		VARCHAR(4),
@FechaPedido		DATE,
@AutorizaPedido		VARCHAR(4)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM SolicitudMecanico_Encabezado WHERE ID_Solicitud = @ID_Solicitud)
BEGIN
	UPDATE SolicitudMecanico_Encabezado
	SET
		ClaveMecanico = @ClaveMecanico,		
		FechaPedido = @FechaPedido,
		AutorizaPedido = @AutorizaPedido
	WHERE 
		ID_Solicitud = @ID_Solicitud
END
	ELSE
BEGIN 
	INSERT INTO SolicitudMecanico_Encabezado(ClaveMecanico,FechaPedido,AutorizaPedido)
	VALUES (@ClaveMecanico,@FechaPedido,@AutorizaPedido)
END

EXEC SolicitudMecanicoEncabezado_IA 
@ID_Solicitud = '1' ,@ClaveMecanico = 'AAA1',@FechaPedido = '2022-03-31',@AutorizaPedido = 'GGG1'
GO