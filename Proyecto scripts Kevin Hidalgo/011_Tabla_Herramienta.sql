--11--
CREATE TABLE Herramienta(
ID_Herramienta		INT IDENTITY(1,1),
Clave_H				VARCHAR(20),
Descripcion			VARCHAR(150),
Precio				DECIMAL(10,2),
FechaAdquisicion	DATE,
Clasificacion		VARCHAR(100),
CONSTRAINT PK_Herramienta PRIMARY KEY (Clave_H),
CONSTRAINT FK_Herramienta_Clasificacion	FOREIGN KEY (Clasificacion)	REFERENCES Clasificacion_Herramienta(Clave_CH),
)