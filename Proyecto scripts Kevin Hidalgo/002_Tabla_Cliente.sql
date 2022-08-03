--2--
CREATE TABLE Cliente(
ID_Cliente		INT IDENTITY(1,1),
Clave_Cliente	VARCHAR(4),
Identificacion	VARCHAR(13),
Direccion		VARCHAR(100),
TelefonoFijo	VARCHAR(10),
Celular			VARCHAR(10),
CONSTRAINT PK_Cliente PRIMARY KEY (Clave_Cliente)
)