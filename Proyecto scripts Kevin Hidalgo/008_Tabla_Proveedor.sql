--8--
CREATE TABLE Proveedor(
ID_Proveedor	INT IDENTITY(1,1),
Clave_P			VARCHAR(4),
Nombre_P		VARCHAR(30),
Ubicacion		VARCHAR(100),
CodigoP			INT,
Telefono		VARCHAR(10),
Correo			VARCHAR(100),
CONSTRAINT PK_Proveedor PRIMARY KEY(Clave_P)
)
