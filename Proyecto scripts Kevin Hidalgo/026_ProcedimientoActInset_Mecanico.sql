-- Actualiza e Insertar 26 --
CREATE PROCEDURE Mecanico_IA(
@ID_Mecanico	INT,
@Codigo_M		VARCHAR(4),
@Nombre			VARCHAR(30),
@Apellido		VARCHAR(30),
@Edad			INT,
@Sexo			CHAR(1),
@Telefono		VARCHAR(10),
@AreaMecanico	VARCHAR(40),
@Sueldo			DECIMAL(12,2)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM Mecanico WHERE ID_Mecanico = @ID_Mecanico)
BEGIN
	UPDATE Mecanico
	SET	
		Codigo_M = @Codigo_M,
		Nombre = @Nombre,			
		Apellido = @Apellido,		
		Edad = @Edad,			
		Sexo = @Sexo,			
		Telefono =  @Telefono,		
		AreaMecanico  = @AreaMecanico,
		Sueldo = @Sueldo
	WHERE 
		ID_Mecanico = @ID_Mecanico
END
	ELSE
BEGIN 
	INSERT INTO Mecanico(Codigo_M,Nombre,Apellido,Edad,Sexo,Telefono,AreaMecanico,Sueldo)
	VALUES (@Codigo_M,@Nombre,@Apellido,@Edad,@Sexo,@Telefono,@AreaMecanico,@Sueldo)
END

EXEC Mecanico_IA 
@ID_Mecanico = '1',@Codigo_M = 'AAA1',@Nombre = 'Pedro',
@Apellido = 'Salazar',@Edad = '30',@Sexo = 'M',@Telefono = '9994578455',@AreaMecanico = 'SISTEMA_LUBRICACION',@Sueldo = '3500'
GO