-- Actualiza e Insertar 33 --
CREATE PROCEDURE Proveedor_IA(
@ID_Proveedor		INT,
@Clave_P			VARCHAR(4),
@Ubicacion			VARCHAR(100),
@Nombre_P			VARCHAR(30),
@CodigoP			INT,
@Telefono			VARCHAR(10),
@Correo				VARCHAR(100)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM Proveedor WHERE ID_Proveedor = @ID_Proveedor)
BEGIN
	UPDATE Proveedor
	SET
		Clave_P = @Clave_P,		
		Ubicacion = @Ubicacion,
		Nombre_P = @Nombre_P,
		CodigoP = @CodigoP,
		Telefono = @Telefono,
		Correo = @Correo
	WHERE 
		ID_Proveedor = @ID_Proveedor
END
	ELSE
BEGIN 
	INSERT INTO Proveedor(Clave_P,Ubicacion,Nombre_P,CodigoP,Telefono,Correo)
	VALUES (@Clave_P,@Ubicacion,@Nombre_P,@CodigoP,@Telefono,@Correo)
END

EXEC Proveedor_IA @ID_Proveedor = '1', @Clave_P = 'PPP1',@Nombre_P = 'Ramirez',@Ubicacion = '12 X 534', @CodigoP = '97555',
@Telefono = '9995647885',@Correo = 'saasadl@kdsl.com'
GO