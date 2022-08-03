--10--
CREATE TABLE Clasificacion_Herramienta(
ID_Clave		INT IDENTITY(1,1),
Clave_CH		VARCHAR(100),
Descripcion		VARCHAR(150),
Stock			CHAR(1),
Material		VARCHAR(40),
Marca			VARCHAR(30),
Proveedor		VARCHAR(4),
CONSTRAINT PK_Clasificacion_Herramienta PRIMARY KEY (Clave_CH),
CONSTRAINT FK_Clasificacion_Herramienta_Marca FOREIGN KEY (Marca) REFERENCES Marca_Info(Clave_Marca),
CONSTRAINT FK_Clasificacion_Herramienta_Proveedor FOREIGN KEY (Proveedor) REFERENCES Proveedor(Clave_P)
)
