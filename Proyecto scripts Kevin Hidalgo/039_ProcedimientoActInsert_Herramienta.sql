-- Actualiza e Insertar 39 --
CREATE PROCEDURE Herramienta_IA(
@ID_Herramienta			INT,
@Clave_H				VARCHAR(20),
@Descripcion			VARCHAR(150),
@Precio					DECIMAL(10,2),
@FechaAdquisicion		DATE,
@Clasificacion			VARCHAR(100)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM Herramienta WHERE ID_Herramienta = @ID_Herramienta)
BEGIN
	UPDATE Herramienta
	SET
		Clave_H = @Clave_H,		
		Descripcion = @Descripcion,
		Precio = @Precio,
		FechaAdquisicion = @FechaAdquisicion,
		Clasificacion = @Clasificacion
	WHERE 
		ID_Herramienta = @ID_Herramienta
END
	ELSE
BEGIN 
	INSERT INTO Herramienta(Clave_H,Descripcion,Precio,FechaAdquisicion,Clasificacion)
	VALUES (@Clave_H,@Descripcion,@Precio,@FechaAdquisicion,@Clasificacion)
END

EXEC Herramienta_IA 
@ID_Herramienta = '1' ,@Clave_H = 'MARTI1',@Descripcion = 'Martillo',
@Precio = '200', @FechaAdquisicion = '2022-03-31',@Clasificacion = 'DEMANO'
GO