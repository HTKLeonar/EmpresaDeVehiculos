-- Actualiza e Insertar 44 --
CREATE PROCEDURE SolicitudMecanicoDetalle_IA(
@ID_Detalle				INT,
@ID_Solicitud			INT,
@Clave_Herramienta		VARCHAR(20),
@Descripcion			VARCHAR(150),
@Categoria				VARCHAR(100)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM SolicitudMecanicoDetalle WHERE ID_Detalle = @ID_Detalle)
BEGIN
	UPDATE SolicitudMecanicoDetalle
	SET
		ID_Solicitud = @ID_Solicitud,
		Clave_Herramienta = @Clave_Herramienta,		
		Descripcion = @Descripcion,
		Categoria = @Categoria
	WHERE 
		ID_Detalle = @ID_Detalle
END
	ELSE
BEGIN 
	INSERT INTO SolicitudMecanicoDetalle(ID_Solicitud,Clave_Herramienta,Descripcion,Categoria)
	VALUES (@ID_Solicitud,@Clave_Herramienta,@Descripcion,@Categoria)
END

EXEC SolicitudMecanicoDetalle_IA 
@ID_Detalle = '1',@ID_Solicitud = '1', @Clave_Herramienta = 'MARTI1',@Descripcion = 'Martillo',@Categoria = 'DEMANO'
GO