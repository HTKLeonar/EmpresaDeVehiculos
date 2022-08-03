-- 7 --
CREATE TABLE Gerente(
ID_Gerente		INT IDENTITY(1,1),
Clave_G			VARCHAR(4),
Nombre			VARCHAR(30),
Apellido		VARCHAR(30),
Telefono		VARCHAR(10),
Direccion		VARCHAR(100),
Sueldo			DECIMAL(12,2),
CONSTRAINT PK_Gerente PRIMARY KEY(Clave_G)
)
