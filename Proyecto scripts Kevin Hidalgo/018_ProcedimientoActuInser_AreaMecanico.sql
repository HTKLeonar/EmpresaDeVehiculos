-- Actualiza e Insertar 18--
CREATE PROCEDURE AreaMecanico_IA(
@ID_Area			INT,
@Clave_Area			VARCHAR(40),
@DescripcionTarea	VARCHAR(150)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM AreaMecanico_Info WHERE ID_Area = @ID_Area)
BEGIN
	UPDATE AreaMecanico_Info
	SET	
		Clave_Area = @Clave_Area,		
		DescripcionTarea = @DescripcionTarea		
	WHERE 
		ID_Area = @ID_Area
END
	ELSE
BEGIN 
	INSERT INTO AreaMecanico_Info(Clave_Area,DescripcionTarea)
	VALUES (@Clave_Area,@DescripcionTarea)
END

---Ejecucion---
EXEC AreaMecanico_IA 
@ID_Area = '1' ,@Clave_Area = 'SISTEMA_LUBRICACION',@DescripcionTarea = 'Remplazo Aceite'
GO
