-- Actualiza e Insertar 45 --
CREATE PROCEDURE SurtirEncabezado_IA(
@NoSurtido				INT,
@Clave_Gerente			VARCHAR(4),
@FechaSurtido			DATE,
@Clave_Proveedor		VARCHAR(4)
)AS
SET NOCOUNT ON

IF EXISTS (SELECT *  FROM SurtirEncabezado WHERE NoSurtido = @NoSurtido)
BEGIN
	UPDATE SurtirEncabezado
	SET	
		Clave_Gerente = @Clave_Gerente,		
		FechaSurtido = @FechaSurtido,
		Clave_Proveedor = @Clave_Proveedor
	WHERE 
		NoSurtido = @NoSurtido
END
	ELSE
BEGIN 
	INSERT INTO SurtirEncabezado(Clave_Gerente,FechaSurtido,Clave_Proveedor)
	VALUES (@Clave_Gerente,@FechaSurtido,@Clave_Proveedor)
END

EXEC SurtirEncabezado_IA 
@NoSurtido = '1',@Clave_Gerente = 'GGG1',@FechaSurtido = '2022-03-31',@Clave_Proveedor = 'PPP1'
GO
