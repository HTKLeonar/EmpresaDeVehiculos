-- Actualiza e Insertar 37 --
CREATE PROCEDURE ClasificacionHerramienta_IA(
@ID_Clave			INT ,
@Clave_CH			VARCHAR(100),
@Descripcion		VARCHAR(150),
@Stock				CHAR(1),
@Material			VARCHAR(40),
@Marca				VARCHAR(30),
@Proveedor			VARCHAR(4)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM Clasificacion_Herramienta WHERE ID_Clave = @ID_Clave)
BEGIN
	UPDATE Clasificacion_Herramienta
	SET
		Clave_CH = @Clave_CH,		
		Descripcion = @Descripcion,
		Stock = @Stock,
		Material = @Material,
		Marca = @Marca,
		Proveedor = @Proveedor
	WHERE 
		ID_Clave = @ID_Clave
END
	ELSE
BEGIN 
	INSERT INTO Clasificacion_Herramienta(Clave_CH,Descripcion,Stock,Material,Marca,Proveedor)
	VALUES (@Clave_CH,@Descripcion,@Stock,@Material,@Marca,@Proveedor)
END

EXEC ClasificacionHerramienta_IA 
@ID_Clave = '1',@Clave_CH = 'DEMANO',@Descripcion = 'Martillo de neumatico/delmoledora',
@Stock = 'A', @Material = 'Acero',@Marca = 'PRETUL',@Proveedor = 'PPP1'
GO