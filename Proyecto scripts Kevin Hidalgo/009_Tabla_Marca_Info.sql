--9--
CREATE TABLE Marca_Info(
ID_Marca		INT IDENTITY(1,1),
Clave_Marca		VARCHAR(30),
AñoFundacion	INT,
LugarFundacion	VARCHAR(30),
SitioWeb		VARCHAR(150),
CONSTRAINT PK_Marcha_Info PRIMARY KEY(Clave_Marca)
)