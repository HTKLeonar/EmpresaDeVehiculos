-- Actualiza e Insertar 47 --
CREATE PROCEDURE SurtirDetalle_IA(
@NoDetalle			INT,
@ID_Surtido			INT,
@Herramienta		VARCHAR(20),
@Descripcion		VARCHAR(150),
@Marca				VARCHAR(30),
@Precio				DECIMAL(10,2),
@TotalPedir		INT
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM SurtirDetalle WHERE NoDetalle = @NoDetalle)
BEGIN
	UPDATE SurtirDetalle
	SET
		ID_Surtido = @ID_Surtido,
		Herramienta = @Herramienta,		
		Descripcion = @Descripcion,
		Marca = @Marca,
		Precio = @Precio,
		TotalPedir = @TotalPedir
	WHERE 
		NoDetalle = @NoDetalle
END
	ELSE
BEGIN 
	INSERT INTO SurtirDetalle(ID_Surtido,Herramienta,Descripcion,Marca,Precio,TotalPedir)
	VALUES (@ID_Surtido,@Herramienta,@Descripcion,@Marca,@Precio,@TotalPedir)
END

EXEC SurtirDetalle_IA 
@NoDetalle = '1',@ID_Surtido = '1',@Herramienta = 'MARTI1',@Descripcion = 'Martillo',@Marca = 'PRETUL', @Precio = '200',@TotalPedir = '20'
GO
