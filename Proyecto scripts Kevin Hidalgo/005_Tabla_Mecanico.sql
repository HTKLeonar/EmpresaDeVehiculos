--5--
CREATE TABLE Mecanico(
ID_Mecanico		INT IDENTITY(1,1),
Codigo_M		VARCHAR(4),
Nombre			VARCHAR(30),
Apellido		VARCHAR(30),
Edad			INT,
Sexo			CHAR(1),
Telefono		VARCHAR(10),
AreaMecanico	VARCHAR(40),
Sueldo			DECIMAL(12,2)
CONSTRAINT PK_Mecanico PRIMARY KEY(Codigo_M),
CONSTRAINT FK_Mecanico_AreaMecanico	FOREIGN KEY (AreaMecanico) REFERENCES AreaMecanico_Info(Clave_Area)
)
